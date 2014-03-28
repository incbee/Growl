//
//  GrowlPreferencesController.h
//  Growl
//
//  Created by Nelson Elhage on 8/24/04.
//  Renamed from GrowlPreferences.h by Peter Hosey on 2005-06-27.
//  Copyright 2004-2006 The Growl Project. All rights reserved.
//
// This file is under the BSD License, refer to License.txt for details

#ifndef GROWL_PREFERENCES_CONTROLLER_H
#define GROWL_PREFERENCES_CONTROLLER_H

#ifdef __OBJC__
#define XSTR(x) (@x)
#else
#define XSTR CFSTR
#endif

#define GrowlPreferencesChanged		XSTR("GrowlPreferencesChanged")
#define GrowlSquelchMode            XSTR("GrowlSquelchMode")
#define GrowlPreview				XSTR("GrowlPreview")
#define GrowlDisplayPluginKey		XSTR("GrowlDisplayPluginName")
#define GrowlActionPluginsKey    XSTR("GrowlActionPluginIDs")
#define GrowlUserDefaultsKey		XSTR("GrowlUserDefaults")
#define GrowlStartServerKey			XSTR("GrowlStartServer")
#define GrowlSubscriptionEnabledKey XSTR("SubscriptionAllowed")
#define GrowlEnableForwardKey		XSTR("GrowlEnableForward")
#define GrowlForwardDestinationsKey	XSTR("GrowlForwardDestinations")
#define GrowlTCPPortKey				XSTR("GrowlTCPPort")
#define GrowlMenuExtraKey			XSTR("GrowlMenuExtra")
#define LastKnownVersionKey			XSTR("LastKnownVersion")
#define GrowlIdleThresholdKey			XSTR("IdleThreshold")
#define GrowlIdleMultiplierKey		XSTR("IdleMultiplier")
#define GrowlIdleTimeExceptionsKey	XSTR("IdleTimeExceptions")
#define GrowlIdleByTimeKey				XSTR("IdleByTime")
#define GrowlIdleByScreensaverKey	XSTR("IdleByScreensaver")
#define GrowlIdleByScreenLockKey		XSTR("IdleByScreenLock")
#define GrowlHistoryLogEnabled      XSTR("GrowlHistoryLogEnabled")
#define GrowlHistoryRetainAllWhileAway XSTR("GrowlHistoryRetainAllWhileAway")
#define GrowlHistoryCountLimit      XSTR("GrowlHistoryCountLimit")
#define GrowlHistoryDayLimit        XSTR("GrowlHistoryDayLimit")
#define GrowlHistoryTrimByCount     XSTR("GrowlHistoryTrimByCount")
#define GrowlHistoryTrimByDate      XSTR("GrowlHistoryTrimByDate")
#define GrowlSelectedPrefPane       XSTR("GrowlSelectedPrefPane")

#define GrowlFirstLaunch            XSTR("GrowlFirstLaunch")
#define GrowlAllowStartAtLogin      XSTR("GrowlAllowStartAtLogin")
#define GrowlShouldStartAtLogin     XSTR("ShouldStartGrowlAtLogin")

#define GrowlUseAppleNotifications  XSTR("ShouldUseAppleNotifications")

#define GrowlRollupShown            XSTR("GrowlRollupShown")
#define GrowlRollupEnabled          XSTR("GrowlRollupEnabled")
#define GrowlRollupAutomatic        XSTR("GrowlRollupAutomatic")

#define GrowlMenuState              XSTR("GrowlMenuState")
#define GrowlBackgroundAllowed      XSTR("GrowlBackgroundAllowed")
#define GrowlRelaunchWarnSuppress   XSTR("GrowlRelaunchWarnSuppress")
#define GrowlStatusMenu             0
#define GrowlDockMenu               1
#define GrowlBothMenus              2
#define GrowlNoMenu                 3
#define GrowlMenuPulseEnabled       XSTR("GrowlMenuPulseEnabled")

#define showHideHotKey              XSTR("GrowlRollupShowHideHotKey")
#define GrowlRollupKeyComboCode     XSTR("GrowllRollupKeyComboCode")
#define GrowlRollupKeyComboFlags    XSTR("GrowlRollupKeyComboFlags")

#define closeAllHotKey              XSTR("GrowlCloseAllHotKey")
#define GrowlCloseAllKeyComboCode     XSTR("GrowlCloseAllKeyComboCode")
#define GrowlCloseAllKeyComboFlags    XSTR("GrowlCloseAllKeyComboFlags")

#include <CoreFoundation/CoreFoundation.h>

CFTypeRef GrowlPreferencesController_objectForKey(CFTypeRef key);
CFIndex   GrowlPreferencesController_integerForKey(CFTypeRef key);
Boolean   GrowlPreferencesController_boolForKey(CFTypeRef key);
unsigned short GrowlPreferencesController_unsignedShortForKey(CFTypeRef key);

