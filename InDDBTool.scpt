FasdUAS 1.101.10   ��   ��    k             l     ��  ��      InDDBTool for InDesign     � 	 	 .   I n D D B T o o l   f o r   I n D e s i g n   
  
 l     ��  ��      version 2.1     �      v e r s i o n   2 . 1      l     ��������  ��  ��        l     ��  ��    , & created by medul6, Michael Heck, 2013     �   L   c r e a t e d   b y   m e d u l 6 ,   M i c h a e l   H e c k ,   2 0 1 3      l     ��������  ��  ��        l     ��  ��    � z open sourced on May 15th, 2013 on Github > check the LICENSE.txt and README.md in the repository for detailed information     �   �   o p e n   s o u r c e d   o n   M a y   1 5 t h ,   2 0 1 3   o n   G i t h u b   >   c h e c k   t h e   L I C E N S E . t x t   a n d   R E A D M E . m d   i n   t h e   r e p o s i t o r y   f o r   d e t a i l e d   i n f o r m a t i o n      l     ��   ��    4 . https://github.com/medul6/indesign-InDDB-tool      � ! ! \   h t t p s : / / g i t h u b . c o m / m e d u l 6 / i n d e s i g n - I n D D B - t o o l   " # " l     ��������  ��  ��   #  $ % $ l     �� & '��   & z t �������������������������������������������������������������������������������������������������������������������    ' � ( ( �   " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " %  ) * ) l     �� + ,��   +   use statements    , � - -    u s e   s t a t e m e n t s *  . / . x     �� 0����   0 1      ��
