FasdUAS 1.101.10   ��   ��    l    � ����  O     �    k    �     	  l   �� 
 ��   
 1 + Make a list of all the notification types      �   V   M a k e   a   l i s t   o f   a l l   t h e   n o t i f i c a t i o n   t y p e s   	     l   ��  ��    ' ! that this script will ever send:     �   B   t h a t   t h i s   s c r i p t   w i l l   e v e r   s e n d :      r    
    l 	   ����  J           m       �   " T e s t   N o t i f i c a t i o n   ��  m       �   2 A n o t h e r   T e s t   N o t i f i c a t i o n��  ��  ��    l      ����  o      ���� ,0 allnotificationslist allNotificationsList��  ��       !   l   ��������  ��  ��   !  " # " l   �� $ %��   $ ( " Make a list of the notifications     % � & & D   M a k e   a   l i s t   o f   t h e   n o t i f i c a t i o n s   #  ' ( ' l   �� ) *��   ) - ' that will be enabled by default.          * � + + N   t h a t   w i l l   b e   e n a b l e d   b y   d e f a u l t .             (  , - , l   �� . /��   . 9 3 Those not enabled by default can be enabled later     / � 0 0 f   T h o s e   n o t   e n a b l e d   b y   d e f a u l t   c a n   b e   e n a b l e d   l a t e r   -  1 2 1 l   �� 3 4��   3 7 1 in the 'Applications' tab of the growl prefpane.    4 � 5 5 b   i n   t h e   ' A p p l i c a t i o n s '   t a b   o f   t h e   g r o w l   p r e f p a n e . 2  6 7 6 r     8 9 8 l 	   :���� : J     ; ;  <�� < m     = = � > > " T e s t   N o t i f i c a t i o n��  ��  ��   9 l      ?���� ? o      ���� 40 enablednotificationslist enabledNotificationsList��  ��   7  @ A @ l   ��������  ��  ��   A  B C B l   �� D E��   D &   Register our script with growl.    E � F F @   R e g i s t e r   o u r   s c r i p t   w i t h   g r o w l . C  G H G l   �� I J��   I 7 1 You can optionally (as here) set a default icon     J � K K b   Y o u   c a n   o p t i o n a l l y   ( a s   h e r e )   s e t   a   d e f a u l t   i c o n   H  L M L l   �� N O��   N ' ! for this script's notifications.    O � P P B   f o r   t h i s   s c r i p t ' s   n o t i f i c a t i o n s . M  Q R Q I   ���� S
�� .registernull��� ��� null��   S �� T U
�� 
appl T l 	   V���� V m     W W � X X 0 G r o w l   A p p l e S c r i p t   S a m p l e��  ��   U �� Y Z
�� 
anot Y l 
   [���� [ o    ���� ,0 allnotificationslist allNotificationsList��  ��   Z �� \ ]
�� 
dnot \ l 
   ^���� ^ o    ���� 40 enablednotificationslist enabledNotificationsList��  ��   ] �� _��
�� 
iapp _ m     ` ` � a a  S c r i p t   E d i t o r��   R  b c b l   ��������  ��  ��   c  d e d l   �� f g��   f #        Send a Notification...    g � h h :               S e n d   a   N o t i f i c a t i o n . . . e  i j i l   ��������  ��  ��   j  k l k l   ��������  ��  ��   l  m n m l   �� o p��   o  
	No icon.	    p � q q  	 N o   i c o n . 	 n  r s r l   ��������  ��  ��   s  t u t l   �� v w��   v  	Absolute path icon.	    w � x x * 	 A b s o l u t e   p a t h   i c o n . 	 u  y z y I   >���� {
�� .notifygrnull��� ��� null��   { �� | }
�� 
name | l 	 ! " ~���� ~ m   ! "   � � � " T e s t   N o t i f i c a t i o n��  ��   } �� � �
�� 
titl � l 	 % ( ����� � m   % ( � � � � � " T e s t   N o t i f i c a t i o n��  ��   � �� � �
�� 
desc � l 	 + . ����� � m   + . � � � � � * I c o n   f r o m   P O S I X   p a t h .��  ��   � �� � �
�� 
appl � m   / 2 � � � � � 0 G r o w l   A p p l e S c r i p t   S a m p l e � �� ���
�� 
iurl � m   5 8 � � � � � � / S y s t e m / L i b r a r y / C o r e S e r v i c e s / l o g i n w i n d o w . a p p / C o n t e n t s / R e s o u r c e s / L o g O u t . p n g��   z  � � � l  ? ?��������  ��  ��   �  � � � l  ? ?�� � ���   �  	 icon from alias.	    � � � � & 	   i c o n   f r o m   a l i a s . 	 �  � � � I  ? d���� �
�� .notifygrnull��� ��� null��   � �� � �
�� 
name � l 	 A D ����� � m   A D � � � � � " T e s t   N o t i f i c a t i o n��  ��   � �� � �
�� 
titl � l 	 G J ����� � m   G J � � � � � " T e s t   N o t i f i c a t i o n��  ��   � �� � �
�� 
desc � l 	 M P ����� � m   M P � � � � �   I c o n   f r o m   a l i a s .��  ��   � �� � �
�� 
appl � m   Q T � � � � � 0 G r o w l   A p p l e S c r i p t   S a m p l e � �� ���
�� 
iurl � l  W ^ ����� � c   W ^ � � � m   W Z � � � � � � : S y s t e m : L i b r a r y : C o r e S e r v i c e s : l o g i n w i n d o w . a p p : C o n t e n t s : R e s o u r c e s : L o g O u t . p n g � m   Z ]��
�� 
alis��  ��  ��   �  � � � l  e e��������  ��  ��   �  � � � l  e e�� � ���   �  		delay 10    � � � �  	 d e l a y   1 0 �  � � � l  e e��������  ��  ��   �  � � � l  e e�� � ���   �  	Icon Of File    � � � �  	 I c o n   O f   F i l e �  � � � I  e ����� �
�� .notifygrnull��� ��� null��   � �� � �
�� 
name � l 	 g j ����� � m   g j � � � � � " T e s t   N o t i f i c a t i o n��  ��   � �� � �
�� 
titl � l 	 m p ����� � m   m p � � � � � " T e s t   N o t i f i c a t i o n��  ��   � �� � �
�� 
desc � l 	 s v ����� � m   s v � � � � � 4 I c o n   o f   F i l e .   ( a n d   S t i c k y )��  ��   � �� � �
�� 
appl � m   w z � � � � � 0 G r o w l   A p p l e S c r i p t   S a m p l e � �� � �
�� 
ifil � m   } � � � � � �  ~ / � �� ���
�� 
stck � m   � ���
�� boovtrue��   �  � � � l  � ���������  ��  ��   �  � � � I  � ����� �
�� .notifygrnull��� ��� null��   � �� � �
�� 
name � l 	 � � ����� � m   � � � � � � � " T e s t   N o t i f i c a t i o n��  ��   � �� � �
�� 
titl � l 	 � � ���~ � m   � � � � � � � " T e s t   N o t i f i c a t i o n�  �~   � �} � �
�} 
desc � l 	 � � ��|�{ � m   � � � � � � �  M e s s a g e   1�|  �{   � �z � �
�z 
appl � m   � � � � � � � 0 G r o w l   A p p l e S c r i p t   S a m p l e � �y ��x
�y 
iden � m   � � � � � � �  i d�x   �  � � � l  � ��w�v�u�w  �v  �u   �  ��t � I  � ��s�r �
�s .notifygrnull��� ��� null�r   � �q � �
�q 
name � l 	 � � ��p�o � m   � �   � " T e s t   N o t i f i c a t i o n�p  �o   � �n
�n 
titl l 	 � ��m�l m   � � � " T e s t   N o t i f i c a t i o n�m  �l   �k
�k 
desc l 	 � �	�j�i	 m   � �

 �  M e s s a g e   2�j  �i   �h
�h 
appl m   � � � 0 G r o w l   A p p l e S c r i p t   S a m p l e �g�f
�g 
iden m   � � �  i d�f  �t    m     �                                                                                  GRRR  alis    �  Perm                       �JΏH+   ��L	Growl.app                                                      ���Yʎ        ����  	                Debug     �K�      �Z�     ��L ��� �o9 �� ��  ��  =Perm:Users: rudy: Desktop: growl-dev: build: Debug: Growl.app    	 G r o w l . a p p  
  P e r m  3/Users/rudy/Desktop/growl-dev/build/Debug/Growl.app   /Volumes/Perm    ��  ��  ��       �e�e   �d
�d .aevtoappnull  �   � **** �c�b�a�`
�c .aevtoappnull  �   � **** k     �  �_�_  �b  �a     2  �^ =�]�\ W�[�Z�Y `�X�W�V �U ��T � ��S ��R�Q � � � � ��P � � � ��O ��N�M � � � ��L � 
�^ ,0 allnotificationslist allNotificationsList�] 40 enablednotificationslist enabledNotificationsList
�\ 
appl
�[ 
anot
�Z 
dnot
�Y 
iapp�X 
�W .registernull��� ��� null
�V 
name
�U 
titl
�T 
desc
�S 
iurl�R 

�Q .notifygrnull��� ��� null
�P 
alis
�O 
ifil
�N 
stck�M 
�L 
iden�` �� ���lvE�O�kvE�O*��������� O*��a a a a �a a a a  O*�a a a a a �a a a a &a  O*�a a a  a a !�a "a #a $a %ea & O*�a 'a a (a a )�a *a +a ,a  O*�a -a a .a a /�a 0a +a 1a  Uascr  ��ޭ