#ifdef __OBJC__

#import <Foundation/Foundation.h>

@class SGKeyCombo;
@interface GrowlPreferencesController : NSObject {
}

+ (GrowlPreferencesController *) sharedController;

- (void) registerDefaults:(NSDictionary *)inDefaults;
- (id) objectForKey:(NSString *)key;
- (void) setObject:(id)object forKey:(NSString *)key;
- (BOOL) boolForKey:(NSString*) key;
- (void) setBool:(BOOL)value forKey:(NSString *)key;
- (CFIndex) integerForKey:(NSString *)key;
- (void) setInteger:(CFIndex)value forKey:(NSString *)key;

- (BOOL) allowStartAtLogin;
- (void) setAllowStartAtLogin:(BOOL)start;
- (BOOL) shouldStartGrowlAtLogin;
- (void) setShouldStartGrowlAtLogin:(BOOL)flag;

- (BOOL) shouldUseAppleNotifications;
- (void) setShouldUseAppleNotifications:(BOOL)appleNotifications;


- (void) setSquelchMode:(BOOL)squelch;
- (BOOL) squelchMode;

#pragma mark -
//Simplified accessors

#pragma mark UI

- (NSString *) defaultDisplayPluginName;
- (void) setDefaultDisplayPluginName:(NSString *)name;

- (NSArray *) defaultActionPluginIDArray;
- (void) setDefaultActionPluginIDArray:(NSArray*)actions;

- (NSUInteger) selectedPreferenceTab;
- (void) setSelectedPreferenceTab:(NSUInteger)tab;

- (CFIndex)selectedPosition;

- (NSInteger)menuState;
- (void) setMenuState:(NSInteger)state;

- (void)removeDockMenu;

- (BOOL) isBackgroundAllowed;
- (void) setBackgroundAllowed:(BOOL)allow;

- (BOOL) isGrowlMenuPulseEnabled;
- (void) setGrowlMenuPulseEnabled:(BOOL)enabled;

#pragma mark Idle Detection

@property (nonatomic, retain) NSNumber *idleThreshold;
@property (nonatomic) NSUInteger idleMultiplier;
@property (nonatomic) BOOL useIdleByTime;
@property (nonatomic) BOOL useIdleByScreensaver;
@property (nonatomic) BOOL useIdleByScreenLock;
@property (nonatomic, retain) NSArray *idleTimeExceptionApps;

#pragma mark Rollup
- (BOOL) isRollupShown;
- (void) setRollupShown:(BOOL)shown;
- (BOOL) isRollupEnabled;
- (void) setRollupEnabled:(BOOL)enabled;
- (BOOL) isRollupAutomatic;
- (void) setRollupAutomatic:(BOOL)automatic;
@property (nonatomic, retain) SGKeyCombo *rollupKeyCombo;
@property (nonatomic, retain) SGKeyCombo *closeAllCombo;

#pragma mark Notification History
- (BOOL) isGrowlHistoryLogEnabled;
- (void) setGrowlHistoryLogEnabled:(BOOL)flag;

- (BOOL) retainAllNotesWhileAway;
- (void) setRetainAllNotesWhileAway:(BOOL)flag;

- (NSUInteger) growlHistoryDayLimit;
- (void) setGrowlHistoryDayLimit:(NSUInteger)limit;
- (NSUInteger) growlHistoryCountLimit;
- (void) setGrowlHistoryCountLimit:(NSUInteger)limit;

- (BOOL) isGrowlHistoryTrimByDate;
- (void) setGrowlHistoryTrimByDate:(BOOL)flag;
- (BOOL) isGrowlHistoryTrimByCount;
- (void) setGrowlHistoryTrimByCount:(BOOL)flag;

#pragma mark "Network" tab pane

- (BOOL) isGrowlServerEnabled;
- (void) setGrowlServerEnabled:(BOOL)enabled;

- (BOOL) isForwardingEnabled;
- (void) setForwardingEnabled:(BOOL)enabled;

- (NSString *) remotePassword;
- (void) setRemotePassword:(NSString *)value;

#pragma mark Subscriptions

- (BOOL) isSubscriptionAllowed;
- (void) setSubscriptionAllowed:(BOOL)allowed;

- (NSString*) GNTPSubscriberID;
- (void) setGNTPSubscriberID:(NSString*)newID;

#pragma mark Rules

-(BOOL)hasShownWarningForRules;
-(void)setHasShownWarningForRules:(BOOL)flag;
-(BOOL)allowsRules;
-(void)setAllowsRules:(BOOL)flag;

-(BOOL)rulesLoggingEnabled;
-(void)setRulesLoggingEnabled:(BOOL)flag;

@end

#endif

#endif