�� 
ascr��   /  1 2 1 x    �� 3����   3 4    	�� 4
�� 
frmk 4 m     5 5 � 6 6  F o u n d a t i o n��   2  7 8 7 x    �� 9����   9 2   ��
�� 
osax��   8  : ; : l     ��������  ��  ��   ;  < = < l     �� > ?��   >  properties!    ? � @ @  p r o p e r t i e s ! =  A B A j    �� C�� 0 uuid UUID C m     D D � E E  U U I D B  F G F j    #�� H��  0 functionchoice functionChoice H J    " I I  J�� J m      K K � L L 6 A u s g e w � h l t e   O b j e k t e   t a g g e n !��   G  M N M j   $ &�� O�� 0 chosenlayer chosenLayer O m   $ %��
�� 
msng N  P Q P j   ' )�� R�� &0 chosenlayerrepeat chosenLayerRepeat R m   ' (��
�� 
msng Q  S T S j   * -�� U�� 0 allpageitems allPageItems U J   * ,����   T  V W V j   . 1�� X�� (0 allpageitemsrepeat allPageItemsRepeat X J   . 0����   W  Y Z Y j   2 4�� [��  0 activedocument activeDocument [ m   2 3��
�� 
msng Z  \ ] \ j   5 7�� ^�� 0 opendocuments openDocuments ^ m   5 6��
�� 
msng ]  _ ` _ j   8 :�� a��  0 otherdocuments otherDocuments a m   8 9��
�� 
msng `  b c b j   ; =�� d�� 00 deduplicatedlayernames deduplicatedLayerNames d m   ; <��
�� 
msng c  e f e j   > @�� g�� (0 layerlistactivedoc layerListActiveDoc g m   > ?��
�� 
msng f  h i h j   A C�� j�� 00 layernamelistactivedoc layerNameListActiveDoc j m   A B��
�� 
msng i  k l k j   D F�� m�� 0 stopbool stopBool m m   D E��
�� boovfals l  n o n j   G I�� p�� 0 theselection theSelection p m   G H��
�� 
msng o  q r q j   J L�� s�� 0 
mygeometry 
myGeometry s m   J K��
�� 
msng r  t u t j   M Q�� v�� 0 mylayer myLayer v m   M N��
�� 
msng u  w x w j   R V�� y�� 0 xvalue xValue y m   R S��
�� 
msng x  z { z j   W [�� |�� 0 yvalue yValue | m   W X��
�� 
msng {  } ~ } l     ��������  ��  ��   ~   �  j   \ `�� ��� 0 activewindow activeWindow � m   \ ]��
�� 
msng �  � � � j   a e�� ��� 0 otherwindows otherWindows � m   a b��
�� 
msng �  � � � j   f j�� ��� 0 openwindows openWindows � m   f g��
�� 
msng �  � � � j   k o�� ��� 0 
activepage 
activePage � m   k l��
�� 
msng �  � � � j   p t�� ��� 0 thezoom theZoom � m   p q��
�� 
msng �  � � � l     ��������  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � z t �������������������������������������������������������������������������������������������������������������������    � � � � �   " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " �  � � � l     ��������  ��  ��   �  � � � l   � ����� � O    � � � � k    � �  � � � l   ��������  ��  ��   �  � � � l   �� � ���   � C = set up some informations from the current state as variables    � � � � z   s e t   u p   s o m e   i n f o r m a t i o n s   f r o m   t h e   c u r r e n t   s t a t e   a s   v a r i a b l e s �  � � � r     � � � 1    ��
�� 
pacd � n      � � � o    ����  0 activedocument activeDocument �  f     �  � � � r     � � � 2    ��
�� 
docu � n      � � � o    ���� 0 opendocuments openDocuments �  f     �  � � � r    . � � � 6   * � � � 2    ��
�� 
docu � >   ) � � � 1    ��
�� 
ID   � n    ( � � � 1   & (��
�� 
ID   � o     &����  0 activedocument activeDocument � n      � � � o   + -����  0 otherdocuments otherDocuments �  f   * + �  � � � r   / : � � � n   / 6 � � � 2   4 6��
�� 
layr � o   / 4����  0 activedocument activeDocument � n      � � � o   7 9���� (0 layerlistactivedoc layerListActiveDoc �  f   6 7 �  � � � r   ; @ � � � m   ; <��
�� boovfals � n      � � � o   = ?���� 0 stopbool stopBool �  f   < = �  � � � r   A \ � � � J   A E � �  � � � m   A B����   �  ��� � m   B C����  ��   � J       � �  � � � o      ���� 0 xvalue xValue �  ��� � o      ���� 0 yvalue yValue��   �  � � � l  ] f � � � � r   ] f � � � n   ] d � � � 1   b d��
�� 
sele � o   ] b����  0 activedocument activeDocument � o      ���� ,0 theoriginalselection theOriginalSelection � x r this should used by other functions, but I had no time to do that, though, there is nothing really wrong here ...    � � � � �   t h i s   s h o u l d   u s e d   b y   o t h e r   f u n c t i o n s ,   b u t   I   h a d   n o   t i m e   t o   d o   t h a t ,   t h o u g h ,   t h e r e   i s   n o t h i n g   r e a l l y   w r o n g   h e r e   . . . �  � � � r   g r � � � 1   g l��
�� 
pacw � o      ���� 0 activewindow activeWindow �  � � � r   s ~ � � � 2   s x��
�� 
cwin � o      ���� 0 openwindows openWindows �  � � � r    � � � � 6   � � � � 2    ���
�� 
cwin � >  � � � � � n  � � � � � 1   � ���
�� 
ID   � 1   � ���
�� 
pare � n  � � � � � 1   � ���
�� 
ID   � n  � � � � � 1   � ��
� 
pare � o   � ��~�~ 0 activewindow activeWindow � o      �}�} 0 otherwindows otherWindows �  � � � l  � ��| � ��|   � 5 /set theZoom to zoom percentage of active window    � � � � ^ s e t   t h e Z o o m   t o   z o o m   p e r c e n t a g e   o f   a c t i v e   w i n d o w �  �  � l  � ��{�z�y�{  �z  �y     l  � ��x�w�v�x  �w  �v    l  � ��u�u   H B initialize some lists (to be filled in the next two repeat loops)    � �   i n i t i a l i z e   s o m e   l i s t s   ( t o   b e   f i l l e d   i n   t h e   n e x t   t w o   r e p e a t   l o o p s ) 	 r   � �

 J   � ��t�t   o      �s�s 0 	layerlist 	layerList	  r   � � J   � ��r�r   o      �q�q 0 layernamelist layerNameList  r   � � J   � ��p�p   o      �o�o 00 layernamelistactivedoc layerNameListActiveDoc  l  � ��n�m�l�n  �m  �l    l  � ��k�k   e _ fills the layerList with every layer from every document (but there might be duplicates in it)    � �   f i l l s   t h e   l a y e r L i s t   w i t h   e v e r y   l a y e r   f r o m   e v e r y   d o c u m e n t   ( b u t   t h e r e   m i g h t   b e   d u p l i c a t e s   i n   i t )  Y   � ��j�i r   � � !  b   � �"#" o   � ��h�h 0 	layerlist 	layerList# n   � �$%$ 2   � ��g
�g 
layr% n   � �&'& 4   � ��f(
�f 
cobj( o   � ��e�e 0 i  ' o   � ��d�d 0 opendocuments openDocuments! o      �c�c 0 	layerlist 	layerList�j 0 i   m   � ��b�b  I  � ��a)�`
�a .corecnte****       ****) o   � ��_�_ 0 opendocuments openDocuments�`  �i   *+* l  � ��^�]�\�^  �]  �\  + ,-, l  � ��[./�[  . d ^ creates a new list but with readable names instead of IDs (to present them later to the user)   / �00 �   c r e a t e s   a   n e w   l i s t   b u t   w i t h   r e a d a b l e   n a m e s   i n s t e a d   o f   I D s   ( t o   p r e s e n t   t h e m   l a t e r   t o   t h e   u s e r )- 121 Y   �
3�Z45�Y3 r   �676 b   �898 o   � ��X�X 0 layernamelist layerNameList9 n   � :;: 1   � �W
�W 
pnam; n   � �<=< 4   � ��V>
�V 
cobj> o   � ��U�U 0 i  = o   � ��T�T 0 	layerlist 	layerList7 o      �S�S 0 layernamelist layerNameList�Z 0 i  4 m   � ��R�R 5 I  � ��Q?�P
�Q .corecnte****       ****? o   � ��O�O 0 	layerlist 	layerList�P  �Y  2 @A@ Y  :B�NCD�MB r  5EFE b  /GHG o  "�L�L 00 layernamelistactivedoc layerNameListActiveDocH n  ".IJI 1  *.�K
�K 
pnamJ n  "*KLK 4  '*�JM
�J 
cobjM o  ()�I�I 0 i  L o  "'�H�H (0 layerlistactivedoc layerListActiveDocF o      �G�G 00 layernamelistactivedoc layerNameListActiveDoc�N 0 i  C m  �F�F D I �EN�D
�E .corecnte****       ****N o  �C�C (0 layerlistactivedoc layerListActiveDoc�D  �M  A OPO l ;;�B�A�@�B  �A  �@  P QRQ l ;;�?ST�?  S T N the deduplicting function removes the duplicates from the readable names list   T �UU �   t h e   d e d u p l i c t i n g   f u n c t i o n   r e m o v e s   t h e   d u p l i c a t e s   f r o m   t h e   r e a d a b l e   n a m e s   l i s tR VWV n  ;GXYX I  <G�>Z�=�> 0 deduplicator  Z [�<[ n  <C\]\ 1  ?C�;
�; 
rvse] o  <?�:�: 0 layernamelist layerNameList�<  �=  Y  f  ;<W ^_^ l HH�9�8�7�9  �8  �7  _ `a` l HH�6bc�6  b ` Z this will display a dialog in which the user can select the desired function of this tool   c �dd �   t h i s   w i l l   d i s p l a y   a   d i a l o g   i n   w h i c h   t h e   u s e r   c a n   s e l e c t   t h e   d e s i r e d   f u n c t i o n   o f   t h i s   t o o la efe n HMghg I  IM�5�4�3�5 "0 functionchooser functionChooser�4  �3  h  f  HIf iji l NN�2kl�2  k ! my giveAllPageItemsAnUUID()   l �mm 6 m y   g i v e A l l P a g e I t e m s A n U U I D ( )j non l NN�1�0�/�1  �0  �/  o pqp Z  N}rs�.�-r = NUtut o  NS�,�, 0 stopbool stopBoolu m  ST�+
�+ boovtrues k  Xyvv wxw l XX�*yz�*  y  displayTheEnd() of me   z �{{ * d i s p l a y T h e E n d ( )   o f   m ex |}| l XX�)~�)  ~ T Nmy displayNotificationShort("Fertig!", ((item 1 of functionChoice) as string))    ��� � m y   d i s p l a y N o t i f i c a t i o n S h o r t ( " F e r t i g ! " ,   ( ( i t e m   1   o f   f u n c t i o n C h o i c e )   a s   s t r i n g ) )} ��(� n Xy��� I  Yy�'��&�' 20 displaynotificationlong displayNotificationLong� ��� m  Y\�� ���  F e r t i g !� ��� l \h��%�$� c  \h��� l \d��#�"� n  \d��� 4  ad�!�
�! 
cobj� m  bc� �  � o  \a��  0 functionchoice functionChoice�#  �"  � m  dg�
� 
TEXT�%  �$  � ��� b  hu��� l hq���� c  hq��� l hm���� I hm���
� .corecnte****       ****� o  hi�� ,0 theoriginalselection theOriginalSelection�  �  �  � m  mp�
� 
TEXT�  �  � m  qt�� ���    O b j e k t ( e )�  �&  �  f  XY�(  �.  �-  q ��� l ~~����  �  �  � ��� l ~~����  �  �  �   � 5     ���
� 
capp� m    �� ��� $ c o m . a d o b e . I n D e s i g n
� kfrmID  ��  ��   � ��� l     ��
�	�  �
  �	  � ��� l     ����  � z t �������������������������������������������������������������������������������������������������������������������   � ��� �   " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " "� ��� l     ����  �  �  � ��� i   u x��� I      ���� 0 uuidgenerator UUIDGenerator�  �  � k     �� ��� l     ����  � . (set my UUID to do shell script "uuidgen"   � ��� P s e t   m y   U U I D   t o   d o   s h e l l   s c r i p t   " u u i d g e n "� �� � r     ��� c     ��� n    ��� I    �������� 0 
uuidstring 
UUIDString��  ��  � n    ��� I    �������� 0 uuid UUID��  ��  � n    ��� o    ���� 0 nsuuid NSUUID� m     ��
�� misccura� m    ��
�� 
TEXT� n     ��� o    ���� 0 uuid UUID�  f    �   � ��� l     ��������  ��  ��  � ��� l     ������  � z t �������������������������������������������������������������������������������������������������������������������   � ��� �   " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " "� ��� l     ��������  ��  ��  � ��� i   y |��� I      �������� 40 jumptofirstuuidduplicate jumpToFirstUUIDDuplicate��  ��  � k     c�� ��� O     a��� k    `�� ��� r    ��� n    ��� 2    ��
�� 
pitm� 1    ��
�� 
pacd� n     ��� o    ���� 0 allpageitems allPageItems�  f    � ��� l   ��������  ��  ��  � ���� Y    `�������� l  " [���� k   " [�� ��� r   " ,��� n   " *��� 1   ( *��
�� 
ptag� n  " (��� n  # (��� 4   % (���
�� 
cobj� o   & '���� 0 x  � o   # %���� 0 allpageitems allPageItems�  f   " #� o      ���� 0 
repeatuuid 
repeatUUID� ��� r   - =��� l  - ;������ 6  - ;��� n   - 2��� 2   0 2��
�� 
pitm� 1   - 0��
�� 
pacd� =  3 :��� 1   4 6��
�� 
ptag� o   7 9���� 0 
repeatuuid 
repeatUUID��  ��  � o      ���� *0 duplicaterepeatuuid duplicateRepeatUUID� ���� Z   > [������� ?  > E   l  > C���� I  > C����
�� .corecnte****       **** o   > ?���� *0 duplicaterepeatuuid duplicateRepeatUUID��  ��  ��   m   C D���� � k   H W  l  H H����    beep (1)    �		  b e e p   ( 1 ) 

 r   H T n  H N n  I N 4   K N��
�� 
cobj o   L M���� 0 x   o   I K���� 0 allpageitems allPageItems  f   H I n       1   Q S��
�� 
sele 1   N Q��
�� 
pacd �� L   U W����  ��  ��  ��  ��  � &   this iterates through all UUIDs   � � @   t h i s   i t e r a t e s   t h r o u g h   a l l   U U I D s�� 0 x  � m    ���� � I   ����
�� .corecnte****       **** n    o    ���� 0 allpageitems allPageItems  f    ��  ��  ��  � 5     ����
�� 
capp m     � $ c o m . a d o b e . I n D e s i g n
�� kfrmID  � �� l  b b��������  ��  ��  ��  �  l     ��������  ��  ��    !  l     ��"#��  " z t �������������������������������������������������������������������������������������������������������������������   # �$$ �   " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " "! %&% l     ��������  ��  ��  & '(' i   } �)*) I      �������� "0 settheselection setTheSelection��  ��  * O    8+,+ k   7-- ./. l   ��������  ��  ��  / 010 r    232 n    454 1    ��
�� 
pnam5 n    676 1    ��
�� 
pacp7 1    ��
�� 
pacw3 n     898 o    ���� 0 
activepage 
activePage9  f    1 :;: r    <=< n    >?> 1    ��
�� 
sele? o    ����  0 activedocument activeDocument= n     @A@ o    ���� 0 theselection theSelectionA  f    ; BCB l     ��������  ��  ��  C DED l     ��������  ��  ��  E FGF Z    5HIJKH A     +LML l    )N����N I    )��O��
�� .corecnte****       ****O o     %���� 0 theselection theSelection��  ��  ��  M m   ) *���� I k   . GPP QRQ I  . ?��ST
�� .sysodlogaskr        TEXTS b   . 3UVU b   . 1WXW m   . /YY �ZZ 2 E s   i s t   n i c h t s   a u s g e w � h l t !X o   / 0��
�� 
ret V m   1 2[[ �\\ 6 B i t t e   E I N   O b j e k t   a u s w � h l e n .T ��]^
�� 
btns] m   4 5__ �``  O K^ ��a��
�� 
dflta m   6 9bb �cc  O K��  R d��d r   @ Gefe m   @ A��
�� boovfalsf n     ghg o   B F���� 0 stopbool stopBoolh  f   A B��  J iji ?   J Uklk l  J Sm����m I  J S��n��
�� .corecnte****       ****n o   J O���� 0 theselection theSelection��  ��  ��  l m   S T���� j o��o k   X wpp qrq I  X o��st
�� .sysodlogaskr        TEXTs b   X auvu b   X ]wxw m   X [yy �zz F E s   s i n d   m e h r e r e   O b j e k t e   a u s g e w � h l t !x o   [ \��
�� 
ret v m   ] `{{ �|| 6 B i t t e   E I N   O b j e k t   a u s w � h l e n .t ��}~
�� 
btns} m   b e ���  O K~ �����
�� 
dflt� m   f i�� ���  O K��  r ���� r   p w��� m   p q��
�� boovfals� n     ��� o   r v���� 0 stopbool stopBool�  f   q r��  ��  K k   z5�� ��� l  z z������  � F @set my theSelection to every item of selection of activeDocument   � ��� � s e t   m y   t h e S e l e c t i o n   t o   e v e r y   i t e m   o f   s e l e c t i o n   o f   a c t i v e D o c u m e n t� ��� l  z z������  � 3 -repeat with x from 1 to count my theSelection   � ��� Z r e p e a t   w i t h   x   f r o m   1   t o   c o u n t   m y   t h e S e l e c t i o n� ��� r   z ���� n   z ���� 1   � ���
�� 
ptag� n   z ���� 4   } ����
�� 
cobj� m   � ����� � n  z }��� o   { }�� 0 theselection theSelection�  f   z {� n     ��� o   � ��~�~ 0 uuid UUID�  f   � �� ��� Y   � ���}���|� l  � ����� k   � ��� ��� r   � ���� n   � ���� 4   � ��{�
�{ 
page� o   � ��z�z 0 
activepage 
activePage� n   � ���� 1   � ��y
�y 
pare� n  � ���� 4   � ��x�
�x 
cobj� o   � ��w�w 0 x  � o   � ��v�v 0 openwindows openWindows� n      ��� 1   � ��u
�u 
pacp� n  � ���� 4   � ��t�
�t 
cobj� o   � ��s�s 0 x  � o   � ��r�r 0 openwindows openWindows� ��� O   � ���� k   � ��� ��� l  � ��q���q  �  select nothing   � ���  s e l e c t   n o t h i n g� ��p� I  � ��o�n�
�o .K2  zmtonull���     Lwin�n  � �m��l
�m 
givn� m   � ��k
�k zopezfts�l  �p  � n  � ���� 4   � ��j�
�j 
cobj� o   � ��i�i 0 x  � o   � ��h�h 0 openwindows openWindows� ��g� l  � ��f�e�d�f  �e  �d  �g  � ; 5 this iterates through the open windows (one or more)   � ��� j   t h i s   i t e r a t e s   t h r o u g h   t h e   o p e n   w i n d o w s   ( o n e   o r   m o r e )�} 0 x  � m   � ��c�c � I  � ��b��a
�b .corecnte****       ****� o   � ��`�` 0 openwindows openWindows�a  �|  � ��� l  � ��_�^�]�_  �^  �]  � ��� Y   �-��\���[� O   �(��� k  '�� ��� l �Z���Z  � X Rselect (every page item of my openDocuments's item y whose label contains my UUID)   � ��� � s e l e c t   ( e v e r y   p a g e   i t e m   o f   m y   o p e n D o c u m e n t s ' s   i t e m   y   w h o s e   l a b e l   c o n t a i n s   m y   U U I D )� ��� l �Y���Y  � N Hset selection of openDocuments's item y to first item of every page item   � ��� � s e t   s e l e c t i o n   o f   o p e n D o c u m e n t s ' s   i t e m   y   t o   f i r s t   i t e m   o f   e v e r y   p a g e   i t e m� ��X� r  '��� l #��W�V� 6 #��� n  ��� 2  �U
�U 
pitm� n ��� n ��� 4  	�T�
�T 
cobj� o  �S�S 0 y  � o  	�R�R 0 opendocuments openDocuments�  f  � E  "��� 1  �Q
�Q 
ptag� n !��� o  !�P�P 0 uuid UUID�  f  �W  �V  � 1  #&�O
�O 
sele�X  � n  ���� 4   ��N�
�N 
cobj� o   � �M�M 0 y  � o   � ��L�L 0 opendocuments openDocuments�\ 0 y  � m   � ��K�K � I  � ��J��I
�J .corecnte****       ****� n  � ���� o   � ��H�H 0 opendocuments openDocuments�  f   � ��I  �[  � ��� l ..�G���G  �  
end repeat   � ���  e n d   r e p e a t� ��F� r  .5� � m  ./�E
�E boovtrue  n      o  04�D�D 0 stopbool stopBool  f  /0�F  G  l 66�C�B�A�C  �B  �A   �@ l 66�?�>�=�?  �>  �=  �@  , 5     �<�;
�< 
capp m     � $ c o m . a d o b e . I n D e s i g n
�; kfrmID  ( 	
	 l     �:�9�8�:  �9  �8  
  l     �7�7   z t �������������������������������������������������������������������������������������������������������������������    � �   " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " "  l     �6�5�4�6  �5  �4    i   � � I      �3�2�1�3 00 giveallpageitemsanuuid giveAllPageItemsAnUUID�2  �1   k     B  O     < k    ;  l     r    !"! n    #$# 1    �0
�0 
aPgi$ o    �/�/  0 activedocument activeDocument" n     %&% o    �.�. 0 allpageitems allPageItems&  f     , &ich glaube das hier sind ALLE Objekte!     �'' L i c h   g l a u b e   d a s   h i e r   s i n d   A L L E   O b j e k t e ! ()( l   �-�,�+�-  �,  �+  ) *�** Y    ;+�),-�(+ k   $ 6.. /0/ n  $ )121 I   % )�'�&�%�' 0 uuidgenerator UUIDGenerator�&  �%  2  f   $ %0 3�$3 r   * 6454 n  * -676 o   + -�#�# 0 uuid UUID7  f   * +5 n      898 1   3 5�"
�" 
ptag9 n   - 3:;: 4   0 3�!<
�! 
cobj< o   1 2� �  0 i  ; n  - 0=>= o   . 0�� 0 allpageitems allPageItems>  f   - .�$  �) 0 i  , m    �� - I   �?�
� .corecnte****       ****? n   @A@ o    �� 0 allpageitems allPageItemsA  f    �  �(  �*   5     �B�
� 
cappB m    CC �DD $ c o m . a d o b e . I n D e s i g n
� kfrmID   EFE l  = =����  �  �  F G�G r   = BHIH m   = >�
� boovtrueI n     JKJ o   ? A�� 0 stopbool stopBoolK  f   > ?�   LML l     ����  �  �  M NON l     �PQ�  P z t �������������������������������������������������������������������������������������������������������������������   Q �RR �   " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " "O STS l     ����  �  �  T UVU i   � �WXW I      ��
�	� >0 giveallpageitemsonlayeranuuid giveAllPageItemsOnLayerAnUUID�
  �	  X k     �YY Z[Z O     �\]\ k    �^^ _`_ l   ����  �  �  ` aba r    cdc c    efe b    ghg o    ��  0 functionchoice functionChoiceh m    ii �jj  !f m    �
� 
TEXTd o      �� 0 
buttonname 
buttonNameb klk r    1mnm I   +�op
� .gtqpchltns    @   @ ns  o l   q�� q n    rsr 1    ��
�� 
rvses o    ���� 00 deduplicatedlayernames deduplicatedLayerNames�  �   p ��tu
�� 
inSLt o    !���� 0 chosenlayer chosenLayeru ��vw
�� 
prmpv m   " #xx �yy  E b e n e   w � h l e n :w ��z{
�� 
okbtz o   $ %���� 0 
buttonname 
buttonName{ ��|��
�� 
mlsl| m   & '��
�� boovtrue��  n o      ���� 0 chosenlayer chosenLayerl }~} l  2 2��������  ��  ��  ~ � Z   2 �������� >  2 5��� l  2 3������ 1   2 3��
�� 
rslt��  ��  � m   3 4��
�� boovfals� k   8 ��� ��� Y   8 ��������� k   H ��� ��� r   H X��� n   H R��� 4   M R���
�� 
cobj� o   P Q���� 0 i  � l  H M������ o   H M���� 0 chosenlayer chosenLayer��  ��  � n     ��� o   S W���� &0 chosenlayerrepeat chosenLayerRepeat�  f   R S� ��� l  Y Y��������  ��  ��  � ��� r   Y ���� l  Y {������ 6  Y {��� n   Y f��� 2   b f��
�� 
cobj� n   Y b��� 1   ^ b��
�� 
aPgi� o   Y ^����  0 activedocument activeDocument� =  i z��� n   j r��� 1   n r��
�� 
pnam� n  j n��� 1   j n��
�� 
pilr�  g   j j� o   s y���� &0 chosenlayerrepeat chosenLayerRepeat��  ��  � n     ��� o   | ����� (0 allpageitemsrepeat allPageItemsRepeat�  f   { |� ��� l  � ���������  ��  ��  � ��� Y   � ��������� k   � ��� ��� n  � ���� I   � ��������� 0 uuidgenerator UUIDGenerator��  ��  �  f   � �� ���� r   � ���� n  � ���� o   � ����� 0 uuid UUID�  f   � �� n      ��� 1   � ���
�� 
ptag� n   � ���� 4   � ����
�� 
cobj� o   � ����� 0 i  � n  � ���� o   � ����� (0 allpageitemsrepeat allPageItemsRepeat�  f   � ���  �� 0 i  � m   � ����� � I  � ������
�� .corecnte****       ****� n  � ���� o   � ����� (0 allpageitemsrepeat allPageItemsRepeat�  f   � ���  ��  � ���� l  � ���������  ��  ��  ��  �� 0 i  � m   ; <���� � I  < C�����
�� .corecnte****       ****� n  < ?��� o   = ?���� 0 chosenlayer chosenLayer�  f   < =��  ��  � ���� r   � ���� m   � ���
�� boovtrue� n     ��� o   � ����� 0 stopbool stopBool�  f   � ���  ��  ��  � ���� l  � ���������  ��  ��  ��  ] 5     �����
�� 
capp� m    �� ��� $ c o m . a d o b e . I n D e s i g n
�� kfrmID  [ ��� l  � ���������  ��  ��  � ���� r   � ���� m   � ���
�� boovtrue� n     ��� o   � ����� 0 stopbool stopBool�  f   � ���  V ��� l     ��������  ��  ��  � ��� l     ��������  ��  ��  � ��� l     ������  � z t �������������������������������������������������������������������������������������������������������������������   � ��� �   " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " "� ��� l     ��������  ��  ��  � ��� i   � ���� I      �������� 40 deletetheselectedobjects deleteTheSelectedObjects��  ��  � O     ���� k    ��� ��� l   ��������  ��  ��  � ��� r    ��� n    ��� 1    ��
�� 
sele� o    ����  0 activedocument activeDocument� o      ���� 0 theselection theSelection� ���� Z    ������� A    !��� l   ������ I   �����
�� .corecnte****       ****� o    ���� 0 theselection theSelection��  ��  ��  � m     ���� � k   $ 7�� ��� I  $ 1�� 
�� .sysodlogaskr        TEXT  b   $ ) b   $ ' m   $ % � 2 E s   i s t   n i c h t s   a u s g e w � h l t ! o   % &��
�� 
ret  m   ' ( �		 R B i t t e   e i n   o d e r   m e h r e r e   O b j e k t e   a u s w � h l e n . ��

�� 
btns
 m   * + �  O K ����
�� 
dflt m   , - �  O K��  � �� r   2 7 m   2 3��
�� boovfals n      o   4 6���� 0 stopbool stopBool  f   3 4��  ��  � k   : �  r   : I n   : C 2   A C��
�� 
cobj n   : A 1   ? A��
�� 
sele o   : ?����  0 activedocument activeDocument n       o   D H���� 0 theselection theSelection   f   C D !"! Y   J �#��$%��# k   \ �&& '(' r   \ n)*) n   \ h+,+ 1   d h��
�� 
ptag, n   \ d-.- 4   a d��/
�� 
cobj/ o   b c���� 0 x  . n  \ a010 o   ] a���� 0 theselection theSelection1  f   \ ]* n     232 o   i m���� 0 uuid UUID3  f   h i( 4��4 Y   o �5�67�~5 Q   � �89�}8 I  � ��|:�{
�| .CoRedelonull���     obj : l  � �;�z�y; 6  � �<=< n   � �>?> 2   � ��x
�x 
pitm? n  � �@A@ n  � �BCB 4   � ��wD
�w 
cobjD o   � ��v�v 0 y  C o   � ��u�u 0 opendocuments openDocumentsA  f   � �= E   � �EFE 1   � ��t
�t 
ptagF n  � �GHG o   � ��s�s 0 uuid UUIDH  f   � ��z  �y  �{  9 R      �r�q�p
�r .ascrerr ****      � ****�q  �p  �}  � 0 y  6 m   r s�o�o 7 I  s |�nI�m
�n .corecnte****       ****I n  s xJKJ o   t x�l�l 0 opendocuments openDocumentsK  f   s t�m  �~  ��  �� 0 x  $ m   M N�k�k % I  N W�jL�i
�j .corecnte****       ****L n  N SMNM o   O S�h�h 0 theselection theSelectionN  f   N O�i  ��  " O�gO r   � �PQP m   � ��f
�f boovtrueQ n     RSR o   � ��e�e 0 stopbool stopBoolS  f   � ��g  ��  � 5     �dT�c
�d 
cappT m    UU �VV $ c o m . a d o b e . I n D e s i g n
�c kfrmID  � WXW l     �b�a�`�b  �a  �`  X YZY l     �_[\�_  [ z t �������������������������������������������������������������������������������������������������������������������   \ �]] �   " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " "Z ^_^ l     �^�]�\�^  �]  �\  _ `a` l     �[bc�[  b B <on transferUUIDsFromATaggedSourceDocumentToATargetDocument()   c �dd x o n   t r a n s f e r U U I D s F r o m A T a g g e d S o u r c e D o c u m e n t T o A T a r g e t D o c u m e n t ( )a efe l     �Zgh�Z  g / )	tell application id "com.adobe.InDesign"   h �ii R 	 t e l l   a p p l i c a t i o n   i d   " c o m . a d o b e . I n D e s i g n "f jkj l     �Ylm�Y  l B <		set allPageItemsSource to all page items of activeDocument   m �nn x 	 	 s e t   a l l P a g e I t e m s S o u r c e   t o   a l l   p a g e   i t e m s   o f   a c t i v e D o c u m e n tk opo l     �Xqr�X  q K E		set allPageItemsTarget to all page items of otherDocuments's item 1   r �ss � 	 	 s e t   a l l P a g e I t e m s T a r g e t   t o   a l l   p a g e   i t e m s   o f   o t h e r D o c u m e n t s ' s   i t e m   1p tut l     �Wvw�W  v  		   w �xx  	 	u yzy l     �V{|�V  { 1 +		set itemCount to count allPageItemsSource   | �}} V 	 	 s e t   i t e m C o u n t   t o   c o u n t   a l l P a g e I t e m s S o u r c ez ~~ l     �U���U  �  		   � ���  	 	 ��� l     �T���T  � 8 2		repeat with i from 1 to count allPageItemsSource   � ��� d 	 	 r e p e a t   w i t h   i   f r o m   1   t o   c o u n t   a l l P a g e I t e m s S o u r c e� ��� l     �S���S  � ; 5			set loopINDID to id of allPageItemsSource's item i   � ��� j 	 	 	 s e t   l o o p I N D I D   t o   i d   o f   a l l P a g e I t e m s S o u r c e ' s   i t e m   i� ��� l     �R���R  � = 7			set loopUUID to label of allPageItemsSource's item i   � ��� n 	 	 	 s e t   l o o p U U I D   t o   l a b e l   o f   a l l P a g e I t e m s S o u r c e ' s   i t e m   i� ��� l     �Q���Q  �  			try   � ���  	 	 	 t r y� ��� l     �P���P  � m g				set targetObject to (first item of all page items of otherDocuments's item 1 whose id is loopINDID)   � ��� � 	 	 	 	 s e t   t a r g e t O b j e c t   t o   ( f i r s t   i t e m   o f   a l l   p a g e   i t e m s   o f   o t h e r D o c u m e n t s ' s   i t e m   1   w h o s e   i d   i s   l o o p I N D I D )� ��� l     �O���O  � / )				set label of targetObject to loopUUID   � ��� R 	 	 	 	 s e t   l a b e l   o f   t a r g e t O b j e c t   t o   l o o p U U I D� ��� l     �N���N  �  
			end try   � ���  	 	 	 e n d   t r y� ��� l     �M���M  �  		end repeat   � ���  	 	 e n d   r e p e a t� ��� l     �L���L  �  		end tell   � ���  	 e n d   t e l l� ��� l     �K���K  �  	set my stopBool to true   � ��� 0 	 s e t   m y   s t o p B o o l   t o   t r u e� ��� l     �J���J  � A ;end transferUUIDsFromATaggedSourceDocumentToATargetDocument   � ��� v e n d   t r a n s f e r U U I D s F r o m A T a g g e d S o u r c e D o c u m e n t T o A T a r g e t D o c u m e n t� ��� l     �I�H�G�I  �H  �G  � ��� l     �F���F  � z t �������������������������������������������������������������������������������������������������������������������   � ��� �   " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " "� ��� l     �E�D�C�E  �D  �C  � ��� i   � ���� I      �B�A�@�B  0 deletealluuids deleteAllUUIDs�A  �@  � k     :�� ��� O     4��� k    3�� ��� l   ���� r    ��� n    ��� 1    �?
�? 
aPgi� o    �>�>  0 activedocument activeDocument� n     ��� o    �=�= 0 allpageitems allPageItems�  f    � , &ich glaube das hier sind ALLE Objekte!   � ��� L i c h   g l a u b e   d a s   h i e r   s i n d   A L L E   O b j e k t e !� ��� l   �<�;�:�<  �;  �:  � ��9� Y    3��8���7� r   $ .��� m   $ %�� ���  � n      ��� 1   + -�6
�6 
ptag� n   % +��� 4   ( +�5�
�5 
cobj� o   ) *�4�4 0 i  � n  % (��� o   & (�3�3 0 allpageitems allPageItems�  f   % &�8 0 i  � m    �2�2 � I   �1��0
�1 .corecnte****       ****� n   ��� o    �/�/ 0 allpageitems allPageItems�  f    �0  �7  �9  � 5     �.��-
�. 
capp� m    �� ��� $ c o m . a d o b e . I n D e s i g n
�- kfrmID  � ��,� r   5 :��� m   5 6�+
�+ boovtrue� n     ��� o   7 9�*�* 0 stopbool stopBool�  f   6 7�,  � ��� l     �)�(�'�)  �(  �'  � ��� l     �&���&  � z t �������������������������������������������������������������������������������������������������������������������   � ��� �   " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " "� ��� l     �%�$�#�%  �$  �#  � ��� i   � �   I      �"�!� �" (0 tagselectedobjects tagSelectedObjects�!  �    O     � k    �  r     n    	
	 1    �
� 
sele
 o    ��  0 activedocument activeDocument n      o    �� 0 theselection theSelection  f      l   ����  �  �    Z    �� A     l   �� I   ��
� .corecnte****       **** n    o    �� 0 theselection theSelection  f    �  �  �   m    ��  k     3  I    -�
� .sysodlogaskr        TEXT b     %  b     #!"! m     !## �$$ 2 E s   i s t   n i c h t s   a u s g e w � h l t !" o   ! "�
� 
ret   m   # $%% �&& 6 B i t t e   E I N   O b j e k t   a u s w � h l e n . �'(
� 
btns' m   & ')) �**  O K( �+�
� 
dflt+ m   ( ),, �--  O K�   .�. r   . 3/0/ m   . /�
� boovfals0 n     121 o   0 2�� 0 stopbool stopBool2  f   / 0�  �   k   6 �33 454 Y   6 �6�
78�	6 k   F �99 :;: Z   F �<=��< =   F V>?> n   F R@A@ m   N R�
� 
pclsA n   F NBCB 4   I N�D
� 
cobjD o   L M�� 0 x  C n  F IEFE o   G I�� 0 theselection theSelectionF  f   F G? m   R U�
� 
grop= Y   Y �G�HI� G k   r �JJ KLK n  r wMNM I   s w�������� 0 uuidgenerator UUIDGenerator��  ��  N  f   r sL O��O r   x �PQP n  x }RSR o   y }���� 0 uuid UUIDS  f   x yQ n      TUT 1   � ���
�� 
ptagU n   } �VWV 4   � ���X
�� 
pitmX o   � ����� 0 y  W n   } �YZY 4   � ���[
�� 
cobj[ o   � ����� 0 x  Z n  } �\]\ o   ~ ����� 0 theselection theSelection]  f   } ~��  � 0 y  H m   \ ]���� I I  ] m��^��
�� .corecnte****       ****^ l  ] i_����_ n   ] i`a` 2   e i��
�� 
pitma n   ] ebcb 4   ` e��d
�� 
cobjd o   c d���� 0 x  c n  ] `efe o   ^ `���� 0 theselection theSelectionf  f   ] ^��  ��  ��  �   �  �  ; ghg n  � �iji I   � ��������� 0 uuidgenerator UUIDGenerator��  ��  j  f   � �h k��k r   � �lml n  � �non o   � ����� 0 uuid UUIDo  f   � �m n      pqp 1   � ���
�� 
ptagq n   � �rsr 4   � ���t
�� 
cobjt o   � ����� 0 x  s n  � �uvu o   � ����� 0 theselection theSelectionv  f   � ���  �
 0 x  7 m   9 :���� 8 I  : A��w��
�� .corecnte****       ****w n  : =xyx o   ; =���� 0 theselection theSelectiony  f   : ;��  �	  5 z��z r   � �{|{ m   � ���
�� boovtrue| n     }~} o   � ����� 0 stopbool stopBool~  f   � ���   �� l  � ���������  ��  ��  ��   5     �����
�� 
capp� m    �� ��� $ c o m . a d o b e . I n D e s i g n
�� kfrmID  � ��� l     ��������  ��  ��  � ��� l     ������  � z t �������������������������������������������������������������������������������������������������������������������   � ��� �   " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " "� ��� l     ��������  ��  ��  � ��� i   � ���� I      �������� ,0 untagselectedobjects untagSelectedObjects��  ��  � O     ���� k    ��� ��� r    ��� n    ��� 1    ��
�� 
sele� o    ����  0 activedocument activeDocument� n     ��� o    ���� 0 theselection theSelection�  f    � ��� l   ��������  ��  ��  � ��� Z    ������� A    ��� l   ������ I   �����
�� .corecnte****       ****� n   ��� o    ���� 0 theselection theSelection�  f    ��  ��  ��  � m    ���� � k     3�� ��� I    -����
�� .sysodlogaskr        TEXT� b     %��� b     #��� m     !�� ��� 2 E s   i s t   n i c h t s   a u s g e w � h l t !� o   ! "��
�� 
ret � m   # $�� ��� 6 B i t t e   E I N   O b j e k t   a u s w � h l e n .� ����
�� 
btns� m   & '�� ���  O K� �����
�� 
dflt� m   ( )�� ���  O K��  � ���� r   . 3��� m   . /��
�� boovfals� n     ��� o   0 2���� 0 stopbool stopBool�  f   / 0��  ��  � k   6 ��� ��� Y   6 ��������� k   F ��� ��� Z   F �������� =   F V��� n   F R��� m   N R��
�� 
pcls� n   F N��� 4   I N���
�� 
cobj� o   L M���� 0 x  � n  F I��� o   G I���� 0 theselection theSelection�  f   F G� m   R U��
�� 
grop� Y   Y ��������� r   r ���� m   r u�� ���  � n      ��� 1   � ���
�� 
ptag� n   u ���� 4   } ����
�� 
pitm� o   � ����� 0 y  � n   u }��� 4   x }���
�� 
cobj� o   { |���� 0 x  � n  u x��� o   v x���� 0 theselection theSelection�  f   u v�� 0 y  � m   \ ]���� � I  ] m�����
�� .corecnte****       ****� l  ] i������ n   ] i��� 2   e i��
�� 
pitm� n   ] e��� 4   ` e���
�� 
cobj� o   c d���� 0 x  � n  ] `��� o   ^ `���� 0 theselection theSelection�  f   ] ^��  ��  ��  ��  ��  ��  � ���� r   � ���� m   � ��� ���  � n      ��� 1   � ���
�� 
ptag� n   � ���� 4   � ����
�� 
cobj� o   � ����� 0 x  � n  � ���� o   � ����� 0 theselection theSelection�  f   � ���  �� 0 x  � m   9 :���� � I  : A�����
�� .corecnte****       ****� n  : =��� o   ; =���� 0 theselection theSelection�  f   : ;��  ��  � ���� r   � �� � m   � ���
�� boovtrue  n      o   � ����� 0 stopbool stopBool  f   � ���  � �� l  � ���������  ��  ��  ��  � 5     ����
�� 
capp m     � $ c o m . a d o b e . I n D e s i g n
�� kfrmID  �  l     ��������  ��  ��   	
	 l     ����   z t �������������������������������������������������������������������������������������������������������������������    � �   " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " "
  l     ��������  ��  ��    l     ����   &  on transformTheSelectedObjects()    � @ o n   t r a n s f o r m T h e S e l e c t e d O b j e c t s ( )  l     ����   / )	tell application id "com.adobe.InDesign"    � R 	 t e l l   a p p l i c a t i o n   i d   " c o m . a d o b e . I n D e s i g n "  l     ����    		    �  	 	   l     ��!"��  ! 7 1		set theSelection to selection of activeDocument   " �## b 	 	 s e t   t h e S e l e c t i o n   t o   s e l e c t i o n   o f   a c t i v e D o c u m e n t  $%$ l     �&'�  & + %		if (count of theSelection) < 1 then   ' �(( J 	 	 i f   ( c o u n t   o f   t h e S e l e c t i o n )   <   1   t h e n% )*) l     �~+,�~  + � �			display dialog "Es ist nichts ausgew�hlt!" & return & "Bitte ein oder mehrere Objekte ausw�hlen." buttons "OK" default button "OK"   , �--
 	 	 	 d i s p l a y   d i a l o g   " E s   i s t   n i c h t s   a u s g e w � h l t ! "   &   r e t u r n   &   " B i t t e   e i n   o d e r   m e h r e r e   O b j e k t e   a u s w � h l e n . "   b u t t o n s   " O K "   d e f a u l t   b u t t o n   " O K "* ./. l     �}01�}  0  		else   1 �22  	 	 e l s e/ 343 l     �|56�|  5 F @			set theSelection to every item of selection of activeDocument   6 �77 � 	 	 	 s e t   t h e S e l e c t i o n   t o   e v e r y   i t e m   o f   s e l e c t i o n   o f   a c t i v e D o c u m e n t4 898 l     �{:;�{  : 	 			   ; �<<  	 	 	9 =>= l     �z?@�z  ? 5 /			--repeat with x from 1 to count theSelection   @ �AA ^ 	 	 	 - - r e p e a t   w i t h   x   f r o m   1   t o   c o u n t   t h e S e l e c t i o n> BCB l     �yDE�y  D ; 5			repeat with x from (count theSelection) to 1 by -1   E �FF j 	 	 	 r e p e a t   w i t h   x   f r o m   ( c o u n t   t h e S e l e c t i o n )   t o   1   b y   - 1C GHG l     �xIJ�x  I 8 2				set my UUID to label of item x of theSelection   J �KK d 	 	 	 	 s e t   m y   U U I D   t o   l a b e l   o f   i t e m   x   o f   t h e S e l e c t i o nH LML l     �wNO�w  N F @				set myGeometry to geometric bounds of item x of theSelection   O �PP � 	 	 	 	 s e t   m y G e o m e t r y   t o   g e o m e t r i c   b o u n d s   o f   i t e m   x   o f   t h e S e l e c t i o nM QRQ l     �vST�v  S 6 0				repeat with y from 1 to count otherDocuments   T �UU ` 	 	 	 	 r e p e a t   w i t h   y   f r o m   1   t o   c o u n t   o t h e r D o c u m e n t sR VWV l     �uXY�u  X  					   Y �ZZ 
 	 	 	 	 	W [\[ l     �t]^�t  ] z t					set geometric bounds of (every page item of otherDocuments's item y whose label contains my UUID) to myGeometry   ^ �__ � 	 	 	 	 	 s e t   g e o m e t r i c   b o u n d s   o f   ( e v e r y   p a g e   i t e m   o f   o t h e r D o c u m e n t s ' s   i t e m   y   w h o s e   l a b e l   c o n t a i n s   m y   U U I D )   t o   m y G e o m e t r y\ `a` l     �sbc�s  b  				end repeat   c �dd  	 	 	 	 e n d   r e p e a ta efe l     �rgh�r  g  			end repeat   h �ii  	 	 	 e n d   r e p e a tf jkj l     �qlm�q  l  		end if   m �nn  	 	 e n d   i fk opo l     �pqr�p  q  		   r �ss  	 	p tut l     �ovw�o  v  		end tell   w �xx  	 e n d   t e l lu yzy l     �n{|�n  { % end transformTheSelectedObjects   | �}} > e n d   t r a n s f o r m T h e S e l e c t e d O b j e c t sz ~~ l     �m�l�k�m  �l  �k   ��� l     �j���j  � z t �������������������������������������������������������������������������������������������������������������������   � ��� �   " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " "� ��� l     �i�h�g�i  �h  �g  � ��� i   � ���� I      �f�e�d�f 00 copytheselectedobjects copyTheSelectedObjects�e  �d  � O     ���� k    ��� ��� l   �c�b�a�c  �b  �a  � ��� r    ��� n    ��� 1    �`
�` 
sele� o    �_�_  0 activedocument activeDocument� n     ��� o    �^�^ 0 theselection theSelection�  f    � ��� Z    ����]�� A    ��� l   ��\�[� I   �Z��Y
�Z .corecnte****       ****� o    �X�X 0 theselection theSelection�Y  �\  �[  � m    �W�W � k   " 5�� ��� I  " /�V��
�V .sysodlogaskr        TEXT� b   " '��� b   " %��� m   " #�� ��� 2 E s   i s t   n i c h t s   a u s g e w � h l t !� o   # $�U
�U 
ret � m   % &�� ��� R B i t t e   e i n   o d e r   m e h r e r e   O b j e k t e   a u s w � h l e n .� �T��
�T 
btns� m   ( )�� ���  O K� �S��R
�S 
dflt� m   * +�� ���  O K�R  � ��Q� r   0 5��� m   0 1�P
�P boovfals� n     ��� o   2 4�O�O 0 stopbool stopBool�  f   1 2�Q  �]  � k   8 ��� ��� r   8 G��� n   8 C��� 2   ? C�N
�N 
cobj� n   8 ?��� 1   = ?�M
�M 
sele� o   8 =�L�L  0 activedocument activeDocument� n     ��� o   D F�K�K 0 theselection theSelection�  f   C D� ��� l  H H�J�I�H�J  �I  �H  � ��� Y   H ���G���F� k   X ��� ��� l  X X�E���E  � 8 2repeat with x from (count theSelection) to 1 by -1   � ��� d r e p e a t   w i t h   x   f r o m   ( c o u n t   t h e S e l e c t i o n )   t o   1   b y   - 1� ��� r   X j��� n   X d��� 1   ` d�D
�D 
ptag� n   X `��� 4   [ `�C�
�C 
cobj� o   ^ _�B�B 0 x  � n  X [��� o   Y [�A�A 0 theselection theSelection�  f   X Y� n     ��� o   e i�@�@ 0 uuid UUID�  f   d e� ��� l  k k�?���?  �  myLayer   � ���  m y L a y e r� ��� r   k }��� n   k w��� 1   s w�>
�> 
pilr� n   k s��� 4   n s�=�
�= 
cobj� o   q r�<�< 0 x  � n  k n��� o   l n�;�; 0 theselection theSelection�  f   k l� n     ��� o   x |�:�: 0 mylayer myLayer�  f   w x� ��9� Y   ~ ���8���7� k   � ��� ��� l  � ��6���6  � U Odelete (every page item of openDocuments's item y whose label contains my UUID)   � ��� � d e l e t e   ( e v e r y   p a g e   i t e m   o f   o p e n D o c u m e n t s ' s   i t e m   y   w h o s e   l a b e l   c o n t a i n s   m y   U U I D )� ��5� I  � ��4��
�4 .CoRedupeobj         obj � n   � ���� 4   � ��3 
�3 
cobj  o   � ��2�2 0 x  � n  � � o   � ��1�1 0 theselection theSelection  f   � �� �0�/
�0 
insh n   � � 4   � ��.
�. 
layr l  � ��-�, n   � �	 1   � ��+
�+ 
pnam	 n  � �

 o   � ��*�* 0 mylayer myLayer  f   � ��-  �,   n  � � n  � � 4   � ��)
�) 
cobj o   � ��(�( 0 y   o   � ��'�'  0 otherdocuments otherDocuments  f   � ��/  �5  �8 0 y  � m   � ��&�& � I  � ��%�$
�% .corecnte****       **** n  � � o   � ��#�#  0 otherdocuments otherDocuments  f   � ��$  �7  �9  �G 0 x  � m   K L�"�" � I  L S�!� 
�! .corecnte****       **** n  L O o   M O�� 0 theselection theSelection  f   L M�   �F  � � r   � � m   � ��
� boovtrue n      o   � ��� 0 stopbool stopBool  f   � ��  � � l  � �����  �  �  �  � 5     ��
� 
capp m     � $ c o m . a d o b e . I n D e s i g n
� kfrmID  �  !  l     ����  �  �  ! "#" l     �$%�  $ z t �������������������������������������������������������������������������������������������������������������������   % �&& �   " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " "# '(' l     ����  �  �  ( )*) i   � �+,+ I      ���� 40 movetheselectedobjectsby moveTheSelectedObjectsBy�  �  , O    �-.- k   �// 010 l   ��
�	�  �
  �	  1 232 r    454 n    676 1    �
� 
sele7 o    ��  0 activedocument activeDocument5 n     898 o    �� 0 theselection theSelection9  f    3 :;: Z   �<=�>< A    ?@? l   A��A I   �B�
� .corecnte****       ****B n   CDC o    � �  0 theselection theSelectionD  f    �  �  �  @ m    ���� = k     3EE FGF I    -��HI
�� .sysodlogaskr        TEXTH b     %JKJ b     #LML m     !NN �OO 2 E s   i s t   n i c h t s   a u s g e w � h l t !M o   ! "��
�� 
ret K m   # $PP �QQ R B i t t e   e i n   o d e r   m e h r e r e   O b j e k t e   a u s w � h l e n .I ��RS
�� 
btnsR m   & 'TT �UU  O KS ��V��
�� 
dfltV m   ( )WW �XX  O K��  G Y��Y r   . 3Z[Z m   . /��
�� boovfals[ n     \]\ o   0 2���� 0 stopbool stopBool]  f   / 0��  �  > k   6�^^ _`_ r   6 Eaba n   6 Acdc 2   = A��
�� 
cobjd n   6 =efe 1   ; =��
�� 
selef o   6 ;����  0 activedocument activeDocumentb n     ghg o   B D���� 0 theselection theSelectionh  f   A B` iji l  F F��������  ��  ��  j klk n  F Kmnm I   G K�������� *0 xycoordinatesdialog xyCoordinatesDialog��  ��  n  f   F Gl opo l  L L��������  ��  ��  p qrq Z   L �st����s E   L Uuvu n  L Qwxw o   M Q���� 0 xvalue xValuex  f   L Mv m   Q Tyy �zz  ,t k   X �{{ |}| r   X t~~ l  X r������ I  X r����� z����
�� .sysooffslong    ��� null
�� misccura��  � ����
�� 
psof� m   b e�� ���  ,� �����
�� 
psin� n  h m��� o   i m���� 0 xvalue xValue�  f   h i��  ��  ��   o      ���� 0 o  } ��� Z  u �������� l  u ������� F   u ���� l  u x������ ?   u x��� o   u v���� 0 o  � m   v w����  ��  ��  � l  { ������� =  { ���� c   { ���� m   { ~��         � m   ~ ���
�� 
TEXT� m   � ��� ���  0 , 0��  ��  ��  ��  � r   � ���� l  � ������� b   � ���� b   � ���� n   � ���� 7  � �����
�� 
ctxt� m   � ����� � l  � ������� \   � ���� o   � ����� 0 o  � m   � ����� ��  ��  � o   � ����� 0 xvalue xValue� m   � ��� ���  ,� n   � ���� 7  � �����
�� 
ctxt� l  � ������� [   � ���� o   � ����� 0 o  � m   � ����� ��  ��  � m   � �������� o   � ����� 0 xvalue xValue��  ��  � o      ���� 0 xvalue xValue��  ��  � ���� r   � ���� c   � ���� o   � ����� 0 xvalue xValue� m   � ���
�� 
nmbr� o      ���� 0 xvalue xValue��  ��  ��  r ��� l  � ���������  ��  ��  � ��� Z   �a������� E   � ���� n  � ���� o   � ����� 0 yvalue yValue�  f   � �� m   � ��� ���  ,� k   �]�� ��� r   � ���� l  � ������� I  � ������ z����
�� .sysooffslong    ��� null
�� misccura��  � ����
�� 
psof� m   � ��� ���  ,� �����
�� 
psin� n  � ���� o   � ����� 0 yvalue yValue�  f   � ���  ��  ��  � o      ���� 0 o  � ��� Z  M������� l  ������ F   ��� l  ������ ?   ��� o   ���� 0 o  � m  ����  ��  ��  � l ������ = ��� c  ��� m  	��         � m  	��
�� 
TEXT� m  �� ���  0 , 0��  ��  ��  ��  � r  I��� l C������ b  C��� b  /��� n  +��� 7 +����
�� 
ctxt� m  #%���� � l &*������ \  &*��� o  '(���� 0 o  � m  ()���� ��  ��  � o  ���� 0 yvalue yValue� m  +.�� ���  ,� n  /B��� 7 4B����
�� 
ctxt� l :>������ [  :>��� o  ;<���� 0 o  � m  <=���� ��  ��  � m  ?A������� o  /4���� 0 yvalue yValue��  ��  � o      ���� 0 yvalue yValue��  ��  � ���� r  N]��� c  NW� � o  NS���� 0 yvalue yValue  m  SV��
�� 
nmbr� o      ���� 0 yvalue yValue��  ��  ��  �  l bb��������  ��  ��    Y  b��� k  r�		 

 r  r� n  r~ 1  z~��
�� 
ptag n  rz 4  uz��
�� 
cobj o  xy���� 0 x   n ru o  su���� 0 theselection theSelection  f  rs n      o  ����� 0 uuid UUID  f  ~  l ������   B <set myGeometry to geometric bounds of item x of theSelection    � x s e t   m y G e o m e t r y   t o   g e o m e t r i c   b o u n d s   o f   i t e m   x   o f   t h e S e l e c t i o n �� Y  ������ k  ��   !"! l ���#$�  # u oset geometric bounds of (every page item of otherDocuments's item y whose label contains my UUID) to myGeometry   $ �%% � s e t   g e o m e t r i c   b o u n d s   o f   ( e v e r y   p a g e   i t e m   o f   o t h e r D o c u m e n t s ' s   i t e m   y   w h o s e   l a b e l   c o n t a i n s   m y   U U I D )   t o   m y G e o m e t r y" &�~& Q  ��'(�}' I ���|)*
�| .CoRemoveobj         obj ) l ��+�{�z+ 6 ��,-, n  ��./. 2  ���y
�y 
pitm/ n ��010 n ��232 4  ���x4
�x 
cobj4 o  ���w�w 0 y  3 o  ���v�v 0 opendocuments openDocuments1  f  ��- E  ��565 1  ���u
�u 
ptag6 n ��787 o  ���t�t 0 uuid UUID8  f  ���{  �z  * �s9�r
�s 
by  9 J  ��:: ;<; o  ���q�q 0 xvalue xValue< =�p= o  ���o�o 0 yvalue yValue�p  �r  ( R      �n�m�l
�n .ascrerr ****      � ****�m  �l  �}  �~  �� 0 y   m  ���k�k  I ���j>�i
�j .corecnte****       ****> n ��?@? o  ���h�h 0 opendocuments openDocuments@  f  ���i  ��  ��  �� 0 x   l elA�g�fA I el�eB�d
�e .corecnte****       ****B n ehCDC o  fh�c�c 0 theselection theSelectionD  f  ef�d  �g  �f   m  lm�b�b  m  mn�a�a�� E�`E r  ��FGF m  ���_
�_ boovtrueG n     HIH o  ���^�^ 0 stopbool stopBoolI  f  ���`  ; J�]J l ���\�[�Z�\  �[  �Z  �]  . 5     �YK�X
�Y 
cappK m    LL �MM $ c o m . a d o b e . I n D e s i g n
�X kfrmID  * NON l     �W�V�U�W  �V  �U  O PQP l     �TRS�T  R z t �������������������������������������������������������������������������������������������������������������������   S �TT �   " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " "Q UVU l     �S�R�Q�S  �R  �Q  V WXW i   � �YZY I      �P�O�N�P 40 movetheselectedobjectsto moveTheSelectedObjectsTo�O  �N  Z O    ][\[ k   \]] ^_^ l   �M�L�K�M  �L  �K  _ `a` r    bcb n    ded 1    �J
�J 
selee o    �I�I  0 activedocument activeDocumentc n     fgf o    �H�H 0 theselection theSelectiong  f    a hih l   �G�F�E�G  �F  �E  i jkj Z   Zlmnol A    pqp l   r�D�Cr I   �Bs�A
�B .corecnte****       ****s n   tut o    �@�@ 0 theselection theSelectionu  f    �A  �D  �C  q m    �?�? m k     3vv wxw I    -�>yz
�> .sysodlogaskr        TEXTy b     %{|{ b     #}~} m     ! ��� 2 E s   i s t   n i c h t s   a u s g e w � h l t !~ o   ! "�=
�= 
ret | m   # $�� ��� 6 B i t t e   E I N   O b j e k t   a u s w � h l e n .z �<��
�< 
btns� m   & '�� ���  O K� �;��:
�; 
dflt� m   ( )�� ���  O K�:  x ��9� r   . 3��� m   . /�8
�8 boovfals� n     ��� o   0 2�7�7 0 stopbool stopBool�  f   / 0�9  n ��� ?   6 ?��� l  6 =��6�5� I  6 =�4��3
�4 .corecnte****       ****� n  6 9��� o   7 9�2�2 0 theselection theSelection�  f   6 7�3  �6  �5  � m   = >�1�1 � ��0� k   B ]�� ��� I  B W�/��
�/ .sysodlogaskr        TEXT� b   B K��� b   B G��� m   B E�� ��� F E s   s i n d   m e h r e r e   O b j e k t e   a u s g e w � h l t !� o   E F�.
�. 
ret � m   G J�� ��� > B i t t e   n u r   E I N   O b j e k t   a u s w � h l e n .� �-��
�- 
btns� m   L O�� ���  O K� �,��+
�, 
dflt� m   P S�� ���  O K�+  � ��*� r   X ]��� m   X Y�)
�) boovfals� n     ��� o   Z \�(�( 0 stopbool stopBool�  f   Y Z�*  �0  o k   `Z�� ��� r   ` o��� n   ` k��� 2   g k�'
�' 
cobj� n   ` g��� 1   e g�&
�& 
sele� o   ` e�%�%  0 activedocument activeDocument� n     ��� o   l n�$�$ 0 theselection theSelection�  f   k l� ��� l  p p�#�"�!�#  �"  �!  � ��� r   p ���� n   p |��� 4   w |� �
�  
cobj� m   z {�� � n   p w��� 1   s w�
� 
gbnd� n  p s��� o   q s�� 0 theselection theSelection�  f   p q� n     ��� o   } ��� 0 xvalue xValue�  f   | }� ��� r   � ���� n   � ���� 4   � ���
� 
cobj� m   � ��� � n   � ���� 1   � ��
� 
gbnd� n  � ���� o   � ��� 0 theselection theSelection�  f   � �� n     ��� o   � ��� 0 yvalue yValue�  f   � �� ��� l  � �����  �  �  � ��� Z   � ������ =  � ���� n   � ���� m   � ��
� 
pcls� n  � ���� o   � ��� 0 theselection theSelection�  f   � �� m   � ��
� 
glin� k   � ��� ��� l  � ����� I  � ����
� .sysodlogaskr        TEXT� m   � ��� ��� Z L i n i e n   m i t   d e r   a n d e r e n   M e t h o d e   v e r s c h i e b e n ! ! !� ���
� 
btns� m   � ��� ���  O K� ���
� 
dflt� m   � ��� ���  O K�  � 8 2buttons {"Stop", "Weiter"} default button "Weiter"   � ��� d b u t t o n s   { " S t o p " ,   " W e i t e r " }   d e f a u l t   b u t t o n   " W e i t e r "� ��� l  � ��
���
  � = 7if button returned of result is "Stop" then exit repeat   � ��� n i f   b u t t o n   r e t u r n e d   o f   r e s u l t   i s   " S t o p "   t h e n   e x i t   r e p e a t� ��	� L   � ���  �	  �  �  � ��� l  � �����  �  �  � ��� l  � �����  �  �  � 	 		  n  � �			 I   � ��� ��� *0 xycoordinatesdialog xyCoordinatesDialog�   ��  	  f   � �	 			 l  � ���������  ��  ��  	 			 Z   �K			����	 E   � �	
		
 n  � �			 o   � ����� 0 xvalue xValue	  f   � �	 m   � �		 �		  ,		 k   �G		 			 r   � �			 l  � �	����	 I  � �	��		 z����
�� .sysooffslong    ��� null
�� misccura��  	 ��		
�� 
psof	 m   � �		 �		  ,	 ��	��
�� 
psin	 n  � �			 o   � ����� 0 xvalue xValue	  f   � ���  ��  ��  	 o      ���� 0 o  	 		 	 Z  �7	!	"����	! l  � �	#����	# F   � �	$	%	$ l  � �	&����	& ?   � �	'	(	' o   � ����� 0 o  	( m   � �����  ��  ��  	% l  � �	)����	) =  � �	*	+	* c   � �	,	-	, m   � �	.	.         	- m   � ���
�� 
TEXT	+ m   � �	/	/ �	0	0  0 , 0��  ��  ��  ��  	" r  3	1	2	1 l -	3����	3 b  -	4	5	4 b  	6	7	6 n  	8	9	8 7 ��	:	;
�� 
ctxt	: m  ���� 	; l 	<����	< \  	=	>	= o  ���� 0 o  	> m  ���� ��  ��  	9 n 	?	@	? o  ���� 0 xvalue xValue	@  f  	7 m  	A	A �	B	B  ,	5 n  ,	C	D	C 7 ,��	E	F
�� 
ctxt	E l $(	G����	G [  $(	H	I	H o  %&���� 0 o  	I m  &'���� ��  ��  	F m  )+������	D n 	J	K	J o  ���� 0 xvalue xValue	K  f  ��  ��  	2 n     	L	M	L o  .2���� 0 xvalue xValue	M  f  -.��  ��  	  	N��	N r  8G	O	P	O c  8A	Q	R	Q n 8=	S	T	S o  9=���� 0 xvalue xValue	T  f  89	R m  =@��
�� 
nmbr	P n     	U	V	U o  BF���� 0 xvalue xValue	V  f  AB��  ��  ��  	 	W	X	W l LL��������  ��  ��  	X 	Y	Z	Y Z  L�	[	\����	[ E  LU	]	^	] n LQ	_	`	_ o  MQ���� 0 yvalue yValue	`  f  LM	^ m  QT	a	a �	b	b  ,	\ k  X�	c	c 	d	e	d r  Xt	f	g	f l Xr	h����	h I Xr	i��	j	i z����
�� .sysooffslong    ��� null
�� misccura��  	j ��	k	l
�� 
psof	k m  be	m	m �	n	n  ,	l ��	o��
�� 
psin	o n hm	p	q	p o  im���� 0 yvalue yValue	q  f  hi��  ��  ��  	g o      ���� 0 o  	e 	r	s	r Z u�	t	u����	t l u�	v����	v F  u�	w	x	w l ux	y����	y ?  ux	z	{	z o  uv���� 0 o  	{ m  vw����  ��  ��  	x l {�	|����	| = {�	}	~	} c  {�		�	 m  {~	�	�         	� m  ~���
�� 
TEXT	~ m  ��	�	� �	�	�  0 , 0��  ��  ��  ��  	u r  ��	�	�	� l ��	�����	� b  ��	�	�	� b  ��	�	�	� n  ��	�	�	� 7 ����	�	�
�� 
ctxt	� m  ������ 	� l ��	�����	� \  ��	�	�	� o  ������ 0 o  	� m  ������ ��  ��  	� n ��	�	�	� o  ������ 0 yvalue yValue	�  f  ��	� m  ��	�	� �	�	�  ,	� n  ��	�	�	� 7 ����	�	�
�� 
ctxt	� l ��	�����	� [  ��	�	�	� o  ������ 0 o  	� m  ������ ��  ��  	� m  ��������	� n ��	�	�	� o  ������ 0 yvalue yValue	�  f  ����  ��  	� n     	�	�	� o  ������ 0 yvalue yValue	�  f  ����  ��  	s 	���	� r  ��	�	�	� c  ��	�	�	� n ��	�	�	� o  ������ 0 yvalue yValue	�  f  ��	� m  ����
�� 
nmbr	� n     	�	�	� o  ������ 0 yvalue yValue	�  f  ����  ��  ��  	Z 	�	�	� l ����������  ��  ��  	� 	�	�	� Y  �T	���	�	�	�	� k  �O	�	� 	�	�	� r  ��	�	�	� n  ��	�	�	� 1  ����
�� 
ptag	� n  ��	�	�	� 4  ����	�
�� 
cobj	� o  ������ 0 x  	� n ��	�	�	� o  ������ 0 theselection theSelection	�  f  ��	� n     	�	�	� o  ������ 0 uuid UUID	�  f  ��	� 	���	� Y  �O	���	�	���	� Q  J	�	���	� I A��	�	�
�� .CoRemoveobj         obj 	� l .	�����	� 6 .	�	�	� n  	�	�	� 2  ��
�� 
pitm	� n 	�	�	� n 	�	�	� 4  ��	�
�� 
cobj	� o  ���� 0 y  	� o  ���� 0 opendocuments openDocuments	�  f  	� E   -	�	�	� 1  !%��
�� 
ptag	� n &,	�	�	� o  (,���� 0 uuid UUID	�  f  &(��  ��  	� ��	���
�� 
insh	� J  1=	�	� 	�	�	� o  16���� 0 xvalue xValue	� 	���	� o  6;���� 0 yvalue yValue��  ��  	� R      ������
�� .ascrerr ****      � ****��  ��  ��  �� 0 y  	� m  ������ 	� I ��	��~
� .corecnte****       ****	� n �	�	�	� o  ��}�} 0 opendocuments openDocuments	�  f  ���~  ��  ��  �� 0 x  	� l ��	��|�{	� I ���z	��y
�z .corecnte****       ****	� n ��	�	�	� o  ���x�x 0 theselection theSelection	�  f  ���y  �|  �{  	� m  ���w�w 	� m  ���v�v��	� 	��u	� r  UZ	�	�	� m  UV�t
�t boovtrue	� n     	�	�	� o  WY�s�s 0 stopbool stopBool	�  f  VW�u  k 	��r	� l [[�q�p�o�q  �p  �o  �r  \ 5     �n	��m
�n 
capp	� m    	�	� �	�	� $ c o m . a d o b e . I n D e s i g n
�m kfrmID  X 	�	�	� l     �l�k�j�l  �k  �j  	� 	�	�	� l     �i	�	��i  	� z t �������������������������������������������������������������������������������������������������������������������   	� �	�	� �   " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " "	� 	�	�	� l     �h�g�f�h  �g  �f  	� 	�	�	� i   � �	�	�	� I      �e�d�c�e :0 movelayertheselectedobjects moveLayerTheSelectedObjects�d  �c  	� O    i	�	�	� k   h	�	� 	�	�	� l   �b�a�`�b  �a  �`  	� 	�	�	� r    	�
 	� n    


 1    �_
�_ 
sele
 o    �^�^  0 activedocument activeDocument
  n     


 o    �]�] 0 theselection theSelection
  f    	� 


 Z   f

�\
	
 A    




 l   
�[�Z
 I   �Y
�X
�Y .corecnte****       ****
 n   


 o    �W�W 0 theselection theSelection
  f    �X  �[  �Z  
 m    �V�V 
 k     3

 


 I    -�U


�U .sysodlogaskr        TEXT
 b     %


 b     #


 m     !

 �

 2 E s   i s t   n i c h t s   a u s g e w � h l t !
 o   ! "�T
�T 
ret 
 m   # $

 �

 R B i t t e   e i n   o d e r   m e h r e r e   O b j e k t e   a u s w � h l e n .
 �S


�S 
btns
 m   & '

 �
 
   O K
 �R
!�Q
�R 
dflt
! m   ( )
"
" �
#
#  O K�Q  
 
$�P
$ r   . 3
%
&
% m   . /�O
�O boovfals
& n     
'
(
' o   0 2�N�N 0 stopbool stopBool
(  f   / 0�P  �\  
	 k   6f
)
) 
*
+
* r   6 E
,
-
, n   6 A
.
/
. 2   = A�M
�M 
cobj
/ n   6 =
0
1
0 1   ; =�L
�L 
sele
1 o   6 ;�K�K  0 activedocument activeDocument
- n     
2
3
2 o   B D�J�J 0 theselection theSelection
3  f   A B
+ 
4
5
4 l  F F�I�H�G�I  �H  �G  
5 
6
7
6 r   F o
8
9
8 I  F i�F
:
;
�F .gtqpchltns    @   @ ns  
: l  F O
<�E�D
< n   F O
=
>
= 1   K O�C
�C 
rvse
> o   F K�B�B 00 deduplicatedlayernames deduplicatedLayerNames�E  �D  
; �A
?
@
�A 
inSL
? o   R W�@�@ 0 chosenlayer chosenLayer
@ �?
A
B
�? 
prmp
A m   Z ]
C
C �
D
D $ Z i e l - E b e n e   w � h l e n :
B �>
E�=
�> 
okbt
E m   ` c
F
F �
G
G  V e r s c h i e b e n�=  
9 n     
H
I
H o   j n�<�< 0 chosenlayer chosenLayer
I  f   i j
7 
J
K
J l  p p�;�:�9�;  �:  �9  
K 
L
M
L r   p �
N
O
N n   p �
P
Q
P 1   � ��8
�8 
lcol
Q n   p �
R
S
R 4   u ��7
T
�7 
layr
T l  x �
U�6�5
U c   x �
V
W
V o   x }�4�4 0 chosenlayer chosenLayer
W m   } ��3
�3 
TEXT�6  �5  
S o   p u�2�2  0 activedocument activeDocument
O o      �1�1 $0 chosenlayercolor chosenLayerColor
M 
X
Y
X l  � ��0�/�.�0  �/  �.  
Y 
Z
[
Z l  � ��-
\
]�-  
\ 0 *repeat with x from 1 to count theSelection   
] �
^
^ T r e p e a t   w i t h   x   f r o m   1   t o   c o u n t   t h e S e l e c t i o n
[ 
_
`
_ Y   �`
a�,
b
c
d
a k   �[
e
e 
f
g
f r   � �
h
i
h n   � �
j
k
j 1   � ��+
�+ 
ptag
k n   � �
l
m
l 4   � ��*
n
�* 
cobj
n o   � ��)�) 0 x  
m n  � �
o
p
o o   � ��(�( 0 theselection theSelection
p  f   � �
i n     
q
r
q o   � ��'�' 0 uuid UUID
r  f   � �
g 
s
t
s l  � ��&
u
v�&  
u B <set myGeometry to geometric bounds of item x of theSelection   
v �
w
w x s e t   m y G e o m e t r y   t o   g e o m e t r i c   b o u n d s   o f   i t e m   x   o f   t h e S e l e c t i o n
t 
x�%
x Y   �[
y�$
z
{�#
y k   �V
|
| 
}
~
} l  � ��"

��"  
 u oset geometric bounds of (every page item of otherDocuments's item y whose label contains my UUID) to myGeometry   
� �
�
� � s e t   g e o m e t r i c   b o u n d s   o f   ( e v e r y   p a g e   i t e m   o f   o t h e r D o c u m e n t s ' s   i t e m   y   w h o s e   l a b e l   c o n t a i n s   m y   U U I D )   t o   m y G e o m e t r y
~ 
�
�
� l  � ��!
�
��!  
� g amove (every page item of openDocuments's item y whose label contains my UUID) by {xValue, yValue}   
� �
�
� � m o v e   ( e v e r y   p a g e   i t e m   o f   o p e n D o c u m e n t s ' s   i t e m   y   w h o s e   l a b e l   c o n t a i n s   m y   U U I D )   b y   { x V a l u e ,   y V a l u e }
� 
�
�
� Z  �
�
�� �
� H   � �
�
� l  � �
���
� I  � ��
��
� .CoRedoexbool        obj 
� n   � �
�
�
� 4   � ��
�
� 
layr
� l  � �
���
� c   � �
�
�
� o   � ��� 0 chosenlayer chosenLayer
� m   � ��
� 
TEXT�  �  
� n  � �
�
�
� 4   � ��
�
� 
cobj
� o   � ��� 0 y  
� o   � ��� 0 opendocuments openDocuments�  �  �  
� I  �
��
�
� .corecrel****      � null�  
� �
�
�
� 
kocl
� n   � �
�
�
� m   � ��
� 
layr
� n  � �
�
�
� 4   � ��
�
� 
cobj
� o   � ��� 0 y  
� o   � ��� 0 opendocuments openDocuments
� �
��

� 
prdt
� K   �
�
� �	
�
�
�	 
pnam
� l  � 
���
� c   � 
�
�
� o   � ��� 0 chosenlayer chosenLayer
� m   � ��
� 
TEXT�  �  
� �
��
� 
lcol
� o  �� $0 chosenlayercolor chosenLayerColor�  �
  �   �  
� 
��
� Q  V
�
�� 
� r  M
�
�
� n  )
�
�
� 4  )��
�
�� 
layr
� l (
�����
� c  (
�
�
� o  $���� 0 chosenlayer chosenLayer
� m  $'��
�� 
TEXT��  ��  
� n 
�
�
� 4  ��
�
�� 
cobj
� o  ���� 0 y  
� o  ���� 0 opendocuments openDocuments
� n      
�
�
� 1  HL��
�� 
pilr
� l )H
�����
� 6 )H
�
�
� n  )7
�
�
� 2  37��
�� 
pitm
� n )3
�
�
� 4  .3��
�
�� 
cobj
� o  12���� 0 y  
� o  ).���� 0 opendocuments openDocuments
� E  :G
�
�
� 1  ;?��
�� 
ptag
� n @F
�
�
� o  BF���� 0 uuid UUID
�  f  @B��  ��  
� R      ������
�� .ascrerr ****      � ****��  ��  �   �  �$ 0 y  
z m   � ����� 
{ I  � ���
���
�� .corecnte****       ****
� n  � �
�
�
� o   � ����� 0 opendocuments openDocuments
�  f   � ���  �#  �%  �, 0 x  
b l  � �
�����
� I  � ���
���
�� .corecnte****       ****
� o   � ����� 0 theselection theSelection��  ��  ��  
c m   � ����� 
d m   � �������
` 
���
� r  af
�
�
� m  ab��
�� boovtrue
� n     
�
�
� o  ce���� 0 stopbool stopBool
�  f  bc��  
 
���
� l gg��������  ��  ��  ��  	� 5     ��
���
�� 
capp
� m    
�
� �
�
� $ c o m . a d o b e . I n D e s i g n
�� kfrmID  	� 
�
�
� l     ��������  ��  ��  
� 
�
�
� l     ��
�
���  
� z t �������������������������������������������������������������������������������������������������������������������   
� �
�
� �   " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " "
� 
�
�
� l     ��������  ��  ��  
� 
�
�
� l     ��
�
���  
� � � the functionChooser shows the user a list dialog with the functions of the script. after choosing the desired function gets called (together with one or more arguments)   
� �
�
�R   t h e   f u n c t i o n C h o o s e r   s h o w s   t h e   u s e r   a   l i s t   d i a l o g   w i t h   t h e   f u n c t i o n s   o f   t h e   s c r i p t .   a f t e r   c h o o s i n g   t h e   d e s i r e d   f u n c t i o n   g e t s   c a l l e d   ( t o g e t h e r   w i t h   o n e   o r   m o r e   a r g u m e n t s )
� 
�
�
� i   � �
�
�
� I      �������� "0 functionchooser functionChooser��  ��  
� k    8
�
� 
�
�
� r     (
�
�
� I    "��
�
�
�� .gtqpchltns    @   @ ns  
� J     
�
� 
�
�
� m     
�
� �
�
� ( A l l e   O b j e k t e   t a g g e n !
� 
�
�
� m    
�
� �
�
� B A l l e   O b j e k t e   a u f   E b e n e   t a g g e n   . . .
� 
�
�
� m    
�
� �
�
� . A l l e   O b j e k t e   e n t t a g g e n !
� 
�
�
� m    
�
� �
�
� 6 A u s g e w � h l t e   O b j e k t e   t a g g e n !
� 
�
�
� m    
�
� �
�
� < A u s g e w � h l t e   O b j e k t e   e n t t a g g e n !
� 
� 
� m     � 8 A u s g e w � h l t e   O b j e k t e   l � s c h e n !   m     � < A u s g e w � h l t e   O b j e k t e   v e r t e i l e n !  m    		 �

 R A u s g e w � h l t e   O b j e k t e   v e r s c h i e b e n   ( u m   x , y ) !  m    	 � T A u s g e w � h l t e   O b j e k t e   v e r s c h i e b e n   ( a u f   x , y ) !  m   	 
 � X A u s g e w � h l t e   O b j e k t e   v e r s c h i e b e n   ( a u f   E b e n e ) !  m   
  � < A u s g e w � h l t e   O b j e k t e   a u s w � h l e n ! �� m     � J E r s t e s   g e f u n d e n e s   D u p l i k a t   a u s w � h l e n !��  
� ��
�� 
inSL o    ����  0 functionchoice functionChoice ��
�� 
prmp m     �   F u n k t i o n   w � h l e n : �� ��
�� 
okbt  m    !! �""  W e i t e r !��  
� o      ����  0 functionchoice functionChoice
� #$# l  ) )��������  ��  ��  $ %&% Z   )6'()��' =   ) 4*+* l  ) .,����, o   ) .����  0 functionchoice functionChoice��  ��  + J   . 3-- .��. m   . 1// �00 ( A l l e   O b j e k t e   t a g g e n !��  ( n  7 <121 I   8 <�������� 00 giveallpageitemsanuuid giveAllPageItemsAnUUID��  ��  2  f   7 8) 343 =   ? J565 l  ? D7����7 o   ? D����  0 functionchoice functionChoice��  ��  6 J   D I88 9��9 m   D G:: �;; B A l l e   O b j e k t e   a u f   E b e n e   t a g g e n   . . .��  4 <=< n  M R>?> I   N R�������� >0 giveallpageitemsonlayeranuuid giveAllPageItemsOnLayerAnUUID��  ��  ?  f   M N= @A@ =   U `BCB l  U ZD����D o   U Z����  0 functionchoice functionChoice��  ��  C J   Z _EE F��F m   Z ]GG �HH . A l l e   O b j e k t e   e n t t a g g e n !��  A IJI k   c jKK LML n  c hNON I   d h��������  0 deletealluuids deleteAllUUIDs��  ��  O  f   c dM PQP l  i i��������  ��  ��  Q RSR l  i i��TU��  T S Melse if the functionChoice = {"Alle UUIDs aus Quelldokument �bertragen"} then   U �VV � e l s e   i f   t h e   f u n c t i o n C h o i c e   =   { " A l l e   U U I D s   a u s   Q u e l l d o k u m e n t   � b e r t r a g e n " }   t h e nS WXW l  i i��YZ��  Y C =	my transferUUIDsFromATaggedSourceDocumentToATargetDocument()   Z �[[ z 	 m y   t r a n s f e r U U I D s F r o m A T a g g e d S o u r c e D o c u m e n t T o A T a r g e t D o c u m e n t ( )X \��\ l  i i��������  ��  ��  ��  J ]^] =   m x_`_ l  m ra����a o   m r����  0 functionchoice functionChoice��  ��  ` J   r wbb c��c m   r udd �ee 6 A u s g e w � h l t e   O b j e k t e   t a g g e n !��  ^ fgf n  { �hih I   | ��������� (0 tagselectedobjects tagSelectedObjects��  ��  i  f   { |g jkj =   � �lml l  � �n����n o   � �����  0 functionchoice functionChoice��  ��  m J   � �oo p��p m   � �qq �rr < A u s g e w � h l t e   O b j e k t e   e n t t a g g e n !��  k sts n  � �uvu I   � ��������� ,0 untagselectedobjects untagSelectedObjects��  ��  v  f   � �t wxw =   � �yzy l  � �{����{ o   � �����  0 functionchoice functionChoice��  ��  z J   � �|| }��} m   � �~~ � 8 A u s g e w � h l t e   O b j e k t e   l � s c h e n !��  x ��� n  � ���� I   � ��������� 40 deletetheselectedobjects deleteTheSelectedObjects��  ��  �  f   � �� ��� =   � ���� l  � ������� o   � �����  0 functionchoice functionChoice��  ��  � J   � ��� ���� m   � ��� ��� < A u s g e w � h l t e   O b j e k t e   v e r t e i l e n !��  � ��� n  � ���� I   � ��������� 00 copytheselectedobjects copyTheSelectedObjects��  ��  �  f   � �� ��� =   � ���� l  � ������� o   � �����  0 functionchoice functionChoice��  ��  � J   � ��� ���� m   � ��� ��� R A u s g e w � h l t e   O b j e k t e   v e r s c h i e b e n   ( u m   x , y ) !��  � ��� n  � ���� I   � ��������� 40 movetheselectedobjectsby moveTheSelectedObjectsBy��  ��  �  f   � �� ��� =   � ���� l  � ����~� o   � ��}�}  0 functionchoice functionChoice�  �~  � J   � ��� ��|� m   � ��� ��� T A u s g e w � h l t e   O b j e k t e   v e r s c h i e b e n   ( a u f   x , y ) !�|  � ��� n  � ���� I   � ��{�z�y�{ 40 movetheselectedobjectsto moveTheSelectedObjectsTo�z  �y  �  f   � �� ��� =   � ���� l  � ���x�w� o   � ��v�v  0 functionchoice functionChoice�x  �w  � J   � ��� ��u� m   � ��� ��� X A u s g e w � h l t e   O b j e k t e   v e r s c h i e b e n   ( a u f   E b e n e ) !�u  � ��� n  ���� I   �t�s�r�t :0 movelayertheselectedobjects moveLayerTheSelectedObjects�s  �r  �  f   � � ��� =  ��� l ��q�p� o  �o�o  0 functionchoice functionChoice�q  �p  � J  �� ��n� m  �� ��� < A u s g e w � h l t e   O b j e k t e   a u s w � h l e n !�n  � ��� n ��� I  �m�l�k�m "0 settheselection setTheSelection�l  �k  �  f  � ��� =  (��� l "��j�i� o  "�h�h  0 functionchoice functionChoice�j  �i  � J  "'�� ��g� m  "%�� ��� J E r s t e s   g e f u n d e n e s   D u p l i k a t   a u s w � h l e n !�g  � ��f� k  +2�� ��� n +0��� I  ,0�e�d�c�e 40 jumptofirstuuidduplicate jumpToFirstUUIDDuplicate�d  �c  �  f  +,� ��� l 11�b�a�`�b  �a  �`  � ��� l 11�_���_  � V Pelse if the functionChoice = {"Ausgew�hlte Objekte transformieren (beta!)"} then   � ��� � e l s e   i f   t h e   f u n c t i o n C h o i c e   =   { " A u s g e w � h l t e   O b j e k t e   t r a n s f o r m i e r e n   ( b e t a ! ) " }   t h e n� ��^� l 11�]���]  � ' !	my transformTheSelectedObjects()   � ��� B 	 m y   t r a n s f o r m T h e S e l e c t e d O b j e c t s ( )�^  �f  ��  & ��\� l 77�[�Z�Y�[  �Z  �Y  �\  
� ��� l     �X�W�V�X  �W  �V  � ��� l     �U���U  � z t �������������������������������������������������������������������������������������������������������������������   � ��� �   " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " "� ��� l     �T�S�R�T  �S  �R  � ��� l     �Q���Q  � T N the duplicator take a list as an argument and returns a new deduplicated list   � ��� �   t h e   d u p l i c a t o r   t a k e   a   l i s t   a s   a n   a r g u m e n t   a n d   r e t u r n s   a   n e w   d e d u p l i c a t e d   l i s t� ��� i  � ���� I      �P��O�P 0 deduplicator  � ��N� o      �M�M 0 l  �N  �O  � k     9�� ��� r     ��� J     �L�L  � n     ��� o    �K�K 00 deduplicatedlayernames deduplicatedLayerNames�  f    � ��� Y    4��J���I� k    /    r     l   �H�G n    4    �F
�F 
cobj o    �E�E 0 i   o    �D�D 0 l  �H  �G   o      �C�C 0 x   	�B	 Z   /
�A�@
 H    " E   ! n    o    �?�? 00 deduplicatedlayernames deduplicatedLayerNames  f     o     �>�> 0 x   r   % + o   % &�=�= 0 x   n        ;   ) * n  & ) o   ' )�<�< 00 deduplicatedlayernames deduplicatedLayerNames  f   & '�A  �@  �B  �J 0 i  � m   
 �;�; � I   �:�9
�: .corecnte****       **** o    �8�8 0 l  �9  �I  � �7 n  5 9 o   6 8�6�6 00 deduplicatedlayernames deduplicatedLayerNames  f   5 6�7  �  l     �5�4�3�5  �4  �3    l     �2 �2   z t �������������������������������������������������������������������������������������������������������������������     �!! �   " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " "#" l     �1�0�/�1  �0  �/  # $%$ i   � �&'& I      �.�-�,�. *0 xycoordinatesdialog xyCoordinatesDialog�-  �,  ' k     �(( )*) l     �+�*�)�+  �*  �)  * +,+ O     �-.- k    �// 010 l   �(�'�&�(  �'  �&  1 232 r    454 m    	�%�% 
5 o      �$�$ 0 mylabelwidth myLabelWidth3 676 l   �#�"�!�#  �"  �!  7 898 r    :;: I   � <=
�  .corecrel****      � null< m    �
� 
uiDL= �>�
� 
prdt> K    ?? �@�
� 
pnam@ m    AA �BB ( K o o r d i n a t e n   e i n g e b e n�  �  ; o      �� 0 mydialog myDialog9 CDC O    �EFE O    �GHG O   % �IJI k   - �KK LML O   - QNON k   5 PPP QRQ I  5 A�ST
� .corecrel****      � nullS m   5 6�
� 
uiStT �U�
� 
prdtU K   7 =VV �WX
� 
uiSLW m   8 9YY �ZZ  x :X �[�
� 
uMnW[ o   : ;�� 0 mylabelwidth myLabelWidth�  �  R \�\ I  B P�]^
� .corecrel****      � null] m   B C�
� 
uiSt^ �_�
� 
prdt_ K   D L`` �ab
� 
uiSLa m   E Hcc �dd  y :b �e�

� 
uMnWe o   I J�	�	 0 mylabelwidth myLabelWidth�
  �  �  O l  - 2f��f I  - 2�g�
� .corecrel****      � nullg m   - .�
� 
uiCW�  �  �  M h�h O   R �iji k   Z �kk lml r   Z rnon I  Z p�pq
� .corecrel****      � nullp m   Z ]�
� 
utxEq � r��
�  
prdtr K   ^ lss ��t��
�� 
uiECt l  a ju����u c   a jvwv o   a f���� 0 xvalue xValuew m   f i��
�� 
TEXT��  ��  ��  ��  o o      ���� 0 myxfield myXFieldm x��x r   s �yzy I  s ���{|
�� .corecrel****      � null{ m   s v��
�� 
utxE| ��}��
�� 
prdt} K   w �~~ ����
�� 
uiEC l  z ������� c   z ���� o   z ���� 0 yvalue yValue� m    ���
�� 
TEXT��  ��  ��  ��  z o      ���� 0 myyfield myYField��  j l  R W������ I  R W�����
�� .corecrel****      � null� m   R S��
�� 
uiCW��  ��  ��  �  J l  % *������ I  % *�����
�� .corecrel****      � null� m   % &��
�� 
uiRW��  ��  ��  H l   "������ I   "�����
�� .corecrel****      � null� m    ��
�� 
uiCW��  ��  ��  F o    ���� 0 mydialog myDialogD ��� l  � ���������  ��  ��  � ��� r   � ���� I  � ������
�� .K2LKshownull���     clnk� o   � ����� 0 mydialog myDialog��  � o      ���� 0 myresult myResult� ��� Z   � ������� =  � ���� o   � ����� 0 myresult myResult� m   � ���
�� boovtrue� k   � ��� ��� r   � ���� n   � ���� 1   � ���
�� 
uiEC� o   � ����� 0 myxfield myXField� o      ���� 0 xvalue xValue� ��� r   � ���� n   � ���� 1   � ���
�� 
uiEC� o   � ����� 0 myyfield myYField� o      ���� 0 yvalue yValue� ��� I  � ������
�� .UIUIdestnull���     uiDL� o   � ����� 0 mydialog myDialog��  � ���� l  � �������  � $ my doSomething(xValue, yValue)   � ��� < m y   d o S o m e t h i n g ( x V a l u e ,   y V a l u e )��  ��  � I  � ������
�� .UIUIdestnull���     uiDL� o   � ����� 0 mydialog myDialog��  � ���� l  � ���������  ��  ��  ��  . 5     �����
�� 
capp� m    �� ��� $ c o m . a d o b e . I n D e s i g n
�� kfrmID  , ���� l  � ���������  ��  ��  ��  % ��� l     ��������  ��  ��  � ��� l     ������  � z t �������������������������������������������������������������������������������������������������������������������   � ��� �   " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " "� ��� l     ��������  ��  ��  � ��� i   � ���� I      �������� 0 displaytheend displayTheEnd��  ��  � I    ����
�� .sysodlogaskr        TEXT� m     �� ���  F e r t i g !� ����
�� 
btns� m    �� ���  O K� ����
�� 
dflt� m    �� ���  O K� �����
�� 
givu� m    ���� ��  � ��� l     ��������  ��  ��  � ��� l     ������  � z t �������������������������������������������������������������������������������������������������������������������   � ��� �   " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " "� ��� l     ��������  ��  ��  � ��� l     ������  � L Fmy displayNotificationLong("Title text", "Subtitle text", "Body text")   � ��� � m y   d i s p l a y N o t i f i c a t i o n L o n g ( " T i t l e   t e x t " ,   " S u b t i t l e   t e x t " ,   " B o d y   t e x t " )� ��� i   � ���� I      ������� 20 displaynotificationlong displayNotificationLong� ��� o      ���� 0 	titletext 	titleText� ��� o      ���� 0 subtitletext subtitleText� ���� o      ���� 0 bodytext bodyText��  ��  � k     �� ��� l    	���� I    	����
�� .sysonotfnull��� ��� TEXT� o     ���� 0 bodytext bodyText� ����
�� 
appr� o    ���� 0 	titletext 	titleText� �����
�� 
subt� o    ���� 0 subtitletext subtitleText��  �  sound name "default"   � ��� ( s o u n d   n a m e   " d e f a u l t "� ���� l  
 
������  �  	delay 0.5   � ���  d e l a y   0 . 5��  � ��� l     ��������  ��  ��  � ��� l     ������  � z t �������������������������������������������������������������������������������������������������������������������   � ��� �   " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " "� ��� l     ��������  ��  ��  � ��� l     ������  � < 6my displayNotificationShort("Title text", "Body text")   � �   l m y   d i s p l a y N o t i f i c a t i o n S h o r t ( " T i t l e   t e x t " ,   " B o d y   t e x t " )�  i   � � I      ������ 40 displaynotificationshort displayNotificationShort  o      ���� 0 	titletext 	titleText �� o      ���� 0 bodytext bodyText��  ��   k     			 

 l     I    ��
�� .sysonotfnull��� ��� TEXT o     ���� 0 bodytext bodyText ����
�� 
appr o    ���� 0 	titletext 	titleText��    sound name "default"    � ( s o u n d   n a m e   " d e f a u l t " �� l   ��    	delay 0.5    �  d e l a y   0 . 5��    l     �~�}�|�~  �}  �|    l     �{�{   z t �������������������������������������������������������������������������������������������������������������������    � �   " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " �z l     �y �y   u o Here starts the garbage, the left-overs, whatever you want call it ... or if I cleaned it up, this is the end!     �!! �   H e r e   s t a r t s   t h e   g a r b a g e ,   t h e   l e f t - o v e r s ,   w h a t e v e r   y o u   w a n t   c a l l   i t   . . .   o r   i f   I   c l e a n e d   i t   u p ,   t h i s   i s   t h e   e n d !�z       .�x"# D$�w�v%&�u�t�s�r�q�p�o�n�m�l�k�j�i�h�g�f�e'()*+,-./0123456789:�x  " ,�d�c�b�a�`�_�^�]�\�[�Z�Y�X�W�V�U�T�S�R�Q�P�O�N�M�L�K�J�I�H�G�F�E�D�C�B�A�@�?�>�=�<�;�:�9
�d 
pimr�c 0 uuid UUID�b  0 functionchoice functionChoice�a 0 chosenlayer chosenLayer�` &0 chosenlayerrepeat chosenLayerRepeat�_ 0 allpageitems allPageItems�^ (0 allpageitemsrepeat allPageItemsRepeat�]  0 activedocument activeDocument�\ 0 opendocuments openDocuments�[  0 otherdocuments otherDocuments�Z 00 deduplicatedlayernames deduplicatedLayerNames�Y (0 layerlistactivedoc layerListActiveDoc�X 00 layernamelistactivedoc layerNameListActiveDoc�W 0 stopbool stopBool�V 0 theselection theSelection�U 0 
mygeometry 
myGeometry�T 0 mylayer myLayer�S 0 xvalue xValue�R 0 yvalue yValue�Q 0 activewindow activeWindow�P 0 otherwindows otherWindows�O 0 openwindows openWindows�N 0 
activepage 
activePage�M 0 thezoom theZoom�L 0 uuidgenerator UUIDGenerator�K 40 jumptofirstuuidduplicate jumpToFirstUUIDDuplicate�J "0 settheselection setTheSelection�I 00 giveallpageitemsanuuid giveAllPageItemsAnUUID�H >0 giveallpageitemsonlayeranuuid giveAllPageItemsOnLayerAnUUID�G 40 deletetheselectedobjects deleteTheSelectedObjects�F  0 deletealluuids deleteAllUUIDs�E (0 tagselectedobjects tagSelectedObjects�D ,0 untagselectedobjects untagSelectedObjects�C 00 copytheselectedobjects copyTheSelectedObjects�B 40 movetheselectedobjectsby moveTheSelectedObjectsBy�A 40 movetheselectedobjectsto moveTheSelectedObjectsTo�@ :0 movelayertheselectedobjects moveLayerTheSelectedObjects�? "0 functionchooser functionChooser�> 0 deduplicator  �= *0 xycoordinatesdialog xyCoordinatesDialog�< 0 displaytheend displayTheEnd�; 20 displaynotificationlong displayNotificationLong�: 40 displaynotificationshort displayNotificationShort
�9 .aevtoappnull  �   � ****# �8;�8 ;  <=< �7>�6
�7 
cobj> ??   �5 5
�5 
frmk�6  = �4@�3
�4 
cobj@ AA   �2
�2 
osax�3  $ �1B�1 B   K
�w 
msng
�v 
msng% �0�/�0  �/  & �.�-�.  �-  
�u 
msng
�t 
msng
�s 
msng
�r 
msng
�q 
msng
�p 
msng
�o boovfals
�n 
msng
�m 
msng
�l 
msng
�k 
msng
�j 
msng
�i 
msng
�h 
msng
�g 
msng
�f 
msng
�e 
msng' �,��+�*CD�)�, 0 uuidgenerator UUIDGenerator�+  �*  C  D �(�'�&�%�$
�( misccura�' 0 nsuuid NSUUID�& 0 uuid UUID�% 0 
uuidstring 
UUIDString
�$ 
TEXT�) ��,j+ j+ �&)�,F( �#��"�!EF� �# 40 jumptofirstuuidduplicate jumpToFirstUUIDDuplicate�"  �!  E ���� 0 x  � 0 
repeatuuid 
repeatUUID� *0 duplicaterepeatuuid duplicateRepeatUUIDF ��������G�
� 
capp
� kfrmID  
� 
pacd
� 
pitm� 0 allpageitems allPageItems
� .corecnte****       ****
� 
cobj
� 
ptagG  
� 
sele�  d)���0 Z*�,�-)�,FO Mk)�,j kh  )�,�/�,E�O*�,�-�[�,\Z�81E�O�j k )�,�/*�,�,FOhY h[OY��UOP) �*��HI�� "0 settheselection setTheSelection�  �  H ��� 0 x  � 0 y  I #����
�	����Y�[�_�b�� ��y{���������������������G
� 
capp
� kfrmID  
� 
pacw
�
 
pacp
�	 
pnam� 0 
activepage 
activePage
� 
sele� 0 theselection theSelection
� .corecnte****       ****
� 
ret 
� 
btns
� 
dflt� 
�  .sysodlogaskr        TEXT�� 0 stopbool stopBool
�� 
cobj
�� 
ptag�� 0 uuid UUID
�� 
pare
�� 
page
�� 
givn
�� zopezfts
�� .K2  zmtonull���     Lwin�� 0 opendocuments openDocuments
�� 
pitm�9)���01*�,�,�,)�,FOb  �,)�,FOb  j 	k ��%�%���a a  Of)a ,FY �b  j 	k $a �%a %�a �a a  Of)a ,FY �)�,a k/a ,)a ,FO Vkb  j 	kh  b  a �/a ,a b  /b  a �/�,FOb  a �/ *a a l UOP[OY��O Gk)a  ,j 	kh b  a �/ %)a  ,a �/a !-a "[a ,\Z)a ,@1*�,FU[OY��Oe)a ,FOPU* ������JK���� 00 giveallpageitemsanuuid giveAllPageItemsAnUUID��  ��  J ���� 0 i  K ��C������������������
�� 
capp
�� kfrmID  
�� 
aPgi�� 0 allpageitems allPageItems
�� .corecnte****       ****�� 0 uuidgenerator UUIDGenerator�� 0 uuid UUID
�� 
cobj
�� 
ptag�� 0 stopbool stopBool�� C)���0 5b  �,)�,FO &k)�,j kh  )j+ O)�,)�,�/�,F[OY��UOe)�,F+ ��X����LM���� >0 giveallpageitemsonlayeranuuid giveAllPageItemsOnLayerAnUUID��  ��  L ������ 0 
buttonname 
buttonName�� 0 i  M �����i��������x��������������������G��������������
�� 
capp
�� kfrmID  
�� 
TEXT
�� 
rvse
�� 
inSL
�� 
prmp
�� 
okbt
�� 
mlsl�� 
�� .gtqpchltns    @   @ ns  
�� 
rslt�� 0 chosenlayer chosenLayer
�� .corecnte****       ****
�� 
cobj�� &0 chosenlayerrepeat chosenLayerRepeat
�� 
aPgi
�� 
pilr
�� 
pnam�� (0 allpageitemsrepeat allPageItemsRepeat�� 0 uuidgenerator UUIDGenerator�� 0 uuid UUID
�� 
ptag�� 0 stopbool stopBool�� �)���0 �b  �%�&E�Ob  
�,�b  ����e� Ec  O�f � �k)�,j kh b  a �/)a ,FOb  a ,a -a [a ,a ,\Zb  81)a ,FO 0k)a ,j kh )j+ O)a ,)a ,a �/a ,F[OY��OP[OY��Oe)a ,FY hOPUOe)a ,F, �������NO���� 40 deletetheselectedobjects deleteTheSelectedObjects��  ��  N ������ 0 x  �� 0 y  O ��U������������������������������G������
�� 
capp
�� kfrmID  
�� 
sele
�� .corecnte****       ****
�� 
ret 
�� 
btns
�� 
dflt�� 
�� .sysodlogaskr        TEXT�� 0 stopbool stopBool
�� 
cobj�� 0 theselection theSelection
�� 
ptag�� 0 uuid UUID�� 0 opendocuments openDocuments
�� 
pitm
�� .CoRedelonull���     obj ��  ��  �� �)���0 �b  �,Ec  Ob  j k ��%�%����� Of)�,FY �b  �,�-)a ,FO mk)a ,j kh  )a ,�/a ,)a ,FO Ck)a ,j kh  &)a ,�/a -a [a ,\Z)a ,@1j W X  h[OY��[OY��Oe)�,FU- �������PQ����  0 deletealluuids deleteAllUUIDs��  ��  P ���� 0 i  Q 
������������������
�� 
capp
�� kfrmID  
�� 
aPgi�� 0 allpageitems allPageItems
�� .corecnte****       ****
�� 
cobj
�� 
ptag�� 0 stopbool stopBool�� ;)���0 -b  �,)�,FO k)�,j kh  �)�,�/�,F[OY��UOe)�,F. ������RS���� (0 tagselectedobjects tagSelectedObjects��  ��  R ������ 0 x  �� 0 y  S �����������#��%��)��,��������������������
�� 
capp
�� kfrmID  
�� 
sele�� 0 theselection theSelection
�� .corecnte****       ****
�� 
ret 
�� 
btns
�� 
dflt�� 
�� .sysodlogaskr        TEXT�� 0 stopbool stopBool
�� 
cobj
�� 
pcls
�� 
grop
�� 
pitm�� 0 uuidgenerator UUIDGenerator�� 0 uuid UUID
�� 
ptag�� �)���0 �b  �,)�,FO)�,j k ��%�%����� Of)�,FY � k)�,j kh  )�,a �/a ,a   @ :k)�,a �/a -j kh )j+ O)a ,)�,a �/a �/a ,F[OY��Y hO)j+ O)a ,)�,a �/a ,F[OY��Oe)�,FOPU/ �������TU���� ,0 untagselectedobjects untagSelectedObjects��  ��  T ������ 0 x  �� 0 y  U ��������������~��}��|�{�z�y�x�w�v��u�
�� 
capp
�� kfrmID  
�� 
sele�� 0 theselection theSelection
�� .corecnte****       ****
� 
ret 
�~ 
btns
�} 
dflt�| 
�{ .sysodlogaskr        TEXT�z 0 stopbool stopBool
�y 
cobj
�x 
pcls
�w 
grop
�v 
pitm
�u 
ptag�� �)���0 �b  �,)�,FO)�,j k ��%�%����� Of)�,FY x ok)�,j kh  )�,a �/a ,a   8 2k)�,a �/a -j kh a )�,a �/a �/a ,F[OY��Y hOa )�,a �/a ,F[OY��Oe)�,FOPU0 �t��s�rVW�q�t 00 copytheselectedobjects copyTheSelectedObjects�s  �r  V �p�o�p 0 x  �o 0 y  W �n�m�l�k�j��i��h��g��f�e�d�c�b�a�`�_�^�]�\�[�Z
�n 
capp
�m kfrmID  
�l 
sele�k 0 theselection theSelection
�j .corecnte****       ****
�i 
ret 
�h 
btns
�g 
dflt�f 
�e .sysodlogaskr        TEXT�d 0 stopbool stopBool
�c 
cobj
�b 
ptag�a 0 uuid UUID
�` 
pilr�_ 0 mylayer myLayer�^  0 otherdocuments otherDocuments
�] 
insh
�\ 
layr
�[ 
pnam
�Z .CoRedupeobj         obj �q �)���0 �b  �,)�,FOb  j k ��%�%����� Of)�,FY �b  �,a -)�,FO xk)�,j kh  )�,a �/a ,)a ,FO)�,a �/a ,)a ,FO =k)a ,j kh )�,a �/a )a ,a �/a )a ,a ,E/l [OY��[OY��Oe)�,FOPU1 �Y,�X�WXY�V�Y 40 movetheselectedobjectsby moveTheSelectedObjectsBy�X  �W  X �U�T�S�U 0 o  �T 0 x  �S 0 y  Y .�RL�Q�P�O�NN�MP�LT�KW�J�I�H�G�F�Ey�D�C��B�A��@��?�>��=�<�����;�:�9�8G�7�6�5�4
�R 
capp
�Q kfrmID  
�P 
sele�O 0 theselection theSelection
�N .corecnte****       ****
�M 
ret 
�L 
btns
�K 
dflt�J 
�I .sysodlogaskr        TEXT�H 0 stopbool stopBool
�G 
cobj�F *0 xycoordinatesdialog xyCoordinatesDialog�E 0 xvalue xValue
�D misccura
�C 
psof
�B 
psin
�A .sysooffslong    ��� null
�@ 
TEXT
�? 
bool
�> 
ctxt
�= 
nmbr�< 0 yvalue yValue
�; 
ptag�: 0 uuid UUID�9 0 opendocuments openDocuments
�8 
pitm
�7 
by  
�6 .CoRemoveobj         obj �5  �4  �V�)���0�b  �,)�,FO)�,j k ��%�%����� Of)�,FY�b  �,a -)�,FO)j+ O)a ,a  a  *a a a )a ,� UE�O�j	 a a &a  a & 6b  [a \[Zk\Z�k2a %b  [a \[Z�k\Zi2%Ec  Y hOb  a &Ec  Y hO)a  ,a ! a  *a a "a )a  ,� UE�O�j	 a a &a # a & 6b  [a \[Zk\Z�k2a $%b  [a \[Z�k\Zi2%Ec  Y hOb  a &Ec  Y hO |)�,j kih )�,a �/a %,)a &,FO Tk)a ',j kh  7)a ',a �/a (-a )[a %,\Z)a &,@1a *b  b  lvl +W X , -h[OY��[OY��Oe)�,FOPU2 �3Z�2�1Z[�0�3 40 movetheselectedobjectsto moveTheSelectedObjectsTo�2  �1  Z �/�.�-�/ 0 o  �. 0 x  �- 0 y  [ 8�,	��+�*�)�(�'��&��%��$�#�"�����!� ��������	��	��	.�	/��	A�	a	m	�	�����G����
�, 
capp
�+ kfrmID  
�* 
sele�) 0 theselection theSelection
�( .corecnte****       ****
�' 
ret 
�& 
btns
�% 
dflt�$ 
�# .sysodlogaskr        TEXT�" 0 stopbool stopBool
�! 
cobj
�  
gbnd� 0 xvalue xValue� 0 yvalue yValue
� 
pcls
� 
glin� *0 xycoordinatesdialog xyCoordinatesDialog
� misccura
� 
psof
� 
psin
� .sysooffslong    ��� null
� 
TEXT
� 
bool
� 
ctxt
� 
nmbr
� 
ptag� 0 uuid UUID� 0 opendocuments openDocuments
� 
pitm
� 
insh
� .CoRemoveobj         obj �  �  �0^)���0Vb  �,)�,FO)�,j k ��%�%����� Of)�,FY&)�,j k  a �%a %�a �a � Of)�,FY�b  �,a -)�,FO)�,a ,a l/)a ,FO)�,a ,a k/)a ,FO)�,a ,a   a �a �a � OhY hO)j+ O)a ,a  a  *a  a !a ")a ,� #UE�O�j	 a $a %&a & a '& 6)a ,[a (\[Zk\Z�k2a )%)a ,[a (\[Z�k\Zi2%)a ,FY hO)a ,a *&)a ,FY hO)a ,a + a  *a  a ,a ")a ,� #UE�O�j	 a $a %&a - a '& 6)a ,[a (\[Zk\Z�k2a .%)a ,[a (\[Z�k\Zi2%)a ,FY hO)a ,a *&)a ,FY hO |)�,j kih )�,a �/a /,)a 0,FO Tk)a 1,j kh  7)a 1,a �/a 2-a 3[a /,\Z)a 0,@1a 4b  b  lvl 5W X 6 7h[OY��[OY��Oe)�,FOPU3 �
	��	�\]��
 :0 movelayertheselectedobjects moveLayerTheSelectedObjects�	  �  \ ���� $0 chosenlayercolor chosenLayerColor� 0 x  � 0 y  ] *�
���� ��
��
��
��
"��������������
C��
F������������������������������G������
� 
capp
� kfrmID  
� 
sele�  0 theselection theSelection
�� .corecnte****       ****
�� 
ret 
�� 
btns
�� 
dflt�� 
�� .sysodlogaskr        TEXT�� 0 stopbool stopBool
�� 
cobj
�� 
rvse
�� 
inSL
�� 
prmp
�� 
okbt�� 
�� .gtqpchltns    @   @ ns  �� 0 chosenlayer chosenLayer
�� 
layr
�� 
TEXT
�� 
lcol
�� 
ptag�� 0 uuid UUID�� 0 opendocuments openDocuments
�� .CoRedoexbool        obj 
�� 
kocl
�� 
prdt
�� 
pnam
�� .corecrel****      � null
�� 
pitm
�� 
pilr��  ��  �j)���0bb  �,)�,FO)�,j k ��%�%����� Of)�,FY2b  �,a -)�,FOb  
a ,a b  a a a a a  )a ,FOb  a b  a &/a ,E�O �b  j kih )�,a �/a ,)a ,FO �k)a ,j kh b  a �/a b  a &/j   0*a !b  a �/a ,a "a #b  a &a ��� $Y hO @b  a �/a b  a &/b  a �/a %-a &[a ,\Z)a ,@1a ',FW X ( )h[OY�d[OY�:Oe)�,FOPU4 ��
�����^_���� "0 functionchooser functionChooser��  ��  ^  _ ,
�
�
�
�
�	��������!����/��:��G��d��q��~���������������������� 
�� 
inSL
�� 
prmp
�� 
okbt�� 
�� .gtqpchltns    @   @ ns  �� 00 giveallpageitemsanuuid giveAllPageItemsAnUUID�� >0 giveallpageitemsonlayeranuuid giveAllPageItemsOnLayerAnUUID��  0 deletealluuids deleteAllUUIDs�� (0 tagselectedobjects tagSelectedObjects�� ,0 untagselectedobjects untagSelectedObjects�� 40 deletetheselectedobjects deleteTheSelectedObjects�� 00 copytheselectedobjects copyTheSelectedObjects�� 40 movetheselectedobjectsby moveTheSelectedObjectsBy�� 40 movetheselectedobjectsto moveTheSelectedObjectsTo�� :0 movelayertheselectedobjects moveLayerTheSelectedObjects�� "0 settheselection setTheSelection�� 40 jumptofirstuuidduplicate jumpToFirstUUIDDuplicate��9�������������v�b  ��a a a  Ec  Ob  a kv  
)j+ Y �b  a kv  
)j+ Y �b  a kv  )j+ OPY �b  a kv  
)j+ Y �b  a kv  
)j+ Y �b  a kv  
)j+ Y �b  a  kv  
)j+ !Y sb  a "kv  
)j+ #Y ]b  a $kv  
)j+ %Y Gb  a &kv  
)j+ 'Y 1b  a (kv  
)j+ )Y b  a *kv  )j+ +OPY hOP5 �������`a���� 0 deduplicator  �� ��b�� b  ���� 0 l  ��  ` �������� 0 l  �� 0 i  �� 0 x  a �������� 00 deduplicatedlayernames deduplicatedLayerNames
�� .corecnte****       ****
�� 
cobj�� :jv)�,FO ,k�j kh ��/E�O)�,� �)�,6FY h[OY��O)�,E6 ��'����cd���� *0 xycoordinatesdialog xyCoordinatesDialog��  ��  c ������������ 0 mylabelwidth myLabelWidth�� 0 mydialog myDialog�� 0 myxfield myXField�� 0 myyfield myYField�� 0 myresult myResultd �������������A����������Y����c����������
�� 
capp
�� kfrmID  �� 

�� 
uiDL
�� 
prdt
�� 
pnam
�� .corecrel****      � null
�� 
uiCW
�� 
uiRW
�� 
uiSt
�� 
uiSL
�� 
uMnW�� 
�� 
utxE
�� 
uiEC
�� 
TEXT
�� .K2LKshownull���     clnk
�� .UIUIdestnull���     uiDL�� �)���0 ��E�O����ll E�O� s�j  j�j  a�j  ������l O���a ��l UO�j  3a �a b  a &ll E�Oa �a b  a &ll E�UUUUO�j E�O�e  $�a ,Ec  O�a ,Ec  O�j OPY �j OPUOP7 �������ef���� 0 displaytheend displayTheEnd��  ��  e  f �������������
�� 
btns
�� 
dflt
�� 
givu�� 
�� .sysodlogaskr        TEXT�� ������k� 8 �������gh���� 20 displaynotificationlong displayNotificationLong�� ��i�� i  �������� 0 	titletext 	titleText�� 0 subtitletext subtitleText�� 0 bodytext bodyText��  g �������� 0 	titletext 	titleText�� 0 subtitletext subtitleText�� 0 bodytext bodyTexth ��������
�� 
appr
�� 
subt�� 
�� .sysonotfnull��� ��� TEXT�� ���� OP9 ������jk���� 40 displaynotificationshort displayNotificationShort�� ��l�� l  ������ 0 	titletext 	titleText�� 0 bodytext bodyText��  j ������ 0 	titletext 	titleText�� 0 bodytext bodyTextk ����
�� 
appr
�� .sysonotfnull��� ��� TEXT�� 
��l OP: ��m���no�~
�� .aevtoappnull  �   � ****m k    �pp  ��}�}  ��  �  n �|�| 0 i  o �{��z�y�x�w�vG�u�t�s�r�q�p�o�n�m�l�k�j�i�h�g�f�e�d��c��b
�{ 
capp
�z kfrmID  
�y 
pacd�x  0 activedocument activeDocument
�w 
docu�v 0 opendocuments openDocuments
�u 
ID  �t  0 otherdocuments otherDocuments
�s 
layr�r (0 layerlistactivedoc layerListActiveDoc�q 0 stopbool stopBool
�p 
cobj
�o 
sele�n ,0 theoriginalselection theOriginalSelection
�m 
pacw
�l 
cwin
�k 
pare�j 0 	layerlist 	layerList�i 0 layernamelist layerNameList
�h .corecnte****       ****
�g 
pnam
�f 
rvse�e 0 deduplicator  �d "0 functionchooser functionChooser
�c 
TEXT�b 20 displaynotificationlong displayNotificationLong�~�)���0y*�,)�,FO*�-)�,FO*�-�[�,\Zb  �,91)�,FOb  �-)�,FOf)�,FOjjlvE[�k/Ec  Z[�l/Ec  ZOb  �,E�O*a ,Ec  O*a -Ec  O*a -�[a ,�,\Zb  a ,�,91Ec  OjvE` OjvE` OjvEc  O (kb  j kh  _ b  ��/�-%E` [OY��O &k_ j kh  _ _ ��/a ,%E` [OY��O .kb  j kh  b  b  ��/a ,%Ec  [OY��O)_ a ,k+ O)j+ Ob  e  &)a b  �k/a &�j a &a %m+ Y hOPUascr  ��ޭ