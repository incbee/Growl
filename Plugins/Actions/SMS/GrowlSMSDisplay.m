//
//  GrowlSMSDisplay.m
//  Growl Display Plugins
//
//  Created by Diggory Laycock
//  Copyright 2005–2011 The Growl Project All rights reserved.
//
#import <GrowlPlugins/GrowlNotification.h>
#import "GrowlSMSDisplay.h"
#import "GrowlSMSPrefs.h"
#import "NSStringAdditions.h"
#import "GrowlDefinesInternal.h"
#import <GrowlPlugins/GrowlKeychainUtilities.h>

@implementation GrowlSMSDisplay

- (id) init {
	if ((self = [super init])) {
		commandQueue = [[NSMutableArray alloc] init];
		xmlHoldingStringValue = [[NSMutableString alloc] init];
		waitingForResponse = NO;
		creditBalance = 0.0;
		self.prefDomain = GrowlSMSPrefDomain;
	}
	return self;
}

- (void) dealloc {
	[commandQueue release];

	[preferencePane release];
	[super dealloc];
}

- (GrowlPluginPreferencePane *) preferencePane {
	if (!preferencePane)
		preferencePane = [[GrowlSMSPrefs alloc] initWithBundle:[NSBundle bundleForClass:[self class]]];
	return preferencePane;
}

- (NSDictionary*)upgradeConfigDict:(NSDictionary*)stored toConfigID:(NSString*)configID {
	NSString *password = [GrowlKeychainUtilities passwordForServiceName:keychainServiceName accountName:keychainAccountName];
	[GrowlKeychainUtilities removePasswordForService:keychainServiceName accountName:keychainAccountName];
	[GrowlKeychainUtilities setPassword:password forService:keychainServiceName accountName:configID];
	return stored;
}

- (void)removeConfiguration:(NSDictionary *)config forID:(NSString *)configID {
	[GrowlKeychainUtilities removePasswordForService:keychainServiceName accountName:configID];	
}

- (void)dispatchNotification:(NSDictionary *)noteDict withConfiguration:(NSDictionary *)configuration {
	NSString	*accountNameValue = [configuration valueForKey:accountNameKey];
	NSString	*apiIDValue = [configuration valueForKey:accountAPIIDKey];
	NSString	*destinationNumberValue = [configuration valueForKey:destinationNumberKey];

	if (!([destinationNumberValue length] && [apiIDValue length] && [accountNameValue length])) {
		NSLog(@"SMS display: Cannot send SMS - not enough details in preferences.");
		return;
	}

	NSString *title = [noteDict objectForKey:GROWL_NOTIFICATION_TITLE];
	NSString *desc = [noteDict objectForKey:GROWL_NOTIFICATION_DESCRIPTION];

	//	Fetch the SMS password from the keychain
	NSString *password = [GrowlKeychainUtilities passwordForServiceName:keychainServiceName accountName:[configuration valueForKey:GROWL_PLUGIN_CONFIG_ID]];

	NSString *localHostName = [[NSHost currentHost] name];
	NSString *smsSendCommand = [[NSString alloc] initWithFormat:
		@"<clickAPI><sendMsg><api_id>%@</api_id><user>%@</user><password>%@</password><to>+%@</to><text>(%@) %@ (Growl from %@)</text><from>Growl</from></sendMsg></clickAPI>",
		apiIDValue,
		accountNameValue,
		password,
		destinationNumberValue,
		title,
		desc,
		localHostName];

//	NSLog(@"SMS Display...  %@" , smsSendCommand);
	[self sendXMLCommand:smsSendCommand];
	[smsSendCommand release];

	//	Check credit balance.
	NSString *checkBalanceCommand = [[NSString alloc] initWithFormat:
		@"<clickAPI><getBalance><api_id>%@</api_id><user>%@</user><password>%@</password></getBalance></clickAPI>",
		apiIDValue,
		accountNameValue,
		password];

	[self sendXMLCommand:checkBalanceCommand];
	[checkBalanceCommand release];
}


#pragma mark -
#pragma mark Accessors

- (NSData *) responseData {
	return responseData;
}

- (void) setResponseData:(NSData *)newResponseData {
	[newResponseData retain];
	[responseData release];
	responseData = newResponseData;

//	NSLog(@"SMS display: responseData:  %@", responseData);
}


#pragma mark -
#pragma mark Instance Methods


