FasdUAS 1.101.10   ��   ��    k             l     �� ��    Q K	An applescript that shows today's events from iCal as growl notifications.       	  l     �� 
��   
 a [	The script shows how to register and use multiple types of notifications from Applescript:    	     l     ������  ��        l     �� ��     		"Today's Events"         l     �� ��     			and         l     �� ��    ! 		"In-Script Notifications"         l     �� ��    D >			are the two notification types that this script registers.          l     �� ��    @ : 			The types of notification are separated functionally.          l     �� ��    | v 			So the user can disable the first informational note from the prefpane without disabling the main notifications.            l     �� !��   ! t n--------------------------------------------------------------------------------------------------------------       " # " l     �� $��   $ t n--------------------------------------------------------------------------------------------------------------    #  % & % l     ������  ��   &  ' ( ' l     ������  ��   (  ) * ) l     ������  ��   *  + , + l     �� -��   - A ;	Register with growl and show the "gathering" notification.    ,  . / . l    2 0�� 0 O     2 1 2 1 k    1 3 3  4 5 4 l   ������  ��   5  6 7 6 O     8 9 8 k     : :  ; < ; r     = > = J     ? ?  @ A @ m    	 B B  Today's Events    A  C�� C m   	 
 D D  In-Script Notification   ��   > o      ����  0 myallnoteslist myAllNotesList <  E�� E I   ���� F
�� .registernull��� ��� null��   F �� G H
�� 
appl G m     I I - 'AppleScript iCal today's Event Notifier    H �� J K
�� 
anot J o    ����  0 myallnoteslist myAllNotesList K �� L M
�� 
dnot L o    ����  0 myallnoteslist myAllNotesList M �� N��
�� 
iapp N m     O O 
 iCal   ��  ��   9 m     P PLnull     ߀�� O��GrowlHelperApp.appL��� 7����   @ �p   )       �(�K� ���  �GRRR   alis    �  WideBoy                    ��.1H+   O��GrowlHelperApp.app                                              O���)��        ����  	                	Resources     ��.1      �)��     O�� O�� O�� +m �� ��  |  bWideBoy:Users:diggory:Library:PreferencePanes:Growl.prefPane:Contents:Resources:GrowlHelperApp.app  &  G r o w l H e l p e r A p p . a p p    W i d e B o y  ZUsers/diggory/Library/PreferencePanes/Growl.prefPane/Contents/Resources/GrowlHelperApp.app  /    ��   7  Q R Q l   ������  ��   R  S�� S I   1���� T
