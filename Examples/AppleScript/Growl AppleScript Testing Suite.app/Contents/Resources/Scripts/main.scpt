FasdUAS 1.101.10   ��   ��    k             l     �� ��    $ 	Growl AppleScript Test Suite.       	  l     �� 
��   
 3 -	This script has to be run as an application     	     l     �� ��    S M 	due to the required method of accessing the resources it has in its bundle.         l     ������  ��        l     ������  ��        l     �� ��    � � display dialog ("NB: to test fully you must have a track selected in itunes that has artwork, and a person in your address book with the email address of the growl discuss list.  That person must have a picture associated. ")         l     ������  ��        l     ������  ��        l    	 ��  r     	    c         l      ��   I    �� !��
�� .earsffdralis        afdr !  f     ��  ��    m    ��
�� 
TEXT  o      ���� 0 	thebundle 	theBundle��     " # " l  
  $�� $ r   
  % & % b   
  ' ( ' o   
 ���� 0 	thebundle 	theBundle ( m     ) )  Contents:Resources:Image:    & l      *�� * o      ���� $0 imagefolderalias imageFolderAlias��  ��   #  + , + l     ������  ��   ,  - . - l     ������  ��   .  / 0 / l     ������  ��   0  1 2 1 l  � 3�� 3 O   � 4 5 4 k   � 6 6  7 8 7 l   �� 9��   9 1 + Make a list of all the notification types     8  : ; : l   �� <��   < ' ! that this script will ever send:    ;  = > = r     ? @ ? l 	   A�� A J     B B  C�� C m     D D  Test Notification   ��  ��   @ l      E�� E o      ���� ,0 allnotificationslist allNotificationsList��   >  F G F l   ������  ��   G  H I H l   �� J��   J ( " Make a list of the notifications     I  K L K l   �� M��   M - ' that will be enabled by default.          L  N O N l   �� P��   P 9 3 Those not enabled by default can be enabled later     O  Q R Q l   �� S��   S 7 1 in the 'Applications' tab of the growl prefpane.    R  T U T r     V W V l 	   X�� X J     Y Y  Z�� Z m     [ [  Test Notification   ��  ��   W l      \�� \ o      ���� 40 enablednotificationslist enabledNotificationsList��   U  ] ^ ] l     ������  ��   ^  _ ` _ l     �� a��   a &   Register our script with growl.    `  b c b l     �� d��   d 7 1 You can optionally (as here) set a default icon     c  e f e l     �� g��   g ' ! for this script's notifications.    f  h i h I    /���� j
�� .registernull��� ��� null��   j �� k l
�� 
appl k l 	 " # m�� m m   " # n n " Growl AppleScript Test Suite   ��   l �� o p
�� 
anot o l 
 $ % q�� q o   $ %���� ,0 allnotificationslist allNotificationsList��   p �� r s
�� 
dnot r l 
 & ' t�� t o   & '���� 40 enablednotificationslist enabledNotificationsList��   s �� u��
�� 
iapp u m   ( ) v v  Script Editor   ��   i  w x w l  0 0������  ��   x  y z y l  0 0������  ��   z  { | { l  0 0������  ��   |  } ~ } l  0 0�� ��    2 ,	Check we're not running from Script Editor:    ~  � � � r   0 G � � � I  0 C�� � �
�� .earsffdralis        afdr � m   0 3��
�� afdrapps � �� � �
�� 
from � m   6 9��
�� fldmfldl � �� ���
�� 
rtyp � m   < =��
�� 
TEXT��   � o      ���� 0 applicationspath   �  � � � r   H U � � � c   H Q � � � b   H O � � � o   H K���� 0 applicationspath   � m   K N � � $ AppleScript:Script Editor.app:    � m   O P��
�� 
TEXT � o      ���� $0 scripteditorpath scriptEditorPath �  � � � I  V ]�� ���
�� .ascrcmnt****      � **** � o   V Y���� $0 scripteditorpath scriptEditorPath��   �  � � � Z   ^ � � ����� � =  ^ c � � � o   ^ _���� 0 	thebundle 	theBundle � o   _ b���� $0 scripteditorpath scriptEditorPath � k   f � � �  � � � O   f � � � � I  j ����� �
�� .notifygrnull��� ��� null��   � �� � �
�� 
name � l 	 n q ��� � m   n q � �  Test Notification   ��   � �� � �
�� 
titl � l 	 t w ��� � m   t w � �  Must Run as App   ��   � �� � �
�� 
desc � l 	 z } ��� � m   z } � � V PThis script cannot be run from Script Editor.  Please run it as an application.    ��   � �� ���
�� 
appl � l 	 ~ � ��� � m   ~ � � � " Growl AppleScript Test Suite   ��  ��   � m   f g � �null     ߀�� O�GrowlHelperApp.appL��� 7�������� �p   )       �(�K� ��� �GRRR   alis    �  WideBoy                    ��.1H+   O�GrowlHelperApp.app                                              O{�&݇        ����  	                build     ��.1      �&݇     O� N�> /� /� ��  |  DWideBoy:Users:diggory:Code:OpenSource:growl:build:GrowlHelperApp.app  &  G r o w l H e l p e r A p p . a p p    W i d e B o y  <Users/diggory/Code/OpenSource/growl/build/GrowlHelperApp.app  /    ��   �  ��� � L   � �����  ��  ��  ��   �  � � � l  � �������  ��   �  � � � l  � �������  ��   �  � � � l  � �������  ��   �  � � � l  � ��� ���   � 2 ,	Check we're not running from Script Editor:    �  � � � r   � � � � � I  � ��� � �
�� .earsffdralis        afdr � m   � ���
�� afdrapps � �� � �
�� 
from � m   � ���
�� fldmfldl � �� ���
�� 
rtyp � m   � ���
�� 
TEXT��   � o      ���� 0 applicationspath   �  � � � r   � � � � � c   � � � � � b   � � � � � o   � ����� 0 applicationspath   � m   � � � � $ AppleScript:Script Editor.app:    � m   � ���
�� 
TEXT � o      ���� $0 scripteditorpath scriptEditorPath �  � � � I  � ��� ���
�� .ascrcmnt****      � **** � o   � ����� $0 scripteditorpath scriptEditorPath��   �  � � � Z   � � � ����� � =  � � � � � o   � ����� 0 	thebundle 	theBundle � o   � ����� $0 scripteditorpath scriptEditorPath � k   � � � �  � � � I  � ��� ���
�� .sysodlogaskr        TEXT � m   � � � � U OThis script cannot be run from Script Editor.  Please run it as an application.   ��   �  �� � L   � ��~�~  �  ��  ��   �  � � � l  � ��}�|�}  �|   �  � � � l  � ��{�z�{  �z   �  � � � l  � ��y ��y   � f `	Check that the test vCard is there and that there is a track selected in iTunes (with artwork):    �  � � � r   � � � � � m   � ��x�x   � o      �w�w 0 artworkpict artworkPICT �  � � � r   � � � � � n  � � � � � I   � ��v�u�t�v >0 getselecteditunestrackartwork getSelectediTunesTrackArtwork�u  �t   �  f   � � � o      �s�s 0 artworkpict artworkPICT �  � � � l  � ��r�q�r  �q   �  � � � Q   �! � � � � Z   � � � ��p�o � l  � � ��n � =   � � � � � o   � ��m�m 0 artworkpict artworkPICT � m   � ��l�l  �n   � I  � ��k�j�i
�k .sysobeepnull��� ��� long�j  �i  �p  �o   � R      �h�g�f
�h .ascrerr ****      � ****�g  �f   � k  ! � �  � � � I �e�d �
�e .notifygrnull��� ��� null�d   � �c � �
�c 
name � l 	 ��b � m      Test Notification   �b   � �a
�a 
titl l 	�` m    Please Select a Track...   �`   �_
�_ 
desc l 	�^ m   Y SPlease have a  track selected (with artwork) in iTunes before running this app...     �^   �]	�\
�] 
appl	 l 	
�[
 m   " Growl AppleScript Test Suite   �[  �\   � �Z L  !�Y�Y  �Z   �  l ""�X�W�X  �W    l ""�V�V   # 	my quickNotify3(artworkPICT)     l ""�U�T�U  �T    l ""�S�R�S  �R    l ""�Q�Q   
 TIFF     l ""�P�P   ' !	Address Book gives out TIFF data     l ""�O�O   T N	Make sure you have the following email (case-sensitive!) in your address book      l ""�N!�N  ! 2 ,	Also make sure it has a picture associated.     "#" r  ")$%$ m  "%&&  discuss@growl.info   % o      �M�M (0 personemailaddress personEmailAddress# '(' r  *6)*) n *2+,+ I  +2�L-�K�L 60 getpictureforemailaddress getPictureForEmailAddress- .�J. o  +.�I�I (0 personemailaddress personEmailAddress�J  �K  ,  f  *+* o      �H�H &0 thepersonspicture thePersonsPicture( /0/ l 77�G�F�G  �F  0 121 Q  7�3453 Z  :K67�E�D6 l :?8�C8 ?  :?9:9 o  :=�B�B &0 thepersonspicture thePersonsPicture: m  =>�A�A  �C  7 I BG�@�?�>
�@ .sysobeepnull��� ��� long�?  �>  �E  �D  4 R      �=�<�;
�= .ascrerr ****      � ****�<  �;  5 k  S�;; <=< r  S`>?> c  S\@A@ b  SXBCB o  ST�:�: 0 	thebundle 	theBundleC m  TWDD ) #Contents:Resources:GrowlDiscuss.vcf   A m  X[�9
�9 
alis? o      �8�8 0 	growlcard 	growlCard= EFE I a~�7�6G
�7 .notifygrnull��� ��� null�6  G �5HI
�5 
nameH l 	ehJ�4J m  ehKK  Test Notification   �4  I �3LM
�3 
titlL l 	knN�2N m  knOO  Please add The VCard...   �2  M �1PQ
�1 
descP l 	qtR�0R m  qtSS Y SPlease add the growl-discuss vcard into your address book and restart the test...     �0  Q �/T�.
�/ 
applT l 	uxU�-U m  uxVV " Growl AppleScript Test Suite   �-  �.  F WXW l �,�+�,  �+  X YZY O �[\[ I ���*]�)
�* .aevtodocnull  �    alis] o  ���(�( 0 	growlcard 	growlCard�)  \ m  �^^�null     �����  

Finder.app�� � �0�L��� 7���P    �p   )       �(�K� ���p $MACS   alis    b  WideBoy                    ��.1H+    

Finder.app                                                       2����        ����  	                CoreServices    ��.1      ���      
  
  
  .WideBoy:System:Library:CoreServices:Finder.app   
 F i n d e r . a p p    W i d e B o y  &System/Library/CoreServices/Finder.app  / ��  Z _`_ l ���'�&�'  �&  ` a�%a L  ���$�$  �%  2 bcb l ���#d�#  d ) #	my quickNotify4(thePersonsPicture)   c efe l ���"�!�"  �!  f ghg l ��� ��   �  h iji l �����  �  j klk l �����  �  l mnm l �����  �  n opo l �����  �  p qrq l �����  �  r sts l �����  �  t uvu l ���w�  w ' ! "image from URL" command testing   v xyx l �����  �  y z{z l ���|�  |  			as an Alias   { }~} l ��� r  ����� c  ����� b  ����� o  ���� $0 imagefolderalias imageFolderAlias� m  ����  waiting 2004.jpg   � m  ���
� 
alis� o      �� 0 	testimage 	testImage�   alias    ~ ��� n ����� I  �����
� 0 quicknotify quickNotify� ��	� o  ���� 0 	testimage 	testImage�	  �
  �  f  ��� ��� l �����  �  � ��� l �����  �  � ��� l �����  �  			as a Path   � ��� l ����� r  ����� m  ����  ~/waiting 2004.jpg   � o      �� 0 	testimage 	testImage� #  path with a space and tilde    � ��� n ����� I  ����� � 0 quicknotify quickNotify� ���� o  ������ 0 	testimage 	testImage��  �   �  f  ��� ��� l ����� r  ����� m  ���� # ~/sites/images/macosxlogo.gif   � o      ���� 0 	testimage 	testImage� , & path without spaces but with a tilde    � ��� n ����� I  ��������� 0 quicknotify quickNotify� ���� o  ������ 0 	testimage 	testImage��  ��  �  f  ��� ��� l ����� r  ����� m  ���� W Q/System/Library/CoreServices/Classic Startup.app/Contents/Resources/Classic90.png   � o      ���� 0 	testimage 	testImage� ' ! path with a space, but no tilde    � ��� n ����� I  ��������� 0 quicknotify quickNotify� ���� o  ������ 0 	testimage 	testImage��  ��  �  f  ��� ��� l �������  �  	Should fail   � ��� l ����� r  ����� m  ����  /users/diggory/bad.jpg   � o      ���� 0 	testimage 	testImage�   missing file    � ��� Q  � ����� k  ���� ��� n ����� I  ��������� 0 quicknotify quickNotify� ���� o  ������ 0 	testimage 	testImage��  ��  �  f  ��� ���� n ����� I  ��������� 0 errornotify errorNotify� ���� m  ���� , &a test passed that should have failed!   ��  ��  �  f  ����  � R      ������
�� .ascrerr ****      � ****��  ��  ��  � ��� l ��� r  ��� m  ��  /system   � o      ���� 0 	testimage 	testImage� ( " file exists, but is not an image    � ��� Q  	&����� k  �� ��� n ��� I  ������� 0 quicknotify quickNotify� ���� o  ���� 0 	testimage 	testImage��  ��  �  f  � ���� n ��� I  ������� 0 errornotify errorNotify� ���� m  �� , &a test passed that should have failed!   ��  ��  �  f  ��  � R      ������
�� .ascrerr ****      � ****��  ��  ��  � ��� l ''������  ��  � ��� l ''������  ��  � ��� l ''�����  �  			as a File URL   � ��� l '.��� r  '.��� m  '*�� ` Zfile:///System/Library/CoreServices/Classic%20Startup.app/Contents/Resources/Classic90.png   � o      ���� 0 	testimage 	testImage� * $	File URL with percentage encoding     � ��� n /7� � I  07������ 0 quicknotify quickNotify �� o  03���� 0 	testimage 	testImage��  ��     f  /0�  l 8? r  8? m  8;		 ^ Xfile:///System/Library/CoreServices/Classic Startup.app/Contents/Resources/Classic90.png    o      ���� 0 	testimage 	testImage   	 File URL with spaces in     

 n @H I  AH������ 0 quicknotify quickNotify �� o  AD���� 0 	testimage 	testImage��  ��    f  @A  l II������  ��    l IP r  IP m  IL P Jfile:///System/Library/CoreServices/Dock.app/Contents/Resources/Finder.png    o      ���� 0 	testimage 	testImage ! 	 File URL.without spaces 	     n QY I  RY������ 0 quicknotify quickNotify �� o  RU���� 0 	testimage 	testImage��  ��    f  QR   l Za!"! r  Za#$# m  Z]%% * $file:///System/Library/CoreServices/   $ o      ���� 0 	testimage 	testImage" ( " file exists, but is not an image      &'& Q  b()��( k  ev** +,+ n em-.- I  fm��/���� 0 quicknotify quickNotify/ 0��0 o  fi���� 0 	testimage 	testImage��  ��  .  f  ef, 1��1 n nv232 I  ov��4���� 0 errornotify errorNotify4 5��5 m  or66 , &a test passed that should have failed!   ��  ��  3  f  no��  ) R      ������
�� .ascrerr ****      � ****��  ��  ��  ' 787 l ��9:9 r  ��;<; m  ��== # file:///users/diggory/bad.jpg   < o      ���� 0 	testimage 	testImage:   missing file    8 >?> Q  ��@A��@ k  ��BB CDC n ��EFE I  ����G���� 0 quicknotify quickNotifyG H��H o  ������ 0 	testimage 	testImage��  ��  F  f  ��D I��I n ��JKJ I  ����L���� 0 errornotify errorNotifyL M��M m  ��NN , &a test passed that should have failed!   ��  ��  K  f  ����  A R      ������
�� .ascrerr ****      � ****��  ��  ��  ? OPO l ��QRQ r  ��STS m  ��UU . (file:///user s/di gg %^%^^%% ory/bad.jpg   T o      ���� 0 	testimage 	testImageR * $ really skanky   (should be missing)   P VWV Q  ��XY��X k  ��ZZ [\[ n ��]^] I  ����_���� 0 quicknotify quickNotify_ `��` o  ������ 0 	testimage 	testImage��  ��  ^  f  ��\ a��a n ��bcb I  ����d���� 0 errornotify errorNotifyd e��e m  ��ff , &a test passed that should have failed!   ��  ��  c  f  ����  Y R      ������
�� .ascrerr ****      � ****��  ��  ��  W ghg l ��iji r  ��klk m  ��mm ) #ftp://users/diggory/BADPROTOCOL.jpg   l o      ���� 0 	testimage 	testImagej   bad protocol      h non Q  ��pq��p k  ��rr sts n ��uvu I  ����w���� 0 quicknotify quickNotifyw x��x o  ������ 0 	testimage 	testImage��  ��  v  f  ��t y��y n ��z{z I  ����|���� 0 errornotify errorNotify| }��} m  ��~~ , &a test passed that should have failed!   ��  ��  {  f  ����  q R      ������
�� .ascrerr ****      � ****��  ��  ��  o � l ��������  ��  � ��� l ��������  ��  � ��� I �������
�� .sysodelanull��� ��� long� m  ������ ��  � ��� l ��������  ��  � ��� l ��������  ��  � ��� l �������  � %  "icon of File" command testing   � ��� l ��������  ��  � ��� l �������  � 
 	URL   � ��� l ���� r  ���� m  ����  file:///System/   � o      �� 0 	testimage 	testImage�  	 url with space   � ��� n 
��� I  
�~��}�~ 0 quicknotify2 quickNotify2� ��|� o  �{�{ 0 	testimage 	testImage�|  �}  �  f  � ��� l �z��z  �  	Alias	   � ��� l ��� r  ��� c  ��� b  ��� o  �y�y $0 imagefolderalias imageFolderAlias� m  ��  
strong bad   � m  �x
�x 
alis� o      �w�w 0 	testimage 	testImage�   alias    � ��� n !��� I  !�v��u�v 0 quicknotify2 quickNotify2� ��t� o  �s�s 0 	testimage 	testImage�t  �u  �  f  � ��� l "/��� r  "/��� c  "+��� b  "'��� o  "#�r�r $0 imagefolderalias imageFolderAlias� m  #&��  homestar   � m  '*�q
�q 
alis� o      �p�p 0 	testimage 	testImage�   alias    � ��� n 08��� I  18�o��n�o 0 quicknotify2 quickNotify2� ��m� o  14�l�l 0 	testimage 	testImage�m  �n  �  f  01� ��� l 99�k�j�k  �j  � ��� l 99�i��i  �  	Path   � ��� r  9@��� m  9<��  ~/   � o      �h�h 0 	testimage 	testImage� ��� n AI��� I  BI�g��f�g 0 quicknotify2 quickNotify2� ��e� o  BE�d�d 0 	testimage 	testImage�e  �f  �  f  AB� ��� l JJ�c�b�c  �b  � ��� l JJ�a�`�a  �`  � ��� l JJ�_��_  �  	Binary data testing:			   � ��� l JJ�^�]�^  �]  � ��� l JJ�\��\  �   PICT	   � ��� l JJ�[��[  �   	iTunes provides PICT Data   � ��� l JJ�Z��Z  � T N ****  Make sure that you have a track selected in itunes when the script runs   � ��� l JJ�Y��Y  � #  ****	and that it has artwork   � ��� r  JS��� n JO��� I  KO�X�W�V�X >0 getselecteditunestrackartwork getSelectediTunesTrackArtwork�W  �V  �  f  JK� o      �U�U 0 artworkpict artworkPICT� ��� n T\��� I  U\�T��S�T 0 quicknotify3 quickNotify3� ��R� o  UX�Q�Q 0 artworkpict artworkPICT�R  �S  �  f  TU� ��� l ]]�P�O�P  �O  � ��� l ]]�N�M�N  �M  � ��� l ]]�L��L  � 
 TIFF   � ��� l ]]�K��K  � ' !	Address Book gives out TIFF data   � � � l ]]�J�J   T N	Make sure you have the following email (case-sensitive!) in your address book      l ]]�I�I   2 ,	Also make sure it has a picture associated.     r  ]d m  ]`		  discuss@growl.info    o      �H�H (0 personemailaddress personEmailAddress 

 r  eq n em I  fm�G�F�G 60 getpictureforemailaddress getPictureForEmailAddress �E o  fi�D�D (0 personemailaddress personEmailAddress�E  �F    f  ef o      �C�C &0 thepersonspicture thePersonsPicture  n rz I  sz�B�A�B 0 quicknotify4 quickNotify4 �@ o  sv�?�? &0 thepersonspicture thePersonsPicture�@  �A    f  rs  l {{�>�=�>  �=    l {{�<�;�<  �;    l {{�:�9�:  �9    l {{�8 �8     	All Tests complete!    !"! l {{�7�6�7  �6  " #$# I {��5�4%
�5 .notifygrnull��� ��� null�4  % �3&'
�3 
name& l 	�(�2( m  �))  Test Notification   �2  ' �1*+
�1 
titl* l 	��,�0, m  ��--  Success!   �0  + �/./
�/ 
desc. l 	��0�.0 m  ��11  All Tests complete.    �.  / �-2�,
�- 
appl2 l 	��3�+3 m  ��44 " Growl AppleScript Test Suite   �+  �,  $ 565 l ���*�)�*  �)  6 7�(7 l ���'�&�'  �&  �(   5 m     ���   2 898 l     �%�$�%  �$  9 :;: l     �#�"�#  �"  ; <=< l     �!� �!  �   = >?> l     ���  �  ? @A@ l     ���  �  A BCB l     ���  �  C DED l     ���  �  E FGF l     ���  �  G HIH l     ���  �  I JKJ l     ���  �  K LML l     ���  �  M NON l     ���  �  O PQP l     ���  �  Q RSR l     �T�  T  	iTunes Routines   S UVU l     �
�	�
  �	  V WXW i    YZY I      ���� >0 getselecteditunestrackartwork getSelectediTunesTrackArtwork�  �  Z Q     }[\�[ k    t]] ^_^ O    q`a` k    pbb cdc r    efe n    ghg 1    �
� 
pPlyh 4   �i
� 
cwini m   	 
�� f o      �� 
0 myp myPd j� j Z    pkl����k I   ��m��
�� .coredoexbool    ��� obj m 1    ��
�� 
sele��  l k    lnn opo r    $qrq l   "s��s n    "tut 4    "��v
�� 
cobjv m     !���� u n    wxw 1    ��
�� 
pidxx 1    ��
�� 
sele��  r o      ���� 0 c  p y��y O   % lz{z Z   ) k|}����| I  ) 3��~��
�� .coredoexbool    ��� obj ~ n   ) /� 2  - /��
�� 
cArt� 4   ) -���
�� 
cTrk� o   + ,���� 0 c  ��  } k   6 g�� ��� r   6 ?��� n   6 =��� 4  : =���
�� 
cArt� m   ; <���� � 4   6 :���
�� 
cTrk� o   8 9���� 0 c  � o      ���� 0 theart theArt� ��� r   @ H��� n   @ F��� 1   D F��
�� 
pArt� 4   @ D���
�� 
cTrk� o   B C���� 0 c  � o      ���� 0 	theartist 	theArtist� ��� r   I Q��� n   I O��� 1   M O��
�� 
pAlb� 4   I M���
�� 
cTrk� o   K L���� 0 c  � o      ���� 0 thealbum theAlbum� ��� l  R R������  ��  � ��� r   R Y��� c   R W��� l  R U���� n   R U��� 1   S U��
�� 
pPCT� o   R S���� 0 theart theArt��  � m   U V��
�� 
PICT� o      ���� 0 pic  � ��� I  Z a�����
�� .ascrcmnt****      � ****� l  Z ]���� n   Z ]��� m   [ ]��
�� 
pcls� o   Z [���� 0 pic  ��  ��  � ���� r   b g��� l  b e���� n   b e��� 1   c e��
�� 
pFmt� o   b c���� 0 theart theArt��  � o      ���� 0 fmat  ��  ��  ��  { o   % &���� 
0 myp myP��  ��  ��  �   a m    ���null     ߀��  ^
iTunes.app��P� �0�L��� 7��Հ  ] �p(   )       �(�K� ��ՠ
}hook   alis    >  WideBoy                    ��.1H+    ^
iTunes.app                                                      �����        ����  	                Applications    ��.1      ����      ^  WideBoy:Applications:iTunes.app    
 i T u n e s . a p p    W i d e B o y  Applications/iTunes.app   / ��  _ ���� L   r t�� o   r s���� 0 pic  ��  \ R      ������
�� .ascrerr ****      � ****��  ��  �  X ��� l     ������  ��  � ��� l     ������  ��  � ��� l     ������  ��  � ��� l     �����  �  	Address Book Routines   � ��� i   ��� I      ������� 60 getpictureforemailaddress getPictureForEmailAddress� ���� o      ���� (0 personemailaddress personEmailAddress��  ��  � O     +��� Q    *����� k    !�� ��� r    ��� l   ���� 6  ��� 4   ���
�� 
azf4� m   	 
���� � E    ��� l   ���� n    ��� 1    ��
�� 
az17� 2   ��
�� 
az21��  � o    ���� (0 personemailaddress personEmailAddress��  � o      ���� 0 	theperson 	thePerson� ��� r    ��� n    ��� 1    ��
�� 
az50� o    ���� 0 	theperson 	thePerson� o      ���� 0 thepiccy thePiccy� ���� L    !�� o     ���� 0 thepiccy thePiccy��  � R      ������
�� .ascrerr ****      � ****��  ��  ��  � m     ���null     ߀��  ^Address Book.app0�L��� 7���@ 
   �p    )       �(�K� ���`
}adrb   alis    V  WideBoy                    ��.1H+    ^Address Book.app                                                 ����        ����  	                Applications    ��.1      ���      ^  %WideBoy:Applications:Address Book.app   "  A d d r e s s   B o o k . a p p    W i d e B o y  Applications/Address Book.app   / ��  � ��� l     ������  ��  � ��� l     ������  ��  � ��� l     ������  ��  � ��� l     ������  ��  � ��� l     ������  ��  � ��� l     �����  � ( "	Notification convenience routines   � ��� l     ������  ��  � ��� l     ������  ��  � ��� i   ��� I      ������� 0 quicknotify quickNotify� ���� o      ����  0 imagereference imageReference��  ��  � O     ��� I   �����
�� .notifygrnull��� ��� null��  � ����
�� 
name� l 	  ���� m    ��  Test Notification   ��  � ����
�� 
titl� l 	  	���� m    	��  Test Notification   ��  � ��� 
�� 
desc� b   
  l 	 
 �� m   
   Ref:    ��   o    ����  0 imagereference imageReference  ��
�� 
appl l 	  �� m     " Growl AppleScript Test Suite   ��   ��	��
�� 
iurl	 o    ����  0 imagereference imageReference��  � m      �� 

 l     ������  ��    l     ������  ��    l     ������  ��    l     ������  ��    l     ������  ��    i    I      ������ 0 errornotify errorNotify � o      �~�~ 0 	errortext 	errorText�  ��   O      I   �}�|
�} .notifygrnull��� ��� null�|   �{
�{ 
name l 	  �z m        Test Notification   �z   �y!"
�y 
titl! l 	  	#�x# m    	$$  !! WARNING !!   �x  " �w%&
�w 
desc% l 	 
 '�v' o   
 �u�u 0 	errortext 	errorText�v  & �t(�s
�t 
appl( l 	  )�r) m    ** " Growl AppleScript Test Suite   �r  �s   m      � +,+ l     �q�p�q  �p  , -.- l     �o�n�o  �n  . /0/ l     �m�l�m  �l  0 121 i   343 I      �k5�j�k 0 quicknotify2 quickNotify25 6�i6 o      �h�h  0 imagereference imageReference�i  �j  4 O     787 I   �g�f9
�g .notifygrnull��� ��� null�f  9 �e:;
�e 
name: l 	  <�d< m    ==  Test Notification   �d  ; �c>?
�c 
titl> l 	  	@�b@ m    	AA  Test Notification   �b  ? �aBC
�a 
descB b   
 DED l 	 
 F�`F m   
 GG  Ref:    �`  E o    �_�_  0 imagereference imageReferenceC �^HI
�^ 
applH l 	  J�]J m    KK " Growl AppleScript Test Suite   �]  I �\L�[
�\ 
ifilL o    �Z�Z  0 imagereference imageReference�[  8 m      �2 MNM l     �Y�X�Y  �X  N OPO l     �W�V�W  �V  P QRQ l     �U�T�U  �T  R STS i   UVU I      �SW�R�S 0 quicknotify3 quickNotify3W X�QX o      �P�P  0 imagereference imageReference�Q  �R  V O     YZY I   �O�N[
�O .notifygrnull��� ��� null�N  [ �M\]
�M 
name\ l 	  ^�L^ m    __  Test Notification   �L  ] �K`a
�K 
titl` l 	  	b�Jb m    	cc  Test Notification   �J  a �Ide
�I 
descd l 	 
 f�Hf m   
 gg  PICT Image data    �H  e �Ghi
�G 
applh l 	  j�Fj m    kk " Growl AppleScript Test Suite   �F  i �El�D
�E 
pictl l   m�Cm o    �B�B  0 imagereference imageReference�C  �D  Z m      �T non l     �A�@�A  �@  o p�?p i   qrq I      �>s�=�> 0 quicknotify4 quickNotify4s t�<t o      �;�;  0 imagereference imageReference�<  �=  r O     uvu I   �:�9w
�: .notifygrnull��� ��� null�9  w �8xy
�8 
namex l 	  z�7z m    {{  Test Notification   �7  y �6|}
�6 
titl| l 	  	~�5~ m    	  Test Notification   �5  } �4��
�4 
desc� l 	 
 ��3� m   
 ��  TIFF Image data    �3  � �2��
�2 
appl� l 	  ��1� m    �� " Growl AppleScript Test Suite   �1  � �0��/
�0 
imag� l   ��.� o    �-�-  0 imagereference imageReference�.  �/  v m      ��?       
�,����������,  � �+�*�)�(�'�&�%�$�+ >0 getselecteditunestrackartwork getSelectediTunesTrackArtwork�* 60 getpictureforemailaddress getPictureForEmailAddress�) 0 quicknotify quickNotify�( 0 errornotify errorNotify�' 0 quicknotify2 quickNotify2�& 0 quicknotify3 quickNotify3�% 0 quicknotify4 quickNotify4
�$ .aevtoappnull  �   � ****� �#Z�"�!��� �# >0 getselecteditunestrackartwork getSelectediTunesTrackArtwork�"  �!  � �������� 
0 myp myP� 0 c  � 0 theart theArt� 0 	theartist 	theArtist� 0 thealbum theAlbum� 0 pic  � 0 fmat  � ����������������
�	�
� 
cwin
� 
pPly
� 
sele
� .coredoexbool    ��� obj 
� 
pidx
� 
cobj
� 
cTrk
� 
cArt
� 
pArt
� 
pAlb
� 
pPCT
� 
PICT
� 
pcls
� .ascrcmnt****      � ****
�
 
pFmt�	  �  �  ~ v� k*�k/�,E�O*�,j  W*�,�,�k/E�O� D*�/�-j  6*�/�k/E�O*�/�,E�O*�/�,E�O��,�&E�O��,j O��,E�Y hUY hUO�W X  h� �������� 60 getpictureforemailaddress getPictureForEmailAddress� ��� �  �� (0 personemailaddress personEmailAddress�  � �� ��� (0 personemailaddress personEmailAddress�  0 	theperson 	thePerson�� 0 thepiccy thePiccy� ��������������
�� 
azf4�  
�� 
az21
�� 
az17
�� 
az50��  ��  � ,� ( *�k/�[�-�,\Z�@1E�O��,E�O�W X  hU� ������������� 0 quicknotify quickNotify�� ����� �  ����  0 imagereference imageReference��  � ����  0 imagereference imageReference�  �����������������
�� 
name
�� 
titl
�� 
desc
�� 
appl
�� 
iurl�� 

�� .notifygrnull��� ��� null�� � *������%���� U� ������������ 0 errornotify errorNotify�� ����� �  ���� 0 	errortext 	errorText��  � ���� 0 	errortext 	errorText� 
 ��� ��$����*����
�� 
name
�� 
titl
�� 
desc
�� 
appl�� 
�� .notifygrnull��� ��� null�� � *�������� 	U� ��4���������� 0 quicknotify2 quickNotify2�� ����� �  ����  0 imagereference imageReference��  � ����  0 imagereference imageReference�  ���=��A��G��K������
�� 
name
�� 
titl
�� 
desc
�� 
appl
�� 
ifil�� 

�� .notifygrnull��� ��� null�� � *������%���� U� ��V���������� 0 quicknotify3 quickNotify3�� ����� �  ����  0 imagereference imageReference��  � ����  0 imagereference imageReference�  ���_��c��g��k������
�� 
name
�� 
titl
�� 
desc
�� 
appl
�� 
pict�� 

�� .notifygrnull��� ��� null�� � *���������� U� ��r���������� 0 quicknotify4 quickNotify4�� ����� �  ����  0 imagereference imageReference��  � ����  0 imagereference imageReference�  ���{��������������
�� 
name
�� 
titl
�� 
desc
�� 
appl
�� 
imag�� 

�� .notifygrnull��� ��� null�� � *���������� U� �����������
�� .aevtoappnull  �   � ****� k    ���  ��  "��  1����  ��  ��  �  � _������ )�� � D�� [���� n������ v���������������� ������� ��� ��� � ��� � ������������� &������D����KOSV^�����������������	%6=NUfm~����������	��)-14
�� .earsffdralis        afdr
�� 
TEXT�� 0 	thebundle 	theBundle�� $0 imagefolderalias imageFolderAlias�� ,0 allnotificationslist allNotificationsList�� 40 enablednotificationslist enabledNotificationsList
�� 
appl
�� 
anot
�� 
dnot
�� 
iapp�� 
�� .registernull��� ��� null
�� afdrapps
�� 
from
�� fldmfldl
�� 
rtyp�� �� 0 applicationspath  �� $0 scripteditorpath scriptEditorPath
�� .ascrcmnt****      � ****
�� 
name
�� 
titl
�� 
desc
�� .notifygrnull��� ��� null
�� .sysodlogaskr        TEXT�� 0 artworkpict artworkPICT�� >0 getselecteditunestrackartwork getSelectediTunesTrackArtwork
�� .sysobeepnull��� ��� long��  ��  �� (0 personemailaddress personEmailAddress�� 60 getpictureforemailaddress getPictureForEmailAddress�� &0 thepersonspicture thePersonsPicture
�� 
alis�� 0 	growlcard 	growlCard
�� .aevtodocnull  �    alis�� 0 	testimage 	testImage�� 0 quicknotify quickNotify�� 0 errornotify errorNotify
�� .sysodelanull��� ��� long�� 0 quicknotify2 quickNotify2�� 0 quicknotify3 quickNotify3�� 0 quicknotify4 quickNotify4���)j  �&E�O��%E�O���kvE�O�kvE�O*��������a  Oa a a a �a   E` O_ a %�&E` O_ j O�_   *� *a a a a a a  �a !a  "UOhY hOa a a a �a   E` O_ a #%�&E` O_ j O�_   a $j %OhY hOjE` &O)j+ 'E` &O _ &j  
*j (Y hW 'X ) **a a +a a ,a a -�a .a  "OhOa /E` 0O)_ 0k+ 1E` 2O _ 2j 
*j (Y hW DX ) *�a 3%a 4&E` 5O*a a 6a a 7a a 8�a 9a  "Oa : 	_ 5j ;UOhO�a <%a 4&E` =O)_ =k+ >Oa ?E` =O)_ =k+ >Oa @E` =O)_ =k+ >Oa AE` =O)_ =k+ >Oa BE` =O )_ =k+ >O)a Ck+ DW X ) *hOa EE` =O )_ =k+ >O)a Fk+ DW X ) *hOa GE` =O)_ =k+ >Oa HE` =O)_ =k+ >Oa IE` =O)_ =k+ >Oa JE` =O )_ =k+ >O)a Kk+ DW X ) *hOa LE` =O )_ =k+ >O)a Mk+ DW X ) *hOa NE` =O )_ =k+ >O)a Ok+ DW X ) *hOa PE` =O )_ =k+ >O)a Qk+ DW X ) *hOa j ROa SE` =O)_ =k+ TO�a U%a 4&E` =O)_ =k+ TO�a V%a 4&E` =O)_ =k+ TOa WE` =O)_ =k+ TO)j+ 'E` &O)_ &k+ XOa YE` 0O)_ 0k+ 1E` 2O)_ 2k+ ZO*a a [a a \a a ]�a ^a  "OPU ascr  ��ޭ