/*
 <clickAPI>
	 <sendMsg>
		 <api_id>your_api_id</api_id>
		 <user>your_user_name</user>
		 <password>your_pass</password>
		 <to>+12343455667</to>
		 <text>Test text message.</text>
		 <from>Growl</from>
	 </sendMsg>
 </clickAPI>


 API URL:
 ==========
 https://api.clickatell.com/xml/xml
 <input name="data" type="text" value="<clickAPI>$your_xml_data</clickAPI>">

 //	To do - use the unicode option - when needed - although, it halves the length of SMS we can send.

 */
- (void) sendXMLCommand:(NSString *)commandString {
	NSString			*dataString = [NSString stringWithFormat:@"data=%@", commandString];
	NSData              *postData = [dataString dataUsingEncoding:NSUTF8StringEncoding];
	NSURL               *clickatellURL = [NSURL URLWithString:@"https://api.clickatell.com/xml/xml"];
	NSMutableURLRequest	*post = [[NSMutableURLRequest alloc] initWithURL:clickatellURL];
	NSString            *contentLength = [NSString stringWithFormat:@"%lu", [postData length]];

//	NSLog(@"SMS display: Sending data: %@", postData);

	[post addValue:(NSString *)contentLength forHTTPHeaderField: @"Content-Length"];
	[post setHTTPMethod:@"POST"];
	[post setHTTPBody:(NSData *)postData];
	[commandQueue addObject:post];
	[post release];

	[self processQueue];
}


- (void) processQueue {
	// NSLog(@"SMS display: Processing HTTP Command Queue");
	if (![commandQueue count]) {
		// NSLog(@"SMS display: Queue is empty...");
		return;
	}

	if (!waitingForResponse) {
		waitingForResponse = YES;
//		NSLog(@"SMS display: Beginning Command Request Connection...");
		[NSURLConnection connectionWithRequest:[commandQueue objectAtIndex:0U] delegate: self];
	} else {
		NSLog(@"SMS display: Holding request in queue - we are still waiting for an existing command's resonse..");
	}
}


- (void) connectionDidRespond {
//	NSLog(@"SMS display: Request/Response transaction complete...");
	waitingForResponse = NO;
	[commandQueue removeObjectAtIndex:0U];
	[self processQueue];
}

- (void) handleResponse {
	if (responseParser)
		[responseParser release];
	responseParser = [[NSXMLParser alloc] initWithData:[self responseData]];
	[responseParser setDelegate:self];
	[responseParser setShouldResolveExternalEntities:YES];
	[responseParser parse]; // return value not used
							// if not successful, delegate is informed of error}
}


#pragma mark -
#pragma mark NSXMLParser Delegate methods:

- (void) parser:(NSXMLParser *)parser didStartElement:(NSString *)elementName namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qName attributes:(NSDictionary *)attributeDict {
	if ([elementName isEqualToString:@"clickAPI"]) {
//		NSLog(@"SMS display: Found the clickAPI element in the response.  That means we got the HTTP part right.");
	} else if ([elementName isEqualToString:@"xmlErrorResp"]) {
		NSLog(@"SMS display: Oh Noes! we got an error back from clickatell - we passed them a bad XML request...");
	} else if ([elementName isEqualToString:@"fault"]) {
		NSLog(@"SMS display: Here comes the fault:...");
	} else if ([elementName isEqualToString:@"getBalanceResp"]) {
//		NSLog(@"SMS display: Here comes the Balance response:...");
		inBalanceResponseElement = YES;
	} else if ([elementName isEqualToString:@"ok"]) {
//		NSLog(@"SMS display: Command Success.");
		if (inBalanceResponseElement) {
//			NSLog(@"SMS display: Here comes the Balance value:...");
		}
	} else if ([elementName isEqualToString:@"sendMsgResp"]) {
//		NSLog(@"SMS display: Here comes the Message Send response:...");
		inMessageSendResponseElement = YES;
	}
}


- (void) parser:(NSXMLParser *)parser foundCharacters:(NSString *)string {
	if (!xmlHoldingStringValue)
		xmlHoldingStringValue = [[NSMutableString alloc] initWithCapacity:50];
	[xmlHoldingStringValue appendString:string];
}