�� .notifygrnull��� ��� null��   T �� U V
�� 
name U l 	   ! W�� W m     ! X X  In-Script Notification   ��   V �� Y Z
�� 
titl Y l 	 " # [�� [ m   " # \ \  Please Wait   ��   Z �� ] ^
�� 
desc ] l 	 & ) _�� _ m   & ) ` ` ^ XGathering today's events from iCal... (n.b. Events which are repeats will not be shown!)   ��   ^ �� a��
�� 
appl a m   * - b b - 'AppleScript iCal today's Event Notifier   ��  ��   2 m      P��   /  c d c l     ������  ��   d  e f e l     ������  ��   f  g h g l     ������  ��   h  i j i l  3 < k�� k r   3 < l m l I  3 8������
�� .misccurdldt    ��� null��  ��   m o      ���� 0 now  ��   j  n o n l  = | p�� p r   = | q r q c   = x s t s l  = t u�� u b   = t v w v b   = p x y x b   = l z { z b   = d | } | b   = ` ~  ~ b   = X � � � b   = T � � � b   = L � � � b   = H � � � m   = @ � �  "    � n   @ G � � � m   C G��
�� 
wkdy � o   @ C���� 0 now   � m   H K � �  ,     � n   L S � � � m   O S��
�� 
mnth � o   L O���� 0 now   � m   T W � �        n   X _ � � � 1   [ _��
�� 
day  � o   X [���� 0 now   } m   ` c � �  ,     { n   d k � � � 1   g k��
�� 
year � o   d g���� 0 now   y m   l o � �   12:00:00 am    w m   p s � �  "   ��   t m   t w��
�� 
TEXT r o      ���� 0 morningtime morningTime��   o  � � � l  } � ��� � r   } � � � � 4   } ��� �
�� 
ldt  � o   � ����� 0 morningtime morningTime � o      ���� 0 thismorning thisMorning��   �  � � � l  � � ��� � I  � ��� ���
�� .ascrcmnt****      � **** � l  � � ��� � o   � ����� 0 thismorning thisMorning��  ��  ��   �  � � � l  � � ��� � r   � � � � � c   � � � � � l  � � ��� � b   � � � � � b   � � � � � b   � � � � � b   � � � � � b   � � � � � b   � � � � � b   � � � � � b   � � � � � b   � � � � � m   � � � �  "    � n   � � � � � m   � ���
�� 
wkdy � o   � ����� 0 now   � m   � � � �  ,     � n   � � � � � m   � ���
�� 
mnth � o   � ����� 0 now   � m   � � � �       � n   � � � � � 1   � ���
�� 
day  � o   � ����� 0 now   � m   � � � �  ,     � n   � � � � � 1   � ���
�� 
year � o   � ����� 0 now   � m   � � � �   11:59:59 pm    � m   � � � �  "   ��   � m   � ���
�� 
TEXT � o      ���� 0 eveningtime eveningTime��   �  � � � l  � � ��� � r   � � � � � 4   � ��� �
�� 
ldt  � o   � ����� 0 eveningtime eveningTime � o      ���� 0 thisevening thisEvening��   �  � � � l  � � ��� � I  � ��� ���
�� .ascrcmnt****      � **** � l  � � ��� � o   � ����� 0 thisevening thisEvening��  ��  ��   �  � � � l     ������  ��   �  � � � l     ������  ��   �  � � � l     �� ���   �  	Gather today's events    �  � � � l  �� ��� � O   �� � � � k   �� � �  � � � l  � �������  ��   �  � � � r   � � � � � 2   � ���
�� 
wres � o      ���� 0 everycalendar everyCalendar �  � � � l  � �������  ��   �  � � � r   � � � � c   � � � � � J   � �����   � m   � ���
�� 
list � o      ���� 0 currentevents currentEvents �  � � � Y  & ��� � ��� � k  ! � �  � � � r  # � � � n   � � � 4  �� �
�� 
cobj � o  ���� 0 i   � o  ���� 0 everycalendar everyCalendar � o      ���� 0 thiscal thisCal �  � � � l $$������  ��   �  ��� � O  $! �  � k  *   r  *3 2  */��
�� 
wrev o      ���� 0 
everyevent 
everyEvent �� Y  4 �	�~ k  I

  r  IU n  IQ 4  LQ�}