- (void) parser:(NSXMLParser *)parser didEndElement:(NSString *)elementName namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qName {
	if (   [elementName isEqualToString:@"clickAPI"]
		|| [elementName isEqualToString:@"xmlErrorResp"]) {
		// nothing to do
		return;
	} else if ([elementName isEqualToString:@"getBalanceResp"]) {
		inBalanceResponseElement = NO;
		[xmlHoldingStringValue release];
		xmlHoldingStringValue = nil;
	} else if ([elementName isEqualToString:@"sendMsgResp"]) {
		inMessageSendResponseElement = NO;
		[xmlHoldingStringValue release];
		xmlHoldingStringValue = nil;
	} else if ([elementName isEqualToString:@"fault"]) {
		NSLog(@"SMS display: The fault was: %@" , [xmlHoldingStringValue stringByTrimmingCharactersInSet: [NSCharacterSet whitespaceAndNewlineCharacterSet]] );
		[xmlHoldingStringValue release];
		xmlHoldingStringValue = nil;
	} else if ([elementName isEqualToString:@"ok"]) {
		if (inBalanceResponseElement) {
			creditBalance = [[xmlHoldingStringValue stringByTrimmingCharactersInSet: [NSCharacterSet whitespaceAndNewlineCharacterSet]] floatValue];
			NSLog(@"SMS display: Your Balance is: %4.1f 'credits'" , creditBalance);
			[xmlHoldingStringValue release];
			xmlHoldingStringValue = nil;
		}
	} else if ([elementName isEqualToString:@"apiMsgId"]) {
		if (inMessageSendResponseElement) {
			NSLog(@"SMS display: Your SMS Message has been sent by Clickatell (messageId: %@)" , [xmlHoldingStringValue stringByTrimmingCharactersInSet: [NSCharacterSet whitespaceAndNewlineCharacterSet]]);
			[xmlHoldingStringValue release];
			xmlHoldingStringValue = nil;
		}
	} else if ([elementName isEqualToString:@"sequence_no"]) {
		if (inMessageSendResponseElement) {
//			NSLog(@"SMS display: sequence_no: %@" , [xmlHoldingStringValue stringByTrimmingCharactersInSet: [NSCharacterSet whitespaceAndNewlineCharacterSet]]);
			[xmlHoldingStringValue release];
			xmlHoldingStringValue = nil;
		}
	} else {
		NSLog(@"SMS display: unknown XML element: %@", elementName);
	}
}

- (void) parser:(NSXMLParser *)parser parseErrorOccurred:(NSError *)parseError {
	NSLog(@"SMS display: Error Parsing XML response from SMS Gateway - %i, Description: %@, Line: %i, Column: %i",	(int)[parseError code],
		  [[parser parserError] localizedDescription],
		  (int)[parser lineNumber],
		  (int)[parser columnNumber]);
}


#pragma mark -
#pragma mark NSURLConnection Delegate methods:


/*
	The delegate receives this message if connection has cancelled the authentication challenge specified by challenge.
 */
- (void) connection:(NSURLConnection *)connection didCancelAuthenticationChallenge:(NSURLAuthenticationChallenge *)challenge {
	NSLog(@"SMS display: didCancelAuthenticationChallenge:");
	[self connectionDidRespond];
}


/*
	The delegate receives this message if connection has failed to load the request successfully. The details of the failure are specified in error.
	Once the delegate receives this message, it will receive no further messages for connection.
 */
- (void) connection:(NSURLConnection *)connection didFailWithError:(NSError *)error {
	NSLog(@"SMS display: Connection to SMS Web API failed: (%@)", [error localizedDescription]);

	[self connectionDidRespond];
}


/*
 The delegate receives this message when connection must authenticate challenge in order to download the request. This method gives the delegate the opportunity to determine the course of action taken for the challenge: provide credentials, continue without providing credentials or cancel the authentication challenge and the download.
 The delegate can determine the number of previous authentication challenges by sending the message previousFailureCount to challenge.

 If the previous failure count is 0 and the value returned by proposedCredential is nil, the delegate can create a new NSURLCredential object, providing a user name and password, and send a useCredential:forAuthenticationChallenge: message to [challenge sender], passing the credential and challenge as parameters. If proposedCredential is not nil, the value is a credential from the URL or the shared credential storage that can be provided to the user as feedback.
 The delegate may decide to abandon further attempts at authentication at any time by sending [challenge sender] a continueWithoutCredentialForAuthenticationChallenge: or a cancelAuthenticationChallenge: message. The specific action will be implementation dependent.

 If the delegate implements this method, the download will suspend until [challenge sender] is sent one of the following messages: useCredential:forAuthenticationChallenge:, continueWithoutCredentialForAuthenticationChallenge: or cancelAuthenticationChallenge:.
 If the delegate does not implement this method the default implementation is used. If a valid credential for the request is provided as part of the URL, or is available from the NSURLCredentialStorage the [challenge sender] is sent a useCredential:forAuthenticationChallenge: with the credential. If the challenge has no credential or the credentials fail to authorize access, then continueWithoutCredentialForAuthenticationChallenge: is sent to [challenge sender] instead.

 See Also: – cancelAuthenticationChallenge:, – continueWithoutCredentialForAuthenticationChallenge:, – useCredential:forAuthenticationChallenge:
 */