�} 
cobj o  OP�|�| 0 ii   o  IL�{�{ 0 
everyevent 
everyEvent o      �z�z 0 	thisevent 	thisEvent �y O  V k  \  l \\�x�w�x  �w    l \\�v�v   $ 	Catch events that start today     r  \a m  \]�u
�u boovfals o      �t�t  0 eventiscurrent eventIsCurrent   Z  b�!"�s�r! F  b{#$# l bk%�q% ?  bk&'& 1  bg�p
�p 
wr1s' o  gj�o�o 0 thismorning thisMorning�q  $ l nw(�n( A  nw)*) 1  ns�m
�m 
wr1s* o  sv�l�l 0 thisevening thisEvening�n  " r  ~�+,+ m  ~�k
�k boovtrue, o      �j�j  0 eventiscurrent eventIsCurrent�s  �r    -.- l ���i�h�i  �h  . /0/ l ���g1�g  1 F @	Catch events that started before today, but have not yet ended.   0 232 Z  ��45�f�e4 F  ��676 l ��8�d8 ?  ��9:9 1  ���c
�c 
wr5s: o  ���b�b 0 now  �d  7 l ��;�a; A  ��<=< 1  ���`
�` 
wr1s= o  ���_�_ 0 thismorning thisMorning�a  5 r  ��>?> m  ���^
�^ boovtrue? o      �]�]  0 eventiscurrent eventIsCurrent�f  �e  3 @A@ l ���\�[�\  �[  A BCB l ���Z�Y�Z  �Y  C DED Z  �FG�X�WF l ��H�VH = ��IJI o  ���U�U  0 eventiscurrent eventIsCurrentJ m  ���T
�T boovtrue�V  G k  �KK LML I ���SN�R
�S .ascrcmnt****      � ****N l ��O�QO m  ��PP  CURRENT EVENT!   �Q  �R  M QRQ r  ��STS 1  ���P
�P 
wr1sT o      �O�O 0 thestart theStartR UVU r  ��WXW n  ��YZY 1  ���N
�N 
tstrZ o  ���M�M 0 thestart theStartX o      �L�L 0 thestarttime theStartTimeV [\[ r  ��]^] c  ��_`_ K  ��aa �Kbc�K 0 
eventtitle 
eventTitleb n  ��ded 1  ���J
�J 
wr11e o  ���I�I 0 	thisevent 	thisEventc �Hfg�H $0 eventdescription eventDescriptionf n  ��hih 1  ���G
�G 
wr12i o  ���F�F 0 	thisevent 	thisEventg �Ej�D�E 0 	starttime 	startTimej o  ���C�C 0 thestarttime theStartTime�D  ` m  ���B
�B 
reco^ o      �A�A 0 myrecord myRecord\ klk r  �mnm c  �opo J  � qq r�@r o  ���?�? 0 myrecord myRecord�@  p m   �>
�> 
listn o      �=�= 0 newlist newListl s�<s r  	tut b  	vwv o  	�;�; 0 currentevents currentEventsw o  �:�: 0 newlist newListu o      �9�9 0 currentevents currentEvents�<  �X  �W  E xyx l �8�7�8  �7  y z�6z l �5�4�5  �4  �6   o  VY�3�3 0 	thisevent 	thisEvent�y  � 0 ii   m  78�2�2 	 n  8D{|{ m  ?C�1
�1 
nmbr| n 8?}~} 2 ;?�0
�0 
cobj~ o  8;�/�/ 0 
everyevent 
everyEvent�~  ��    o  $'�.�. 0 thiscal thisCal��  �� 0 i   � m  �-�-  � n  � m  �,
�, 
nmbr� n ��� 2 	�+
�+ 
cobj� o  	�*�* 0 everycalendar everyCalendar��   � ��� l ''�)�(�)  �(  � ��� l ''�'�&�'  �&  � ��� l ''�%��%  �  	Show the events.   � ��� Y  '���$���#� k  <��� ��� r  <H��� n  <D��� 4  ?D�"�
�" 
cobj� o  BC�!�! 0 i  � o  <?� �  0 currentevents currentEvents� o      �� "0 thiseventrecord thisEventRecord� ��� Q  Iz���� r  Lc��� l L_��� b  L_��� b  LW��� n  LS��� o  OS�� 0 
eventtitle 
eventTitle� o  LO�� "0 thiseventrecord thisEventRecord� m  SV�� 	  -    � n  W^��� o  Z^�� 0 	starttime 	startTime� o  WZ�� "0 thiseventrecord thisEventRecord�  � o      �� "0 theeventsummary theEventSummary� R      ���
� .ascrerr ****      � ****�  �  � r  kz��� b  kv��� m  kn��  no summary -    � n  nu��� o  qu�� 0 	starttime 	startTime� o  nq�� "0 thiseventrecord thisEventRecord� o      �� "0 theeventsummary theEventSummary� ��� l {{���  �  � ��� Q  {����� r  ~���� n  ~���� o  ���� $0 eventdescription eventDescription� o  ~��� "0 thiseventrecord thisEventRecord� o      �� *0 theeventdescription theEventDescription� R      ���
� .ascrerr ****      � ****�  �  � r  ����� m  ����  no description   � o      �
�
 *0 theeventdescription theEventDescription� ��� l ���	��	  �  � ��� O ����� l 	����� I �����
� .notifygrnull��� ��� null�  � ���
� 
name� l 	����� m  ����  Today's Events   �  � ���
� 
titl� l 	���� � o  ������ "0 theeventsummary theEventSummary�   � ����
�� 
desc� l 	������ o  ������ *0 theeventdescription theEventDescription��  � �����
�� 
appl� m  ���� - 'AppleScript iCal today's Event Notifier   ��  �  � m  �� P�  �$ 0 i  � m  *+���� � n  +7��� m  26��
�� 
nmbr� n +2��� 2 .2��
�� 
cobj� o  +.���� 0 currentevents currentEvents�#  � ���� l ��������  ��  ��   � m   � ����null     ߀��  ^iCal.app���`� �0�L��� 7��֐� �0 �p   )       �(�K� ��ְ �wrbt   alis    6  WideBoy                    ��.1H+    ^iCal.app                                                         ���        ����  	                Applications    ��.1      ��      ^  WideBoy:Applications:iCal.app     i C a l . a p p    W i d e B o y  Applications/iCal.app   / ��  ��   � ��� l     ������  ��  � ���� l     ������  ��  ��       ������  � ��
�� .aevtoappnull  �   � ****� �����������
�� .aevtoappnull  �   � ****� k    ���  .��  i��  n��  ���  ���  ���  ���  ���  �����  ��  ��  � ������ 0 i  �� 0 ii  � S P B D���� I������ O������ X�� \�� ` b������ ��� ��� ��� ��� � ����������� � � � � � ����������������������������������P�����������������������������������������  0 myallnoteslist myAllNotesList
�� 
appl
�� 
anot
�� 
dnot
�� 
iapp�� 
�� .registernull��� ��� null
�� 
name
�� 
titl
�� 
desc
�� .notifygrnull��� ��� null
�� .misccurdldt    ��� null�� 0 now  
�� 
wkdy
�� 
mnth
�� 
day 
�� 
year
�� 
TEXT�� 0 morningtime morningTime
�� 
ldt �� 0 thismorning thisMorning
�� .ascrcmnt****      � ****�� 0 eveningtime eveningTime�� 0 thisevening thisEvening
�� 
wres�� 0 everycalendar everyCalendar
�� 
list�� 0 currentevents currentEvents
�� 
cobj
�� 
nmbr�� 0 thiscal thisCal
�� 
wrev�� 0 
everyevent 
everyEvent�� 0 	thisevent 	thisEvent��  0 eventiscurrent eventIsCurrent
�� 
wr1s
�� 
bool
�� 
wr5s�� 0 thestart theStart
�� 
tstr�� 0 thestarttime theStartTime�� 0 
eventtitle 
eventTitle
�� 
wr11�� $0 eventdescription eventDescription
�� 
wr12�� 0 	starttime 	startTime�� 
�� 
reco�� 0 myrecord myRecord�� 0 newlist newList�� "0 thiseventrecord thisEventRecord�� "0 theeventsummary theEventSummary��  ��  �� *0 theeventdescription theEventDescription���� /� ��lvE�O*��������� UO*����a a �a � UO*j E` Oa _ a ,%a %_ a ,%a %_ a ,%a %_ a ,%a %a %a  &E` !O*a "_ !/E` #O_ #j $Oa %_ a ,%a &%_ a ,%a '%_ a ,%a (%_ a ,%a )%a *%a  &E` +O*a "_ +/E` ,O_ ,j $Oa -�*a .-E` /Ojva 0&E` 1O#k_ /a 2-a 3,Ekh  _ /a 2�/E` 4O_ 4 �*a 5-E` 6O �k_ 6a 2-a 3,Ekh _ 6a 2�/E` 7O_ 7 �fE` 8O*a 9,_ #	 *a 9,_ ,a :& 
eE` 8Y hO*a ;,_ 	 *a 9,_ #a :& 
eE` 8Y hO_ 8e  ca <j $O*a 9,E` =O_ =a >,E` ?Oa @_ 7a A,a B_ 7a C,a D_ ?a Ea F&E` GO_ Gkva 0&E` HO_ 1_ H%E` 1Y hOPU[OY�(U[OY��O �k_ 1a 2-a 3,Ekh  _ 1a 2�/E` IO _ Ia @,a J%_ Ia D,%E` KW X L Ma N_ Ia D,%E` KO _ Ia B,E` OW X L Ma PE` OO� *�a Q�_ Ka _ O�a R� U[OY��OPU ascr  ��ޭ