- (void) connection:(NSURLConnection *)connection didReceiveAuthenticationChallenge:(NSURLAuthenticationChallenge *)challenge {
	NSLog(@"SMS display: didReceiveAuthenticationChallenge: %@", challenge);
	//	It doesn't need web auth currently - so we're not going to handle this case.
	[connection cancel];
	//	[self connectionDidRespond];
}


/*
	The delegate receives this message as connection loads data incrementally. The delegate should concatenate the contents of each data object delivered to build up the complete data for a URL load.
	This method provides the only way for an asynchronous delegate to retrieve the loaded data. It is the responsibility of the delegate to retain or copy this data as it is delivered.
 */
- (void) connection:(NSURLConnection *)connection didReceiveData:(NSData *)data {
	//	NSLog(@"SMS display: didReceiveData:  %@", data);
	[self setResponseData: data];
	[self handleResponse];
}


/*
	The delegate receives this message when the URL loading system has received sufficient load data for connection to construct the NSURLResponse object, response.
 The response is immutable and will not be modified by the URL loading system once it is presented to the delegate.

 In rare cases, for example in the case of a HTTP load where the content type of the load data is multipart/x-mixed-replace, the delegate will receive more than one connection:didReceiveResponse: message.
 In the event this occurs, delegates should discard all data previously delivered by connection:didReceiveData:, and should be prepared to handle the, potentially different, MIME type reported by the NSURLResponse.

 Note that the only case where this message is not sent to the delegate is when the protocol implementation encounters an error before a response could be created.

 */

- (void) connection:(NSURLConnection *)connection didReceiveResponse:(NSURLResponse *)response {
//	NSLog(@"SMS display: didReceiveResponse:  URL(%@) expectedDataLength:(%d)", [response URL], [response expectedContentLength]  );

//	NSLog(@" MIME:(%@)" , [response MIMEType]);
//	NSLog(@" textEncoding:(%@)" , [response textEncodingName]);
}


- (NSCachedURLResponse *) connection:(NSURLConnection *)connection willCacheResponse:(NSCachedURLResponse *)cachedResponse {
	//	No Caching please...  Since we're using HTTPS none should occur - but no harm in being cautious.
	return nil;
}


/*

 The delegate receives this message when connection determines that it must change URLs in order to continue loading a request.
 The delegate should inspect the redirected request specified by request and copy and modify request as necessary to change its attributes, or return request unmodified.
 The NSURLResponse that caused the redirect is specified by redirectResponse.
 The redirectResponse will be nil in cases where this method is not being sent as a result of involving the delegate in redirect processing.
 If the delegate wishes to cancel the redirect, it should call the connection object’s cancel method.
 Alternatively, the delegate method can return nil to cancel the redirect, and the connection will continue to process.
 This has special relevance in the case where redirectResponse is not nil.
 In this case, any data that is loaded for the connection will be sent to the delegate, and the delegate will receive a connectionDidFinishLoading or connection:didFailLoadingWithError: message, as appropriate.

 The delegate can receive this message as a result of transforming a request’s URL to its canonical form, or for protocol-specific reasons, such as an HTTP redirect.
 The delegate implementation should be prepared to receive this message multiple times.

 */

- (NSURLRequest *) connection:(NSURLConnection *)connection willSendRequest:(NSURLRequest *)request redirectResponse:(NSURLResponse *)redirectResponse {
//	NSLog(@"SMS display: redirectResponse:");
//	[connection cancel];
	return request;
}


// This delegate method is called when connection has finished loading successfully. The delegate will receive no further messages for connection.
- (void) connectionDidFinishLoading:(NSURLConnection *)connection {
	// NSLog(@"SMS display: connectionDidFinishLoading:");
	[self connectionDidRespond];
}

@end
