FasdUAS 1.101.10   ��   ��    k             l     ��  ��      InDDBTool for InDesign     � 	 	 .   I n D D B T o o l   f o r   I n D e s i g n   
  
 l     ��  ��      version 2.0 beta     �   "   v e r s i o n   2 . 0   b e t a      l     ��������  ��  ��        l     ��  ��    , & created by medul6, Michael Heck, 2013     �   L   c r e a t e d   b y   m e d u l 6 ,   M i c h a e l   H e c k ,   2 0 1 3      l     ��������  ��  ��        l     ��  ��    � z open sourced on May 15th, 2013 on Github > check the LICENSE.txt and README.md in the repository for detailed information     �   �   o p e n   s o u r c e d   o n   M a y   1 5 t h ,   2 0 1 3   o n   G i t h u b   >   c h e c k   t h e   L I C E N S E . t x t   a n d   R E A D M E . m d   i n   t h e   r e p o s i t o r y   f o r   d e t a i l e d   i n f o r m a t i o n      l     ��   ��    4 . https://github.com/medul6/indesign-InDDB-tool      � ! ! \   h t t p s : / / g i t h u b . c o m / m e d u l 6 / i n d e s i g n - I n D D B - t o o l   " # " l     ��������  ��  ��   #  $ % $ l     �� & '��   & z t �������������������������������������������������������������������������������������������������������������������    ' � ( ( �   " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " %  ) * ) l     �� + ,��   +   use statements    , � - -    u s e   s t a t e m e n t s *  . / . x     �� 0����   0 1      ��
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
TEXT� n     ��� o    ���� 0 uuid UUID�  f    �   � ��� l     ��������  ��  ��  � ��� l     ������  � z t �������������������������������������������������������������������������������������������������������������������   � ��� �   " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " "� ��� l     ��������  ��  ��  � ��� i   y |��� I      �������� "0 settheselection setTheSelection��  ��  � O    8��� k   7�� ��� l   ��������  ��  ��  � ��� r    ��� n    ��� 1    ��
�� 
pnam� n    ��� 1    ��
�� 
pacp� 1    ��
�� 
pacw� n     ��� o    ���� 0 
activepage 
activePage�  f    � ��� r    ��� n    ��� 1    ��
�� 
sele� o    ����  0 activedocument activeDocument� n     ��� o    ���� 0 theselection theSelection�  f    � ��� l     ��������  ��  ��  � ��� l     ��������  ��  ��  � ��� Z    5����� A     +��� l    )������ I    )�����
�� .corecnte****       ****� o     %���� 0 theselection theSelection��  ��  ��  � m   ) *���� � k   . G�� ��� I  . ?����
�� .sysodlogaskr        TEXT� b   . 3��� b   . 1��� m   . /�� ��� 2 E s   i s t   n i c h t s   a u s g e w � h l t !� o   / 0��
�� 
ret � m   1 2�� �   6 B i t t e   E I N   O b j e k t   a u s w � h l e n .� ��
�� 
btns m   4 5 �  O K ����
�� 
dflt m   6 9 �  O K��  � �� r   @ G	
	 m   @ A��
�� boovfals
 n      o   B F���� 0 stopbool stopBool  f   A B��  �  ?   J U l  J S���� I  J S����
�� .corecnte****       **** o   J O���� 0 theselection theSelection��  ��  ��   m   S T����  �� k   X w  I  X o��
�� .sysodlogaskr        TEXT b   X a b   X ] m   X [ � F E s   s i n d   m e h r e r e   O b j e k t e   a u s g e w � h l t ! o   [ \��
�� 
ret  m   ] ` �   6 B i t t e   E I N   O b j e k t   a u s w � h l e n . ��!"
�� 
btns! m   b e## �$$  O K" ��%��
�� 
dflt% m   f i&& �''  O K��   (��( r   p w)*) m   p q��
�� boovfals* n     +,+ o   r v���� 0 stopbool stopBool,  f   q r��  ��  � k   z5-- ./. l  z z��01��  0 F @set my theSelection to every item of selection of activeDocument   1 �22 � s e t   m y   t h e S e l e c t i o n   t o   e v e r y   i t e m   o f   s e l e c t i o n   o f   a c t i v e D o c u m e n t/ 343 l  z z��56��  5 3 -repeat with x from 1 to count my theSelection   6 �77 Z r e p e a t   w i t h   x   f r o m   1   t o   c o u n t   m y   t h e S e l e c t i o n4 898 r   z �:;: n   z �<=< 1   � ���
�� 
ptag= n   z �>?> 4   } ���@
�� 
cobj@ m   � ����� ? n  z }ABA o   { }���� 0 theselection theSelectionB  f   z {; n     CDC o   � ����� 0 uuid UUIDD  f   � �9 EFE Y   � �G��HI��G l  � �JKLJ k   � �MM NON r   � �PQP n   � �RSR 4   � ���T
�� 
pageT o   � ����� 0 
activepage 
activePageS n   � �UVU 1   � ���
�� 
pareV n  � �WXW 4   � ���Y
�� 
cobjY o   � ����� 0 x  X o   � ����� 0 openwindows openWindowsQ n      Z[Z 1   � ���
�� 
pacp[ n  � �\]\ 4   � ���^
�� 
cobj^ o   � ����� 0 x  ] o   � ����� 0 openwindows openWindowsO _`_ O   � �aba k   � �cc ded l  � ���fg��  f  select nothing   g �hh  s e l e c t   n o t h i n ge i��i I  � �����j
�� .K2  zmtonull���     Lwin��  j ��k��
�� 
givnk m   � ���
�� zopezfts��  ��  b n  � �lml 4   � ���n
�� 
cobjn o   � ����� 0 x  m o   � ����� 0 openwindows openWindows` o��o l  � ���������  ��  ��  ��  K ; 5 this iterates through the open windows (one or more)   L �pp j   t h i s   i t e r a t e s   t h r o u g h   t h e   o p e n   w i n d o w s   ( o n e   o r   m o r e )�� 0 x  H m   � ����� I I  � ���q��
�� .corecnte****       ****q o   � ����� 0 openwindows openWindows��  ��  F rsr l  � ���������  ��  ��  s tut Y   �-v��wx��v O   �(yzy k  '{{ |}| l ��~��  ~ X Rselect (every page item of my openDocuments's item y whose label contains my UUID)    ��� � s e l e c t   ( e v e r y   p a g e   i t e m   o f   m y   o p e n D o c u m e n t s ' s   i t e m   y   w h o s e   l a b e l   c o n t a i n s   m y   U U I D )} ��� l ������  � N Hset selection of openDocuments's item y to first item of every page item   � ��� � s e t   s e l e c t i o n   o f   o p e n D o c u m e n t s ' s   i t e m   y   t o   f i r s t   i t e m   o f   e v e r y   p a g e   i t e m� ���� r  '��� l #������ 6 #��� n  ��� 2  ��
�� 
pitm� n ��� n ��� 4  	���
�� 
cobj� o  ���� 0 y  � o  	���� 0 opendocuments openDocuments�  f  � E  "��� 1  ��
�� 
ptag� n !��� o  !���� 0 uuid UUID�  f  ��  ��  � 1  #&��
�� 
sele��  z n  ���� 4   ����
�� 
cobj� o   � ���� 0 y  � o   � ����� 0 opendocuments openDocuments�� 0 y  w m   � ����� x I  � ������
�� .corecnte****       ****� n  � ���� o   � ����� 0 opendocuments openDocuments�  f   � ���  ��  u ��� l ..������  �  
end repeat   � ���  e n d   r e p e a t� ���� r  .5��� m  ./�
� boovtrue� n     ��� o  04�~�~ 0 stopbool stopBool�  f  /0��  � ��� l 66�}�|�{�}  �|  �{  � ��z� l 66�y�x�w�y  �x  �w  �z  � 5     �v��u
�v 
capp� m    �� ��� $ c o m . a d o b e . I n D e s i g n
�u kfrmID  � ��� l     �t�s�r�t  �s  �r  � ��� l     �q���q  � z t �������������������������������������������������������������������������������������������������������������������   � ��� �   " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " "� ��� l     �p�o�n�p  �o  �n  � ��� i   } ���� I      �m�l�k�m 00 giveallpageitemsanuuid giveAllPageItemsAnUUID�l  �k  � k     B�� ��� O     <��� k    ;�� ��� l   ���� r    ��� n    ��� 1    �j
�j 
aPgi� o    �i�i  0 activedocument activeDocument� n     ��� o    �h�h 0 allpageitems allPageItems�  f    � , &ich glaube das hier sind ALLE Objekte!   � ��� L i c h   g l a u b e   d a s   h i e r   s i n d   A L L E   O b j e k t e !� ��� l   �g�f�e�g  �f  �e  � ��d� Y    ;��c���b� k   $ 6�� ��� n  $ )��� I   % )�a�`�_�a 0 uuidgenerator UUIDGenerator�`  �_  �  f   $ %� ��^� r   * 6��� n  * -��� o   + -�]�] 0 uuid UUID�  f   * +� n      ��� 1   3 5�\
�\ 
ptag� n   - 3��� 4   0 3�[�
�[ 
cobj� o   1 2�Z�Z 0 i  � n  - 0��� o   . 0�Y�Y 0 allpageitems allPageItems�  f   - .�^  �c 0 i  � m    �X�X � I   �W��V
�W .corecnte****       ****� n   ��� o    �U�U 0 allpageitems allPageItems�  f    �V  �b  �d  � 5     �T��S
�T 
capp� m    �� ��� $ c o m . a d o b e . I n D e s i g n
�S kfrmID  � ��� l  = =�R�Q�P�R  �Q  �P  � ��O� r   = B��� m   = >�N
�N boovtrue� n     ��� o   ? A�M�M 0 stopbool stopBool�  f   > ?�O  � ��� l     �L�K�J�L  �K  �J  � ��� l     �I���I  � z t �������������������������������������������������������������������������������������������������������������������   � ��� �   " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " "� ��� l     �H�G�F�H  �G  �F  � ��� i   � ���� I      �E�D�C�E >0 giveallpageitemsonlayeranuuid giveAllPageItemsOnLayerAnUUID�D  �C  � k     ��� ��� O     �   k    �  l   �B�A�@�B  �A  �@    r     c    	
	 b     o    �?�?  0 functionchoice functionChoice m     �  !
 m    �>
�> 
TEXT o      �=�= 0 
buttonname 
buttonName  r    1 I   +�<
�< .gtqpchltns    @   @ ns   l   �;�: n     1    �9
�9 
rvse o    �8�8 00 deduplicatedlayernames deduplicatedLayerNames�;  �:   �7
�7 
inSL o    !�6�6 0 chosenlayer chosenLayer �5
�5 
prmp m   " # �  E b e n e   w � h l e n : �4
�4 
okbt o   $ %�3�3 0 
buttonname 
buttonName �2 �1
�2 
mlsl  m   & '�0
�0 boovtrue�1   o      �/�/ 0 chosenlayer chosenLayer !"! l  2 2�.�-�,�.  �-  �,  " #$# Z   2 �%&�+�*% >  2 5'(' l  2 3)�)�() 1   2 3�'
�' 
rslt�)  �(  ( m   3 4�&
�& boovfals& k   8 �** +,+ Y   8 �-�%./�$- k   H �00 121 r   H X343 n   H R565 4   M R�#7
�# 
cobj7 o   P Q�"�" 0 i  6 l  H M8�!� 8 o   H M�� 0 chosenlayer chosenLayer�!  �   4 n     9:9 o   S W�� &0 chosenlayerrepeat chosenLayerRepeat:  f   R S2 ;<; l  Y Y����  �  �  < =>= r   Y �?@? l  Y {A��A 6  Y {BCB n   Y fDED 2   b f�
� 
cobjE n   Y bFGF 1   ^ b�
� 
aPgiG o   Y ^��  0 activedocument activeDocumentC =  i zHIH n   j rJKJ 1   n r�
� 
pnamK n  j nLML 1   j n�
� 
pilrM  g   j jI o   s y�� &0 chosenlayerrepeat chosenLayerRepeat�  �  @ n     NON o   | ��� (0 allpageitemsrepeat allPageItemsRepeatO  f   { |> PQP l  � �����  �  �  Q RSR Y   � �T�UV�T k   � �WW XYX n  � �Z[Z I   � ����
� 0 uuidgenerator UUIDGenerator�  �
  [  f   � �Y \�	\ r   � �]^] n  � �_`_ o   � ��� 0 uuid UUID`  f   � �^ n      aba 1   � ��
� 
ptagb n   � �cdc 4   � ��e
� 
cobje o   � ��� 0 i  d n  � �fgf o   � ��� (0 allpageitemsrepeat allPageItemsRepeatg  f   � ��	  � 0 i  U m   � ��� V I  � ��h�
� .corecnte****       ****h n  � �iji o   � �� �  (0 allpageitemsrepeat allPageItemsRepeatj  f   � ��  �  S k��k l  � ���������  ��  ��  ��  �% 0 i  . m   ; <���� / I  < C��l��
�� .corecnte****       ****l n  < ?mnm o   = ?���� 0 chosenlayer chosenLayern  f   < =��  �$  , o��o r   � �pqp m   � ���
�� boovtrueq n     rsr o   � ����� 0 stopbool stopBools  f   � ���  �+  �*  $ t��t l  � ���������  ��  ��  ��   5     ��u��
�� 
cappu m    vv �ww $ c o m . a d o b e . I n D e s i g n
�� kfrmID  � xyx l  � ���������  ��  ��  y z��z r   � �{|{ m   � ���
�� boovtrue| n     }~} o   � ����� 0 stopbool stopBool~  f   � ���  � � l     ��������  ��  ��  � ��� l     ��������  ��  ��  � ��� l     ������  � z t �������������������������������������������������������������������������������������������������������������������   � ��� �   " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " "� ��� l     ��������  ��  ��  � ��� i   � ���� I      �������� 40 deletetheselectedobjects deleteTheSelectedObjects��  ��  � O     ���� k    ��� ��� l   ��������  ��  ��  � ��� r    ��� n    ��� 1    ��
�� 
sele� o    ����  0 activedocument activeDocument� o      ���� 0 theselection theSelection� ���� Z    ������� A    !��� l   ������ I   �����
�� .corecnte****       ****� o    ���� 0 theselection theSelection��  ��  ��  � m     ���� � k   $ 7�� ��� I  $ 1����
�� .sysodlogaskr        TEXT� b   $ )��� b   $ '��� m   $ %�� ��� 2 E s   i s t   n i c h t s   a u s g e w � h l t !� o   % &��
�� 
ret � m   ' (�� ��� R B i t t e   e i n   o d e r   m e h r e r e   O b j e k t e   a u s w � h l e n .� ����
�� 
btns� m   * +�� ���  O K� �����
�� 
dflt� m   , -�� ���  O K��  � ���� r   2 7��� m   2 3��
�� boovfals� n     ��� o   4 6���� 0 stopbool stopBool�  f   3 4��  ��  � k   : ��� ��� r   : I��� n   : C��� 2   A C��
�� 
cobj� n   : A��� 1   ? A��
�� 
sele� o   : ?����  0 activedocument activeDocument� n     ��� o   D H���� 0 theselection theSelection�  f   C D� ��� Y   J ��������� k   \ ��� ��� r   \ n��� n   \ h��� 1   d h��
�� 
ptag� n   \ d��� 4   a d���
�� 
cobj� o   b c���� 0 x  � n  \ a��� o   ] a���� 0 theselection theSelection�  f   \ ]� n     ��� o   i m���� 0 uuid UUID�  f   h i� ���� Y   o ��������� Q   � ������ I  � ������
�� .CoRedelonull���     obj � l  � ������� 6  � ���� n   � ���� 2   � ���
�� 
pitm� n  � ���� n  � ���� 4   � ����
�� 
cobj� o   � ����� 0 y  � o   � ����� 0 opendocuments openDocuments�  f   � �� E   � ���� 1   � ���
�� 
ptag� n  � ���� o   � ����� 0 uuid UUID�  f   � ���  ��  ��  � R      ������
�� .ascrerr ****      � ****��  ��  ��  �� 0 y  � m   r s���� � I  s |�����
�� .corecnte****       ****� n  s x��� o   t x���� 0 opendocuments openDocuments�  f   s t��  ��  ��  �� 0 x  � m   M N���� � I  N W�����
�� .corecnte****       ****� n  N S��� o   O S���� 0 theselection theSelection�  f   N O��  ��  � ���� r   � ���� m   � ���
�� boovtrue� n     ��� o   � ����� 0 stopbool stopBool�  f   � ���  ��  � 5     �����
�� 
capp� m    �� ��� $ c o m . a d o b e . I n D e s i g n
�� kfrmID  � ��� l     ��������  ��  ��  � ��� l     ��� ��  � z t �������������������������������������������������������������������������������������������������������������������     � �   " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " "�  l     ��������  ��  ��    l     ����   B <on transferUUIDsFromATaggedSourceDocumentToATargetDocument()    � x o n   t r a n s f e r U U I D s F r o m A T a g g e d S o u r c e D o c u m e n t T o A T a r g e t D o c u m e n t ( ) 	
	 l     ����   / )	tell application id "com.adobe.InDesign"    � R 	 t e l l   a p p l i c a t i o n   i d   " c o m . a d o b e . I n D e s i g n "
  l     ����   B <		set allPageItemsSource to all page items of activeDocument    � x 	 	 s e t   a l l P a g e I t e m s S o u r c e   t o   a l l   p a g e   i t e m s   o f   a c t i v e D o c u m e n t  l     ����   K E		set allPageItemsTarget to all page items of otherDocuments's item 1    � � 	 	 s e t   a l l P a g e I t e m s T a r g e t   t o   a l l   p a g e   i t e m s   o f   o t h e r D o c u m e n t s ' s   i t e m   1  l     ����    		    �  	 	  l     �� ��   1 +		set itemCount to count allPageItemsSource     �!! V 	 	 s e t   i t e m C o u n t   t o   c o u n t   a l l P a g e I t e m s S o u r c e "#" l     ��$%��  $  		   % �&&  	 	# '(' l     ��)*��  ) 8 2		repeat with i from 1 to count allPageItemsSource   * �++ d 	 	 r e p e a t   w i t h   i   f r o m   1   t o   c o u n t   a l l P a g e I t e m s S o u r c e( ,-, l     ��./��  . ; 5			set loopINDID to id of allPageItemsSource's item i   / �00 j 	 	 	 s e t   l o o p I N D I D   t o   i d   o f   a l l P a g e I t e m s S o u r c e ' s   i t e m   i- 121 l     ��34��  3 = 7			set loopUUID to label of allPageItemsSource's item i   4 �55 n 	 	 	 s e t   l o o p U U I D   t o   l a b e l   o f   a l l P a g e I t e m s S o u r c e ' s   i t e m   i2 676 l     ��89��  8  			try   9 �::  	 	 	 t r y7 ;<; l     ��=>��  = m g				set targetObject to (first item of all page items of otherDocuments's item 1 whose id is loopINDID)   > �?? � 	 	 	 	 s e t   t a r g e t O b j e c t   t o   ( f i r s t   i t e m   o f   a l l   p a g e   i t e m s   o f   o t h e r D o c u m e n t s ' s   i t e m   1   w h o s e   i d   i s   l o o p I N D I D )< @A@ l     ��BC��  B / )				set label of targetObject to loopUUID   C �DD R 	 	 	 	 s e t   l a b e l   o f   t a r g e t O b j e c t   t o   l o o p U U I DA EFE l     ��GH��  G  
			end try   H �II  	 	 	 e n d   t r yF JKJ l     ��LM��  L  		end repeat   M �NN  	 	 e n d   r e p e a tK OPO l     ��QR��  Q  		end tell   R �SS  	 e n d   t e l lP TUT l     ��VW��  V  	set my stopBool to true   W �XX 0 	 s e t   m y   s t o p B o o l   t o   t r u eU YZY l     ��[\��  [ A ;end transferUUIDsFromATaggedSourceDocumentToATargetDocument   \ �]] v e n d   t r a n s f e r U U I D s F r o m A T a g g e d S o u r c e D o c u m e n t T o A T a r g e t D o c u m e n tZ ^_^ l     ��������  ��  ��  _ `a` l     ��bc��  b z t �������������������������������������������������������������������������������������������������������������������   c �dd �   " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " "a efe l     ��~�}�  �~  �}  f ghg i   � �iji I      �|�{�z�|  0 deletealluuids deleteAllUUIDs�{  �z  j k     :kk lml O     4non k    3pp qrq l   stus r    vwv n    xyx 1    �y
�y 
aPgiy o    �x�x  0 activedocument activeDocumentw n     z{z o    �w�w 0 allpageitems allPageItems{  f    t , &ich glaube das hier sind ALLE Objekte!   u �|| L i c h   g l a u b e   d a s   h i e r   s i n d   A L L E   O b j e k t e !r }~} l   �v�u�t�v  �u  �t  ~ �s Y    3��r���q� r   $ .��� m   $ %�� ���  � n      ��� 1   + -�p
�p 
ptag� n   % +��� 4   ( +�o�
�o 
cobj� o   ) *�n�n 0 i  � n  % (��� o   & (�m�m 0 allpageitems allPageItems�  f   % &�r 0 i  � m    �l�l � I   �k��j
�k .corecnte****       ****� n   ��� o    �i�i 0 allpageitems allPageItems�  f    �j  �q  �s  o 5     �h��g
�h 
capp� m    �� ��� $ c o m . a d o b e . I n D e s i g n
�g kfrmID  m ��f� r   5 :��� m   5 6�e
�e boovtrue� n     ��� o   7 9�d�d 0 stopbool stopBool�  f   6 7�f  h ��� l     �c�b�a�c  �b  �a  � ��� l     �`���`  � z t �������������������������������������������������������������������������������������������������������������������   � ��� �   " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " "� ��� l     �_�^�]�_  �^  �]  � ��� i   � ���� I      �\�[�Z�\ (0 tagselectedobjects tagSelectedObjects�[  �Z  � O     ���� k    ��� ��� r    ��� n    ��� 1    �Y
�Y 
sele� o    �X�X  0 activedocument activeDocument� n     ��� o    �W�W 0 theselection theSelection�  f    � ��� l   �V�U�T�V  �U  �T  � ��� Z    ����S�� A    ��� l   ��R�Q� I   �P��O
�P .corecnte****       ****� n   ��� o    �N�N 0 theselection theSelection�  f    �O  �R  �Q  � m    �M�M � k     3�� ��� I    -�L��
�L .sysodlogaskr        TEXT� b     %��� b     #��� m     !�� ��� 2 E s   i s t   n i c h t s   a u s g e w � h l t !� o   ! "�K
�K 
ret � m   # $�� ��� 6 B i t t e   E I N   O b j e k t   a u s w � h l e n .� �J��
�J 
btns� m   & '�� ���  O K� �I��H
�I 
dflt� m   ( )�� ���  O K�H  � ��G� r   . 3��� m   . /�F
�F boovfals� n     ��� o   0 2�E�E 0 stopbool stopBool�  f   / 0�G  �S  � k   6 ��� ��� Y   6 ���D���C� k   F ��� ��� Z   F ����B�A� =   F V��� n   F R��� m   N R�@
�@ 
pcls� n   F N��� 4   I N�?�
�? 
cobj� o   L M�>�> 0 x  � n  F I��� o   G I�=�= 0 theselection theSelection�  f   F G� m   R U�<
�< 
grop� Y   Y ���;���:� k   r ��� ��� n  r w��� I   s w�9�8�7�9 0 uuidgenerator UUIDGenerator�8  �7  �  f   r s� ��6� r   x ���� n  x }��� o   y }�5�5 0 uuid UUID�  f   x y� n      ��� 1   � ��4
�4 
ptag� n   } ���� 4   � ��3�
�3 
pitm� o   � ��2�2 0 y  � n   } ���� 4   � ��1�
�1 
cobj� o   � ��0�0 0 x  � n  } �   o   ~ ��/�/ 0 theselection theSelection  f   } ~�6  �; 0 y  � m   \ ]�.�. � I  ] m�-�,
�- .corecnte****       **** l  ] i�+�* n   ] i 2   e i�)
�) 
pitm n   ] e 4   ` e�(
�( 
cobj o   c d�'�' 0 x   n  ] `	
	 o   ^ `�&�& 0 theselection theSelection
  f   ] ^�+  �*  �,  �:  �B  �A  �  n  � � I   � ��%�$�#�% 0 uuidgenerator UUIDGenerator�$  �#    f   � � �" r   � � n  � � o   � ��!�! 0 uuid UUID  f   � � n       1   � �� 
�  
ptag n   � � 4   � ��
� 
cobj o   � ��� 0 x   n  � � o   � ��� 0 theselection theSelection  f   � ��"  �D 0 x  � m   9 :�� � I  : A��
� .corecnte****       **** n  : = o   ; =�� 0 theselection theSelection  f   : ;�  �C  � � r   � �  m   � ��
� boovtrue  n     !"! o   � ��� 0 stopbool stopBool"  f   � ��  � #�# l  � �����  �  �  �  � 5     �$�
� 
capp$ m    %% �&& $ c o m . a d o b e . I n D e s i g n
� kfrmID  � '(' l     ����  �  �  ( )*) l     �+,�  + z t �������������������������������������������������������������������������������������������������������������������   , �-- �   " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " "* ./. l     ��
�	�  �
  �	  / 010 i   � �232 I      ���� ,0 untagselectedobjects untagSelectedObjects�  �  3 O     �454 k    �66 787 r    9:9 n    ;<; 1    �
� 
sele< o    ��  0 activedocument activeDocument: n     =>= o    �� 0 theselection theSelection>  f    8 ?@? l   ��� �  �  �   @ ABA Z    �CD��EC A    FGF l   H����H I   ��I��
�� .corecnte****       ****I n   JKJ o    ���� 0 theselection theSelectionK  f    ��  ��  ��  G m    ���� D k     3LL MNM I    -��OP
�� .sysodlogaskr        TEXTO b     %QRQ b     #STS m     !UU �VV 2 E s   i s t   n i c h t s   a u s g e w � h l t !T o   ! "��
�� 
ret R m   # $WW �XX 6 B i t t e   E I N   O b j e k t   a u s w � h l e n .P ��YZ
�� 
btnsY m   & '[[ �\\  O KZ ��]��
�� 
dflt] m   ( )^^ �__  O K��  N `��` r   . 3aba m   . /��
�� boovfalsb n     cdc o   0 2���� 0 stopbool stopBoold  f   / 0��  ��  E k   6 �ee fgf Y   6 �h��ij��h k   F �kk lml Z   F �no����n =   F Vpqp n   F Rrsr m   N R��
�� 
pclss n   F Ntut 4   I N��v
�� 
cobjv o   L M���� 0 x  u n  F Iwxw o   G I���� 0 theselection theSelectionx  f   F Gq m   R U��
�� 
gropo Y   Y �y��z{��y r   r �|}| m   r u~~ �  } n      ��� 1   � ���
�� 
ptag� n   u ���� 4   } ����
�� 
pitm� o   � ����� 0 y  � n   u }��� 4   x }���
�� 
cobj� o   { |���� 0 x  � n  u x��� o   v x���� 0 theselection theSelection�  f   u v�� 0 y  z m   \ ]���� { I  ] m�����
�� .corecnte****       ****� l  ] i������ n   ] i��� 2   e i��
�� 
pitm� n   ] e��� 4   ` e���
�� 
cobj� o   c d���� 0 x  � n  ] `��� o   ^ `���� 0 theselection theSelection�  f   ] ^��  ��  ��  ��  ��  ��  m ���� r   � ���� m   � ��� ���  � n      ��� 1   � ���
�� 
ptag� n   � ���� 4   � ����
�� 
cobj� o   � ����� 0 x  � n  � ���� o   � ����� 0 theselection theSelection�  f   � ���  �� 0 x  i m   9 :���� j I  : A�����
�� .corecnte****       ****� n  : =��� o   ; =���� 0 theselection theSelection�  f   : ;��  ��  g ���� r   � ���� m   � ���
�� boovtrue� n     ��� o   � ����� 0 stopbool stopBool�  f   � ���  B ���� l  � ���������  ��  ��  ��  5 5     �����
�� 
capp� m    �� ��� $ c o m . a d o b e . I n D e s i g n
�� kfrmID  1 ��� l     ��������  ��  ��  � ��� l     ������  � z t �������������������������������������������������������������������������������������������������������������������   � ��� �   " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " "� ��� l     ��������  ��  ��  � ��� l     ������  � &  on transformTheSelectedObjects()   � ��� @ o n   t r a n s f o r m T h e S e l e c t e d O b j e c t s ( )� ��� l     ������  � / )	tell application id "com.adobe.InDesign"   � ��� R 	 t e l l   a p p l i c a t i o n   i d   " c o m . a d o b e . I n D e s i g n "� ��� l     ������  �  		   � ���  	 	� ��� l     ������  � 7 1		set theSelection to selection of activeDocument   � ��� b 	 	 s e t   t h e S e l e c t i o n   t o   s e l e c t i o n   o f   a c t i v e D o c u m e n t� ��� l     ������  � + %		if (count of theSelection) < 1 then   � ��� J 	 	 i f   ( c o u n t   o f   t h e S e l e c t i o n )   <   1   t h e n� ��� l     ������  � � �			display dialog "Es ist nichts ausgew�hlt!" & return & "Bitte ein oder mehrere Objekte ausw�hlen." buttons "OK" default button "OK"   � ���
 	 	 	 d i s p l a y   d i a l o g   " E s   i s t   n i c h t s   a u s g e w � h l t ! "   &   r e t u r n   &   " B i t t e   e i n   o d e r   m e h r e r e   O b j e k t e   a u s w � h l e n . "   b u t t o n s   " O K "   d e f a u l t   b u t t o n   " O K "� ��� l     ������  �  		else   � ���  	 	 e l s e� ��� l     ������  � F @			set theSelection to every item of selection of activeDocument   � ��� � 	 	 	 s e t   t h e S e l e c t i o n   t o   e v e r y   i t e m   o f   s e l e c t i o n   o f   a c t i v e D o c u m e n t� ��� l     ������  � 	 			   � ���  	 	 	� ��� l     ������  � 5 /			--repeat with x from 1 to count theSelection   � ��� ^ 	 	 	 - - r e p e a t   w i t h   x   f r o m   1   t o   c o u n t   t h e S e l e c t i o n� ��� l     ������  � ; 5			repeat with x from (count theSelection) to 1 by -1   � ��� j 	 	 	 r e p e a t   w i t h   x   f r o m   ( c o u n t   t h e S e l e c t i o n )   t o   1   b y   - 1� ��� l     ������  � 8 2				set my UUID to label of item x of theSelection   � ��� d 	 	 	 	 s e t   m y   U U I D   t o   l a b e l   o f   i t e m   x   o f   t h e S e l e c t i o n� ��� l     ������  � F @				set myGeometry to geometric bounds of item x of theSelection   � ��� � 	 	 	 	 s e t   m y G e o m e t r y   t o   g e o m e t r i c   b o u n d s   o f   i t e m   x   o f   t h e S e l e c t i o n� ��� l     ������  � 6 0				repeat with y from 1 to count otherDocuments   � ��� ` 	 	 	 	 r e p e a t   w i t h   y   f r o m   1   t o   c o u n t   o t h e r D o c u m e n t s� ��� l     ������  �  					   � ��� 
 	 	 	 	 	� � � l     ����   z t					set geometric bounds of (every page item of otherDocuments's item y whose label contains my UUID) to myGeometry    � � 	 	 	 	 	 s e t   g e o m e t r i c   b o u n d s   o f   ( e v e r y   p a g e   i t e m   o f   o t h e r D o c u m e n t s ' s   i t e m   y   w h o s e   l a b e l   c o n t a i n s   m y   U U I D )   t o   m y G e o m e t r y   l     ����    				end repeat    �  	 	 	 	 e n d   r e p e a t 	
	 l     ����    			end repeat    �  	 	 	 e n d   r e p e a t
  l     ����    		end if    �  	 	 e n d   i f  l     ����    		    �  	 	  l     ����    		end tell    �  	 e n d   t e l l  l     �� ��   % end transformTheSelectedObjects     �!! > e n d   t r a n s f o r m T h e S e l e c t e d O b j e c t s "#" l     ��������  ��  ��  # $%$ l     ��&'��  & z t �������������������������������������������������������������������������������������������������������������������   ' �(( �   " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " "% )*) l     ��������  ��  ��  * +,+ i   � �-.- I      �������� 00 copytheselectedobjects copyTheSelectedObjects��  ��  . O     �/0/ k    �11 232 l   ��������  ��  ��  3 454 r    676 n    898 1    ��
�� 
sele9 o    ����  0 activedocument activeDocument7 n     :;: o    ���� 0 theselection theSelection;  f    5 <=< Z    �>?��@> A    ABA l   C����C I   ��D��
�� .corecnte****       ****D o    ���� 0 theselection theSelection��  ��  ��  B m    ���� ? k   " 5EE FGF I  " /��HI
�� .sysodlogaskr        TEXTH b   " 'JKJ b   " %LML m   " #NN �OO 2 E s   i s t   n i c h t s   a u s g e w � h l t !M o   # $��
�� 
ret K m   % &PP �QQ R B i t t e   e i n   o d e r   m e h r e r e   O b j e k t e   a u s w � h l e n .I ��RS
�� 
btnsR m   ( )TT �UU  O KS ��V��
�� 
dfltV m   * +WW �XX  O K��  G Y��Y r   0 5Z[Z m   0 1��
�� boovfals[ n     \]\ o   2 4���� 0 stopbool stopBool]  f   1 2��  ��  @ k   8 �^^ _`_ r   8 Gaba n   8 Ccdc 2   ? C��
�� 
cobjd n   8 ?efe 1   = ?��
�� 
selef o   8 =����  0 activedocument activeDocumentb n     ghg o   D F���� 0 theselection theSelectionh  f   C D` iji l  H H��������  ��  ��  j klk Y   H �m��no��m k   X �pp qrq l  X X�st�  s 8 2repeat with x from (count theSelection) to 1 by -1   t �uu d r e p e a t   w i t h   x   f r o m   ( c o u n t   t h e S e l e c t i o n )   t o   1   b y   - 1r vwv r   X jxyx n   X dz{z 1   ` d�~
�~ 
ptag{ n   X `|}| 4   [ `�}~
�} 
cobj~ o   ^ _�|�| 0 x  } n  X [� o   Y [�{�{ 0 theselection theSelection�  f   X Yy n     ��� o   e i�z�z 0 uuid UUID�  f   d ew ��� l  k k�y���y  �  myLayer   � ���  m y L a y e r� ��� r   k }��� n   k w��� 1   s w�x
�x 
pilr� n   k s��� 4   n s�w�
�w 
cobj� o   q r�v�v 0 x  � n  k n��� o   l n�u�u 0 theselection theSelection�  f   k l� n     ��� o   x |�t�t 0 mylayer myLayer�  f   w x� ��s� Y   ~ ���r���q� k   � ��� ��� l  � ��p���p  � U Odelete (every page item of openDocuments's item y whose label contains my UUID)   � ��� � d e l e t e   ( e v e r y   p a g e   i t e m   o f   o p e n D o c u m e n t s ' s   i t e m   y   w h o s e   l a b e l   c o n t a i n s   m y   U U I D )� ��o� I  � ��n��
�n .CoRedupeobj         obj � n   � ���� 4   � ��m�
�m 
cobj� o   � ��l�l 0 x  � n  � ���� o   � ��k�k 0 theselection theSelection�  f   � �� �j��i
�j 
insh� n   � ���� 4   � ��h�
�h 
layr� l  � ���g�f� n   � ���� 1   � ��e
�e 
pnam� n  � ���� o   � ��d�d 0 mylayer myLayer�  f   � ��g  �f  � n  � ���� n  � ���� 4   � ��c�
�c 
cobj� o   � ��b�b 0 y  � o   � ��a�a  0 otherdocuments otherDocuments�  f   � ��i  �o  �r 0 y  � m   � ��`�` � I  � ��_��^
�_ .corecnte****       ****� n  � ���� o   � ��]�]  0 otherdocuments otherDocuments�  f   � ��^  �q  �s  �� 0 x  n m   K L�\�\ o I  L S�[��Z
�[ .corecnte****       ****� n  L O��� o   M O�Y�Y 0 theselection theSelection�  f   L M�Z  ��  l ��X� r   � ���� m   � ��W
�W boovtrue� n     ��� o   � ��V�V 0 stopbool stopBool�  f   � ��X  = ��U� l  � ��T�S�R�T  �S  �R  �U  0 5     �Q��P
�Q 
capp� m    �� ��� $ c o m . a d o b e . I n D e s i g n
�P kfrmID  , ��� l     �O�N�M�O  �N  �M  � ��� l     �L���L  � z t �������������������������������������������������������������������������������������������������������������������   � ��� �   " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " "� ��� l     �K�J�I�K  �J  �I  � ��� i   � ���� I      �H�G�F�H 40 movetheselectedobjectsby moveTheSelectedObjectsBy�G  �F  � O    ���� k   ��� ��� l   �E�D�C�E  �D  �C  � ��� r    ��� n    ��� 1    �B
�B 
sele� o    �A�A  0 activedocument activeDocument� n     ��� o    �@�@ 0 theselection theSelection�  f    � ��� Z   ����?�� A    ��� l   ��>�=� I   �<��;
�< .corecnte****       ****� n   ��� o    �:�: 0 theselection theSelection�  f    �;  �>  �=  � m    �9�9 � k     3�� ��� I    -�8��
�8 .sysodlogaskr        TEXT� b     %��� b     #��� m     !�� ��� 2 E s   i s t   n i c h t s   a u s g e w � h l t !� o   ! "�7
�7 
ret � m   # $�� ��� R B i t t e   e i n   o d e r   m e h r e r e   O b j e k t e   a u s w � h l e n .� �6��
�6 
btns� m   & '�� ���  O K� �5��4
�5 
dflt� m   ( )�� ���  O K�4  � ��3� r   . 3��� m   . /�2
�2 boovfals� n        o   0 2�1�1 0 stopbool stopBool  f   / 0�3  �?  � k   6�  r   6 E n   6 A 2   = A�0
�0 
cobj n   6 =	
	 1   ; =�/
�/ 
sele
 o   6 ;�.�.  0 activedocument activeDocument n      o   B D�-�- 0 theselection theSelection  f   A B  l  F F�,�+�*�,  �+  �*    n  F K I   G K�)�(�'�) *0 xycoordinatesdialog xyCoordinatesDialog�(  �'    f   F G  l  L L�&�%�$�&  �%  �$    Z   L ��#�" E   L U n  L Q o   M Q�!�! 0 xvalue xValue  f   L M m   Q T �  , k   X �  !  r   X t"#" l  X r$� �$ I  X r%�&% z��
� .sysooffslong    ��� null
� misccura�  & �'(
� 
psof' m   b e)) �**  ,( �+�
� 
psin+ n  h m,-, o   i m�� 0 xvalue xValue-  f   h i�  �   �  # o      �� 0 o  ! ./. Z  u �01��0 l  u �2��2 F   u �343 l  u x5��5 ?   u x676 o   u v�� 0 o  7 m   v w��  �  �  4 l  { �8��8 =  { �9:9 c   { �;<; m   { ~==         < m   ~ ��
� 
TEXT: m   � �>> �??  0 , 0�  �  �  �  1 r   � �@A@ l  � �B��
B b   � �CDC b   � �EFE n   � �GHG 7  � ��	IJ
�	 
ctxtI m   � ��� J l  � �K��K \   � �LML o   � ��� 0 o  M m   � ��� �  �  H o   � ��� 0 xvalue xValueF m   � �NN �OO  ,D n   � �PQP 7  � ��RS
� 
ctxtR l  � �T�� T [   � �UVU o   � ����� 0 o  V m   � ����� �  �   S m   � �������Q o   � ����� 0 xvalue xValue�  �
  A o      ���� 0 xvalue xValue�  �  / W��W r   � �XYX c   � �Z[Z o   � ����� 0 xvalue xValue[ m   � ���
�� 
nmbrY o      ���� 0 xvalue xValue��  �#  �"   \]\ l  � ���������  ��  ��  ] ^_^ Z   �a`a����` E   � �bcb n  � �ded o   � ����� 0 yvalue yValuee  f   � �c m   � �ff �gg  ,a k   �]hh iji r   � �klk l  � �m����m I  � �n��on z����
�� .sysooffslong    ��� null
�� misccura��  o ��pq
�� 
psofp m   � �rr �ss  ,q ��t��
�� 
psint n  � �uvu o   � ����� 0 yvalue yValuev  f   � ���  ��  ��  l o      ���� 0 o  j wxw Z  Myz����y l  {����{ F   |}| l  ~����~ ?   � o   ���� 0 o  � m  ����  ��  ��  } l ������ = ��� c  ��� m  	��         � m  	��
�� 
TEXT� m  �� ���  0 , 0��  ��  ��  ��  z r  I��� l C������ b  C��� b  /��� n  +��� 7 +����
�� 
ctxt� m  #%���� � l &*������ \  &*��� o  '(���� 0 o  � m  ()���� ��  ��  � o  ���� 0 yvalue yValue� m  +.�� ���  ,� n  /B��� 7 4B����
�� 
ctxt� l :>������ [  :>��� o  ;<���� 0 o  � m  <=���� ��  ��  � m  ?A������� o  /4���� 0 yvalue yValue��  ��  � o      ���� 0 yvalue yValue��  ��  x ���� r  N]��� c  NW��� o  NS���� 0 yvalue yValue� m  SV��
�� 
nmbr� o      ���� 0 yvalue yValue��  ��  ��  _ ��� l bb��������  ��  ��  � ��� Y  b�������� k  r��� ��� r  r���� n  r~��� 1  z~��
�� 
ptag� n  rz��� 4  uz���
�� 
cobj� o  xy���� 0 x  � n ru��� o  su���� 0 theselection theSelection�  f  rs� n     ��� o  ����� 0 uuid UUID�  f  ~� ��� l ��������  � B <set myGeometry to geometric bounds of item x of theSelection   � ��� x s e t   m y G e o m e t r y   t o   g e o m e t r i c   b o u n d s   o f   i t e m   x   o f   t h e S e l e c t i o n� ���� Y  ���������� k  ���� ��� l ��������  � u oset geometric bounds of (every page item of otherDocuments's item y whose label contains my UUID) to myGeometry   � ��� � s e t   g e o m e t r i c   b o u n d s   o f   ( e v e r y   p a g e   i t e m   o f   o t h e r D o c u m e n t s ' s   i t e m   y   w h o s e   l a b e l   c o n t a i n s   m y   U U I D )   t o   m y G e o m e t r y� ���� Q  ������� I ������
�� .CoRemoveobj         obj � l �������� 6 ����� n  ����� 2  ����
�� 
pitm� n ����� n ����� 4  �����
�� 
cobj� o  ������ 0 y  � o  ������ 0 opendocuments openDocuments�  f  ��� E  ����� 1  ����
�� 
ptag� n ����� o  ������ 0 uuid UUID�  f  ����  ��  � �����
�� 
by  � J  ���� ��� o  ������ 0 xvalue xValue� ���� o  ������ 0 yvalue yValue��  ��  � R      ������
�� .ascrerr ****      � ****��  ��  ��  ��  �� 0 y  � m  ������ � I �������
�� .corecnte****       ****� n ����� o  ������ 0 opendocuments openDocuments�  f  ����  ��  ��  �� 0 x  � l el������ I el�����
�� .corecnte****       ****� n eh��� o  fh���� 0 theselection theSelection�  f  ef��  ��  ��  � m  lm���� � m  mn������� ���� r  ����� m  ����
�� boovtrue� n     ��� o  ������ 0 stopbool stopBool�  f  ����  � ���� l ����������  ��  ��  ��  � 5     �����
�� 
capp� m    �� ��� $ c o m . a d o b e . I n D e s i g n
�� kfrmID  � ��� l     ��������  ��  ��  � ��� l     ������  � z t �������������������������������������������������������������������������������������������������������������������   � ��� �   " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " "� ��� l     ��������  ��  ��  � ��� i   � ���� I      �������� 40 movetheselectedobjectsto moveTheSelectedObjectsTo��  ��  � O    ]� � k   \  l   ��������  ��  ��    r     n    	 1    ��
�� 
sele	 o    ����  0 activedocument activeDocument n     

 o    ���� 0 theselection theSelection  f      l   �������  ��  �    Z   Z A     l   �~�} I   �|�{
�| .corecnte****       **** n    o    �z�z 0 theselection theSelection  f    �{  �~  �}   m    �y�y  k     3  I    -�x
�x .sysodlogaskr        TEXT b     %  b     #!"! m     !## �$$ 2 E s   i s t   n i c h t s   a u s g e w � h l t !" o   ! "�w
�w 
ret   m   # $%% �&& 6 B i t t e   E I N   O b j e k t   a u s w � h l e n . �v'(
�v 
btns' m   & ')) �**  O K( �u+�t
�u 
dflt+ m   ( ),, �--  O K�t   .�s. r   . 3/0/ m   . /�r
�r boovfals0 n     121 o   0 2�q�q 0 stopbool stopBool2  f   / 0�s   343 ?   6 ?565 l  6 =7�p�o7 I  6 =�n8�m
�n .corecnte****       ****8 n  6 99:9 o   7 9�l�l 0 theselection theSelection:  f   6 7�m  �p  �o  6 m   = >�k�k 4 ;�j; k   B ]<< =>= I  B W�i?@
�i .sysodlogaskr        TEXT? b   B KABA b   B GCDC m   B EEE �FF F E s   s i n d   m e h r e r e   O b j e k t e   a u s g e w � h l t !D o   E F�h
�h 
ret B m   G JGG �HH > B i t t e   n u r   E I N   O b j e k t   a u s w � h l e n .@ �gIJ
�g 
btnsI m   L OKK �LL  O KJ �fM�e
�f 
dfltM m   P SNN �OO  O K�e  > P�dP r   X ]QRQ m   X Y�c
�c boovfalsR n     STS o   Z \�b�b 0 stopbool stopBoolT  f   Y Z�d  �j   k   `ZUU VWV r   ` oXYX n   ` kZ[Z 2   g k�a
�a 
cobj[ n   ` g\]\ 1   e g�`
�` 
sele] o   ` e�_�_  0 activedocument activeDocumentY n     ^_^ o   l n�^�^ 0 theselection theSelection_  f   k lW `a` l  p p�]�\�[�]  �\  �[  a bcb r   p �ded n   p |fgf 4   w |�Zh
�Z 
cobjh m   z {�Y�Y g n   p wiji 1   s w�X
�X 
gbndj n  p sklk o   q s�W�W 0 theselection theSelectionl  f   p qe n     mnm o   } ��V�V 0 xvalue xValuen  f   | }c opo r   � �qrq n   � �sts 4   � ��Uu
�U 
cobju m   � ��T�T t n   � �vwv 1   � ��S
�S 
gbndw n  � �xyx o   � ��R�R 0 theselection theSelectiony  f   � �r n     z{z o   � ��Q�Q 0 yvalue yValue{  f   � �p |}| l  � ��P�O�N�P  �O  �N  } ~~ Z   � ����M�L� =  � ���� n   � ���� m   � ��K
�K 
pcls� n  � ���� o   � ��J�J 0 theselection theSelection�  f   � �� m   � ��I
�I 
glin� k   � ��� ��� l  � ����� I  � ��H��
�H .sysodlogaskr        TEXT� m   � ��� ��� Z L i n i e n   m i t   d e r   a n d e r e n   M e t h o d e   v e r s c h i e b e n ! ! !� �G��
�G 
btns� m   � ��� ���  O K� �F��E
�F 
dflt� m   � ��� ���  O K�E  � 8 2buttons {"Stop", "Weiter"} default button "Weiter"   � ��� d b u t t o n s   { " S t o p " ,   " W e i t e r " }   d e f a u l t   b u t t o n   " W e i t e r "� ��� l  � ��D���D  � = 7if button returned of result is "Stop" then exit repeat   � ��� n i f   b u t t o n   r e t u r n e d   o f   r e s u l t   i s   " S t o p "   t h e n   e x i t   r e p e a t� ��C� L   � ��B�B  �C  �M  �L   ��� l  � ��A�@�?�A  �@  �?  � ��� l  � ��>�=�<�>  �=  �<  � ��� n  � ���� I   � ��;�:�9�; *0 xycoordinatesdialog xyCoordinatesDialog�:  �9  �  f   � �� ��� l  � ��8�7�6�8  �7  �6  � ��� Z   �K���5�4� E   � ���� n  � ���� o   � ��3�3 0 xvalue xValue�  f   � �� m   � ��� ���  ,� k   �G�� ��� r   � ���� l  � ���2�1� I  � ���0�� z�/�.
�/ .sysooffslong    ��� null
�. misccura�0  � �-��
�- 
psof� m   � ��� ���  ,� �,��+
�, 
psin� n  � ���� o   � ��*�* 0 xvalue xValue�  f   � ��+  �2  �1  � o      �)�) 0 o  � ��� Z  �7���(�'� l  � ���&�%� F   � ���� l  � ���$�#� ?   � ���� o   � ��"�" 0 o  � m   � ��!�!  �$  �#  � l  � ��� �� =  � ���� c   � ���� m   � ���         � m   � ��
� 
TEXT� m   � ��� ���  0 , 0�   �  �&  �%  � r  3��� l -���� b  -��� b  ��� n  ��� 7 ���
� 
ctxt� m  �� � l ���� \  ��� o  �� 0 o  � m  �� �  �  � n ��� o  �� 0 xvalue xValue�  f  � m  �� ���  ,� n  ,��� 7 ,���
� 
ctxt� l $(���� [  $(��� o  %&�� 0 o  � m  &'�� �  �  � m  )+����� n ��� o  �� 0 xvalue xValue�  f  �  �  � n     ��� o  .2�� 0 xvalue xValue�  f  -.�(  �'  � ��� r  8G��� c  8A��� n 8=��� o  9=�� 0 xvalue xValue�  f  89� m  =@�

�
 
nmbr� n     ��� o  BF�	�	 0 xvalue xValue�  f  AB�  �5  �4  � ��� l LL����  �  �  � ��� Z  L��	 ��� E  LU			 n LQ			 o  MQ�� 0 yvalue yValue	  f  LM	 m  QT		 �		  ,	  k  X�		 				 r  Xt	
		
 l Xr	��	 I Xr	� 		 z����
�� .sysooffslong    ��� null
�� misccura�   	 ��		
�� 
psof	 m  be		 �		  ,	 ��	��
�� 
psin	 n hm			 o  im���� 0 yvalue yValue	  f  hi��  �  �  	 o      ���� 0 o  		 			 Z u�		����	 l u�	����	 F  u�			 l ux	����	 ?  ux			 o  uv���� 0 o  	 m  vw����  ��  ��  	 l {�	 ����	  = {�	!	"	! c  {�	#	$	# m  {~	%	%         	$ m  ~���
�� 
TEXT	" m  ��	&	& �	'	'  0 , 0��  ��  ��  ��  	 r  ��	(	)	( l ��	*����	* b  ��	+	,	+ b  ��	-	.	- n  ��	/	0	/ 7 ����	1	2
�� 
ctxt	1 m  ������ 	2 l ��	3����	3 \  ��	4	5	4 o  ������ 0 o  	5 m  ������ ��  ��  	0 n ��	6	7	6 o  ������ 0 yvalue yValue	7  f  ��	. m  ��	8	8 �	9	9  ,	, n  ��	:	;	: 7 ����	<	=
�� 
ctxt	< l ��	>����	> [  ��	?	@	? o  ������ 0 o  	@ m  ������ ��  ��  	= m  ��������	; n ��	A	B	A o  ������ 0 yvalue yValue	B  f  ����  ��  	) n     	C	D	C o  ������ 0 yvalue yValue	D  f  ����  ��  	 	E��	E r  ��	F	G	F c  ��	H	I	H n ��	J	K	J o  ������ 0 yvalue yValue	K  f  ��	I m  ����
�� 
nmbr	G n     	L	M	L o  ������ 0 yvalue yValue	M  f  ����  �  �  � 	N	O	N l ����������  ��  ��  	O 	P	Q	P Y  �T	R��	S	T	U	R k  �O	V	V 	W	X	W r  ��	Y	Z	Y n  ��	[	\	[ 1  ����
�� 
ptag	\ n  ��	]	^	] 4  ����	_
�� 
cobj	_ o  ������ 0 x  	^ n ��	`	a	` o  ������ 0 theselection theSelection	a  f  ��	Z n     	b	c	b o  ������ 0 uuid UUID	c  f  ��	X 	d��	d Y  �O	e��	f	g��	e Q  J	h	i��	h I A��	j	k
�� .CoRemoveobj         obj 	j l .	l����	l 6 .	m	n	m n  	o	p	o 2  ��
�� 
pitm	p n 	q	r	q n 	s	t	s 4  ��	u
�� 
cobj	u o  ���� 0 y  	t o  ���� 0 opendocuments openDocuments	r  f  	n E   -	v	w	v 1  !%��
�� 
ptag	w n &,	x	y	x o  (,���� 0 uuid UUID	y  f  &(��  ��  	k ��	z��
�� 
insh	z J  1=	{	{ 	|	}	| o  16���� 0 xvalue xValue	} 	~��	~ o  6;���� 0 yvalue yValue��  ��  	i R      ������
�� .ascrerr ****      � ****��  ��  ��  �� 0 y  	f m  ������ 	g I ���	��
�� .corecnte****       ****	 n �	�	�	� o  ����� 0 opendocuments openDocuments	�  f  ����  ��  ��  �� 0 x  	S l ��	�����	� I ����	���
�� .corecnte****       ****	� n ��	�	�	� o  ������ 0 theselection theSelection	�  f  ����  ��  ��  	T m  ������ 	U m  ��������	Q 	���	� r  UZ	�	�	� m  UV��
�� boovtrue	� n     	�	�	� o  WY���� 0 stopbool stopBool	�  f  VW��   	���	� l [[��������  ��  ��  ��    5     ��	���
�� 
capp	� m    	�	� �	�	� $ c o m . a d o b e . I n D e s i g n
�� kfrmID  � 	�	�	� l     ��������  ��  ��  	� 	�	�	� l     ��	�	���  	� z t �������������������������������������������������������������������������������������������������������������������   	� �	�	� �   " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " "	� 	�	�	� l     ��������  ��  ��  	� 	�	�	� i   � �	�	�	� I      �������� :0 movelayertheselectedobjects moveLayerTheSelectedObjects��  ��  	� O    i	�	�	� k   h	�	� 	�	�	� l   ��������  ��  ��  	� 	�	�	� r    	�	�	� n    	�	�	� 1    ��
�� 
sele	� o    ����  0 activedocument activeDocument	� n     	�	�	� o    ���� 0 theselection theSelection	�  f    	� 	�	�	� Z   f	�	���	�	� A    	�	�	� l   	�����	� I   ��	���
�� .corecnte****       ****	� n   	�	�	� o    ���� 0 theselection theSelection	�  f    ��  ��  ��  	� m    ���� 	� k     3	�	� 	�	�	� I    -��	�	�
�� .sysodlogaskr        TEXT	� b     %	�	�	� b     #	�	�	� m     !	�	� �	�	� 2 E s   i s t   n i c h t s   a u s g e w � h l t !	� o   ! "��
�� 
ret 	� m   # $	�	� �	�	� R B i t t e   e i n   o d e r   m e h r e r e   O b j e k t e   a u s w � h l e n .	� ��	�	�
�� 
btns	� m   & '	�	� �	�	�  O K	� ��	���
�� 
dflt	� m   ( )	�	� �	�	�  O K��  	� 	���	� r   . 3	�	�	� m   . /��
�� boovfals	� n     	�	�	� o   0 2���� 0 stopbool stopBool	�  f   / 0��  ��  	� k   6f	�	� 	�	�	� r   6 E	�	�	� n   6 A	�	�	� 2   = A��
�� 
cobj	� n   6 =	�	�	� 1   ; =��
�� 
sele	� o   6 ;����  0 activedocument activeDocument	� n     	�	�	� o   B D���� 0 theselection theSelection	�  f   A B	� 	�	�	� l  F F��������  ��  ��  	� 	�	�	� r   F o	�	�	� I  F i��	�	�
�� .gtqpchltns    @   @ ns  	� l  F O	���~	� n   F O	�	�	� 1   K O�}
�} 
rvse	� o   F K�|�| 00 deduplicatedlayernames deduplicatedLayerNames�  �~  	� �{	�	�
�{ 
inSL	� o   R W�z�z 0 chosenlayer chosenLayer	� �y	�	�
�y 
prmp	� m   Z ]	�	� �	�	� $ Z i e l - E b e n e   w � h l e n :	� �x	��w
�x 
okbt	� m   ` c	�	� �	�	�  V e r s c h i e b e n�w  	� n     	�	�	� o   j n�v�v 0 chosenlayer chosenLayer	�  f   i j	� 	�	�	� l  p p�u�t�s�u  �t  �s  	� 	�	�	� r   p �	�	�	� n   p �	�	�	� 1   � ��r
�r 
lcol	� n   p �	�	�	� 4   u ��q	�
�q 
layr	� l  x �	��p�o	� c   x �	�	�	� o   x }�n�n 0 chosenlayer chosenLayer	� m   } ��m
�m 
TEXT�p  �o  	� o   p u�l�l  0 activedocument activeDocument	� o      �k�k $0 chosenlayercolor chosenLayerColor	� 	�	�	� l  � ��j�i�h�j  �i  �h  	� 	�	�	� l  � ��g
 
�g  
  0 *repeat with x from 1 to count theSelection   
 �

 T r e p e a t   w i t h   x   f r o m   1   t o   c o u n t   t h e S e l e c t i o n	� 


 Y   �`
�f



 k   �[
	
	 




 r   � �


 n   � �


 1   � ��e
�e 
ptag
 n   � �


 4   � ��d

�d 
cobj
 o   � ��c�c 0 x  
 n  � �


 o   � ��b�b 0 theselection theSelection
  f   � �
 n     


 o   � ��a�a 0 uuid UUID
  f   � �
 


 l  � ��`

�`  
 B <set myGeometry to geometric bounds of item x of theSelection   
 �

 x s e t   m y G e o m e t r y   t o   g e o m e t r i c   b o u n d s   o f   i t e m   x   o f   t h e S e l e c t i o n
 
�_
 Y   �[
�^

�]
 k   �V
 
  
!
"
! l  � ��\
#
$�\  
# u oset geometric bounds of (every page item of otherDocuments's item y whose label contains my UUID) to myGeometry   
$ �
%
% � s e t   g e o m e t r i c   b o u n d s   o f   ( e v e r y   p a g e   i t e m   o f   o t h e r D o c u m e n t s ' s   i t e m   y   w h o s e   l a b e l   c o n t a i n s   m y   U U I D )   t o   m y G e o m e t r y
" 
&
'
& l  � ��[
(
)�[  
( g amove (every page item of openDocuments's item y whose label contains my UUID) by {xValue, yValue}   
) �
*
* � m o v e   ( e v e r y   p a g e   i t e m   o f   o p e n D o c u m e n t s ' s   i t e m   y   w h o s e   l a b e l   c o n t a i n s   m y   U U I D )   b y   { x V a l u e ,   y V a l u e }
' 
+
,
+ Z  �
-
.�Z�Y
- H   � �
/
/ l  � �
0�X�W
0 I  � ��V
1�U
�V .CoRedoexbool        obj 
1 n   � �
2
3
2 4   � ��T
4
�T 
layr
4 l  � �
5�S�R
5 c   � �
6
7
6 o   � ��Q�Q 0 chosenlayer chosenLayer
7 m   � ��P
�P 
TEXT�S  �R  
3 n  � �
8
9
8 4   � ��O
:
�O 
cobj
: o   � ��N�N 0 y  
9 o   � ��M�M 0 opendocuments openDocuments�U  �X  �W  
. I  �
�L�K
;
�L .corecrel****      � null�K  
; �J
<
=
�J 
kocl
< n   � �
>
?
> m   � ��I
�I 
layr
? n  � �
@
A
@ 4   � ��H
B
�H 
cobj
B o   � ��G�G 0 y  
A o   � ��F�F 0 opendocuments openDocuments
= �E
C�D
�E 
prdt
C K   �
D
D �C
E
F
�C 
pnam
E l  � 
G�B�A
G c   � 
H
I
H o   � ��@�@ 0 chosenlayer chosenLayer
I m   � ��?
�? 
TEXT�B  �A  
F �>
J�=
�> 
lcol
J o  �<�< $0 chosenlayercolor chosenLayerColor�=  �D  �Z  �Y  
, 
K�;
K Q  V
L
M�:
L r  M
N
O
N n  )
P
Q
P 4  )�9
R
�9 
layr
R l (
S�8�7
S c  (
T
U
T o  $�6�6 0 chosenlayer chosenLayer
U m  $'�5
�5 
TEXT�8  �7  
Q n 
V
W
V 4  �4
X
�4 
cobj
X o  �3�3 0 y  
W o  �2�2 0 opendocuments openDocuments
O n      
Y
Z
Y 1  HL�1
�1 
pilr
Z l )H
[�0�/
[ 6 )H
\
]
\ n  )7
^
_
^ 2  37�.
�. 
pitm
_ n )3
`
a
` 4  .3�-
b
�- 
cobj
b o  12�,�, 0 y  
a o  ).�+�+ 0 opendocuments openDocuments
] E  :G
c
d
c 1  ;?�*
�* 
ptag
d n @F
e
f
e o  BF�)�) 0 uuid UUID
f  f  @B�0  �/  
M R      �(�'�&
�( .ascrerr ****      � ****�'  �&  �:  �;  �^ 0 y  
 m   � ��%�% 
 I  � ��$
g�#
�$ .corecnte****       ****
g n  � �
h
i
h o   � ��"�" 0 opendocuments openDocuments
i  f   � ��#  �]  �_  �f 0 x  
 l  � �
j�!� 
j I  � ��
k�
� .corecnte****       ****
k o   � ��� 0 theselection theSelection�  �!  �   
 m   � ��� 
 m   � �����
 
l�
l r  af
m
n
m m  ab�
� boovtrue
n n     
o
p
o o  ce�� 0 stopbool stopBool
p  f  bc�  	� 
q�
q l gg����  �  �  �  	� 5     �
r�
� 
capp
r m    
s
s �
t
t $ c o m . a d o b e . I n D e s i g n
� kfrmID  	� 
u
v
u l     ����  �  �  
v 
w
x
w l     �
y
z�  
y z t �������������������������������������������������������������������������������������������������������������������   
z �
{
{ �   " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " "
x 
|
}
| l     ����  �  �  
} 
~

~ l     �

�
��
  
� � � the functionChooser shows the user a list dialog with the functions of the script. after choosing the desired function gets called (together with one or more arguments)   
� �
�
�R   t h e   f u n c t i o n C h o o s e r   s h o w s   t h e   u s e r   a   l i s t   d i a l o g   w i t h   t h e   f u n c t i o n s   o f   t h e   s c r i p t .   a f t e r   c h o o s i n g   t h e   d e s i r e d   f u n c t i o n   g e t s   c a l l e d   ( t o g e t h e r   w i t h   o n e   o r   m o r e   a r g u m e n t s )
 
�
�
� i   � �
�
�
� I      �	���	 "0 functionchooser functionChooser�  �  
� k    
�
� 
�
�
� r     %
�
�
� I    �
�
�
� .gtqpchltns    @   @ ns  
� J     
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
�
�
� m    
�
� �
�
� 8 A u s g e w � h l t e   O b j e k t e   l � s c h e n !
� 
�
�
� m    
�
� �
�
� < A u s g e w � h l t e   O b j e k t e   v e r t e i l e n !
� 
�
�
� m    
�
� �
�
� R A u s g e w � h l t e   O b j e k t e   v e r s c h i e b e n   ( u m   x , y ) !
� 
�
�
� m    	
�
� �
�
� T A u s g e w � h l t e   O b j e k t e   v e r s c h i e b e n   ( a u f   x , y ) !
� 
�
�
� m   	 

�
� �
�
� X A u s g e w � h l t e   O b j e k t e   v e r s c h i e b e n   ( a u f   E b e n e ) !
� 
��
� m   
 
�
� �
�
� < A u s g e w � h l t e   O b j e k t e   a u s w � h l e n !�  
� �
�
�
� 
inSL
� o    ��  0 functionchoice functionChoice
� �
�
�
� 
prmp
� m    
�
� �
�
�   F u n k t i o n   w � h l e n :
� �
�� 
� 
okbt
� m    
�
� �
�
�  W e i t e r !�   
� o      ����  0 functionchoice functionChoice
� 
�
�
� l  & &��������  ��  ��  
� 
�
�
� Z   &
�
�
���
� =   & 1
�
�
� l  & +
�����
� o   & +����  0 functionchoice functionChoice��  ��  
� J   + 0
�
� 
���
� m   + .
�
� �
�
� ( A l l e   O b j e k t e   t a g g e n !��  
� n  4 9
�
�
� I   5 9�������� 00 giveallpageitemsanuuid giveAllPageItemsAnUUID��  ��  
�  f   4 5
� 
�
�
� =   < G
�
�
� l  < A
�����
� o   < A����  0 functionchoice functionChoice��  ��  
� J   A F
�
� 
���
� m   A D
�
� �
�
� B A l l e   O b j e k t e   a u f   E b e n e   t a g g e n   . . .��  
� 
�
�
� n  J O
�
�
� I   K O�������� >0 giveallpageitemsonlayeranuuid giveAllPageItemsOnLayerAnUUID��  ��  
�  f   J K
� 
�
�
� =   R ]
�
�
� l  R W
�����
� o   R W����  0 functionchoice functionChoice��  ��  
� J   W \
�
� 
���
� m   W Z
�
� �
�
� . A l l e   O b j e k t e   e n t t a g g e n !��  
� 
�
�
� k   ` g
�
� 
�
�
� n  ` e
�
�
� I   a e��������  0 deletealluuids deleteAllUUIDs��  ��  
�  f   ` a
� 
�
�
� l  f f��������  ��  ��  
� 
�
�
� l  f f��
�
���  
� S Melse if the functionChoice = {"Alle UUIDs aus Quelldokument �bertragen"} then   
� �
�
� � e l s e   i f   t h e   f u n c t i o n C h o i c e   =   { " A l l e   U U I D s   a u s   Q u e l l d o k u m e n t   � b e r t r a g e n " }   t h e n
� 
�
�
� l  f f��
�
���  
� C =	my transferUUIDsFromATaggedSourceDocumentToATargetDocument()   
� �
�
� z 	 m y   t r a n s f e r U U I D s F r o m A T a g g e d S o u r c e D o c u m e n t T o A T a r g e t D o c u m e n t ( )
� 
���
� l  f f��������  ��  ��  ��  
� 
�
�
� =   j u
� 
� l  j o���� o   j o����  0 functionchoice functionChoice��  ��    J   o t �� m   o r � 6 A u s g e w � h l t e   O b j e k t e   t a g g e n !��  
�  n  x }	 I   y }�������� (0 tagselectedobjects tagSelectedObjects��  ��  	  f   x y 

 =   � � l  � ����� o   � �����  0 functionchoice functionChoice��  ��   J   � � �� m   � � � < A u s g e w � h l t e   O b j e k t e   e n t t a g g e n !��    n  � � I   � ��������� ,0 untagselectedobjects untagSelectedObjects��  ��    f   � �  =   � � l  � ����� o   � �����  0 functionchoice functionChoice��  ��   J   � � �� m   � � � 8 A u s g e w � h l t e   O b j e k t e   l � s c h e n !��    !  n  � �"#" I   � ��������� 40 deletetheselectedobjects deleteTheSelectedObjects��  ��  #  f   � �! $%$ =   � �&'& l  � �(����( o   � �����  0 functionchoice functionChoice��  ��  ' J   � �)) *��* m   � �++ �,, < A u s g e w � h l t e   O b j e k t e   v e r t e i l e n !��  % -.- n  � �/0/ I   � ��������� 00 copytheselectedobjects copyTheSelectedObjects��  ��  0  f   � �. 121 =   � �343 l  � �5����5 o   � �����  0 functionchoice functionChoice��  ��  4 J   � �66 7��7 m   � �88 �99 R A u s g e w � h l t e   O b j e k t e   v e r s c h i e b e n   ( u m   x , y ) !��  2 :;: n  � �<=< I   � ��������� 40 movetheselectedobjectsby moveTheSelectedObjectsBy��  ��  =  f   � �; >?> =   � �@A@ l  � �B����B o   � �����  0 functionchoice functionChoice��  ��  A J   � �CC D��D m   � �EE �FF T A u s g e w � h l t e   O b j e k t e   v e r s c h i e b e n   ( a u f   x , y ) !��  ? GHG n  � �IJI I   � ��������� 40 movetheselectedobjectsto moveTheSelectedObjectsTo��  ��  J  f   � �H KLK =   � �MNM l  � �O����O o   � �����  0 functionchoice functionChoice��  ��  N J   � �PP Q��Q m   � �RR �SS X A u s g e w � h l t e   O b j e k t e   v e r s c h i e b e n   ( a u f   E b e n e ) !��  L TUT n  �VWV I   ��������� :0 movelayertheselectedobjects moveLayerTheSelectedObjects��  ��  W  f   � �U XYX =  Z[Z l 	\����\ o  	����  0 functionchoice functionChoice��  ��  [ J  	]] ^��^ m  	__ �`` < A u s g e w � h l t e   O b j e k t e   a u s w � h l e n !��  Y a��a k  bb cdc n efe I  �������� "0 settheselection setTheSelection��  ��  f  f  d ghg l ��������  ��  ��  h iji l ��kl��  k V Pelse if the functionChoice = {"Ausgew�hlte Objekte transformieren (beta!)"} then   l �mm � e l s e   i f   t h e   f u n c t i o n C h o i c e   =   { " A u s g e w � h l t e   O b j e k t e   t r a n s f o r m i e r e n   ( b e t a ! ) " }   t h e nj n��n l ��op��  o ' !	my transformTheSelectedObjects()   p �qq B 	 m y   t r a n s f o r m T h e S e l e c t e d O b j e c t s ( )��  ��  ��  
� r��r l ��������  ��  ��  ��  
� sts l     ��������  ��  ��  t uvu l     ��wx��  w z t �������������������������������������������������������������������������������������������������������������������   x �yy �   " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " "v z{z l     ��������  ��  ��  { |}| l     ��~��  ~ T N the duplicator take a list as an argument and returns a new deduplicated list    ��� �   t h e   d u p l i c a t o r   t a k e   a   l i s t   a s   a n   a r g u m e n t   a n d   r e t u r n s   a   n e w   d e d u p l i c a t e d   l i s t} ��� i  � ���� I      ������� 0 deduplicator  � ���� o      ���� 0 l  ��  ��  � k     9�� ��� r     ��� J     ����  � n     ��� o    ���� 00 deduplicatedlayernames deduplicatedLayerNames�  f    � ��� Y    4�������� k    /�� ��� r    ��� l   ������ n   ��� 4    ���
�� 
cobj� o    ���� 0 i  � o    ���� 0 l  ��  ��  � o      ���� 0 x  � ���� Z   /������� H    "�� E   !��� n   ��� o    ���� 00 deduplicatedlayernames deduplicatedLayerNames�  f    � o     �� 0 x  � r   % +��� o   % &�~�~ 0 x  � n      ���  ;   ) *� n  & )��� o   ' )�}�} 00 deduplicatedlayernames deduplicatedLayerNames�  f   & '��  ��  ��  �� 0 i  � m   
 �|�| � I   �{��z
�{ .corecnte****       ****� o    �y�y 0 l  �z  ��  � ��x� n  5 9��� o   6 8�w�w 00 deduplicatedlayernames deduplicatedLayerNames�  f   5 6�x  � ��� l     �v�u�t�v  �u  �t  � ��� l     �s���s  � z t �������������������������������������������������������������������������������������������������������������������   � ��� �   " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " "� ��� l     �r�q�p�r  �q  �p  � ��� i   � ���� I      �o�n�m�o *0 xycoordinatesdialog xyCoordinatesDialog�n  �m  � k     ��� ��� l     �l�k�j�l  �k  �j  � ��� O     ���� k    ��� ��� l   �i�h�g�i  �h  �g  � ��� r    ��� m    	�f�f 
� o      �e�e 0 mylabelwidth myLabelWidth� ��� l   �d�c�b�d  �c  �b  � ��� r    ��� I   �a��
�a .corecrel****      � null� m    �`
�` 
uiDL� �_��^
�_ 
prdt� K    �� �]��\
�] 
pnam� m    �� ��� ( K o o r d i n a t e n   e i n g e b e n�\  �^  � o      �[�[ 0 mydialog myDialog� ��� O    ���� O    ���� O   % ���� k   - ��� ��� O   - Q��� k   5 P�� ��� I  5 A�Z��
�Z .corecrel****      � null� m   5 6�Y
�Y 
uiSt� �X��W
�X 
prdt� K   7 =�� �V��
�V 
uiSL� m   8 9�� ���  x :� �U��T
�U 
uMnW� o   : ;�S�S 0 mylabelwidth myLabelWidth�T  �W  � ��R� I  B P�Q��
�Q .corecrel****      � null� m   B C�P
�P 
uiSt� �O��N
�O 
prdt� K   D L�� �M��
�M 
uiSL� m   E H�� ���  y :� �L��K
�L 
uMnW� o   I J�J�J 0 mylabelwidth myLabelWidth�K  �N  �R  � l  - 2��I�H� I  - 2�G��F
�G .corecrel****      � null� m   - .�E
�E 
uiCW�F  �I  �H  � ��D� O   R ���� k   Z ��� � � r   Z r I  Z p�C
�C .corecrel****      � null m   Z ]�B
�B 
utxE �A�@
�A 
prdt K   ^ l �?�>
�? 
uiEC l  a j�=�< c   a j	
	 o   a f�;�; 0 xvalue xValue
 m   f i�:
�: 
TEXT�=  �<  �>  �@   o      �9�9 0 myxfield myXField  �8 r   s � I  s ��7
�7 .corecrel****      � null m   s v�6
�6 
utxE �5�4
�5 
prdt K   w � �3�2
�3 
uiEC l  z ��1�0 c   z � o   z �/�/ 0 yvalue yValue m    ��.
�. 
TEXT�1  �0  �2  �4   o      �-�- 0 myyfield myYField�8  � l  R W�,�+ I  R W�*�)
�* .corecrel****      � null m   R S�(
�( 
uiCW�)  �,  �+  �D  � l  % *�'�& I  % *�%�$
�% .corecrel****      � null m   % &�#
�# 
uiRW�$  �'  �&  � l   "�"�! I   "� �
�  .corecrel****      � null m    �
� 
uiCW�  �"  �!  � o    �� 0 mydialog myDialog�  l  � �����  �  �    r   � � !  I  � ��"�
� .K2LKshownull���     clnk" o   � ��� 0 mydialog myDialog�  ! o      �� 0 myresult myResult #$# Z   � �%&�'% =  � �()( o   � ��� 0 myresult myResult) m   � ��
� boovtrue& k   � �** +,+ r   � �-.- n   � �/0/ 1   � ��
� 
uiEC0 o   � ��� 0 myxfield myXField. o      �� 0 xvalue xValue, 121 r   � �343 n   � �565 1   � ��
� 
uiEC6 o   � ��� 0 myyfield myYField4 o      �� 0 yvalue yValue2 787 I  � ��9�
� .UIUIdestnull���     uiDL9 o   � ��
�
 0 mydialog myDialog�  8 :�	: l  � ��;<�  ; $ my doSomething(xValue, yValue)   < �== < m y   d o S o m e t h i n g ( x V a l u e ,   y V a l u e )�	  �  ' I  � ��>�
� .UIUIdestnull���     uiDL> o   � ��� 0 mydialog myDialog�  $ ?�? l  � �����  �  �  �  � 5     � @��
�  
capp@ m    AA �BB $ c o m . a d o b e . I n D e s i g n
�� kfrmID  � C��C l  � ���������  ��  ��  ��  � DED l     ��������  ��  ��  E FGF l     ��HI��  H z t �������������������������������������������������������������������������������������������������������������������   I �JJ �   " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " "G KLK l     ��������  ��  ��  L MNM i   � �OPO I      �������� 0 displaytheend displayTheEnd��  ��  P I    ��QR
�� .sysodlogaskr        TEXTQ m     SS �TT  F e r t i g !R ��UV
�� 
btnsU m    WW �XX  O KV ��YZ
�� 
dfltY m    [[ �\\  O KZ ��]��
�� 
givu] m    ���� ��  N ^_^ l     ��������  ��  ��  _ `a` l     ��bc��  b z t �������������������������������������������������������������������������������������������������������������������   c �dd �   " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " "a efe l     ��������  ��  ��  f ghg l     ��ij��  i L Fmy displayNotificationLong("Title text", "Subtitle text", "Body text")   j �kk � m y   d i s p l a y N o t i f i c a t i o n L o n g ( " T i t l e   t e x t " ,   " S u b t i t l e   t e x t " ,   " B o d y   t e x t " )h lml i   � �non I      ��p���� 20 displaynotificationlong displayNotificationLongp qrq o      ���� 0 	titletext 	titleTextr sts o      ���� 0 subtitletext subtitleTextt u��u o      ���� 0 bodytext bodyText��  ��  o k     vv wxw l    	yz{y I    	��|}
�� .sysonotfnull��� ��� TEXT| o     ���� 0 bodytext bodyText} ��~
�� 
appr~ o    ���� 0 	titletext 	titleText �����
�� 
subt� o    ���� 0 subtitletext subtitleText��  z  sound name "default"   { ��� ( s o u n d   n a m e   " d e f a u l t "x ���� l  
 
������  �  	delay 0.5   � ���  d e l a y   0 . 5��  m ��� l     ��������  ��  ��  � ��� l     ������  � z t �������������������������������������������������������������������������������������������������������������������   � ��� �   " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " "� ��� l     ��������  ��  ��  � ��� l     ������  � < 6my displayNotificationShort("Title text", "Body text")   � ��� l m y   d i s p l a y N o t i f i c a t i o n S h o r t ( " T i t l e   t e x t " ,   " B o d y   t e x t " )� ��� i   � ���� I      ������� 40 displaynotificationshort displayNotificationShort� ��� o      ���� 0 	titletext 	titleText� ���� o      ���� 0 bodytext bodyText��  ��  � k     	�� ��� l    ���� I    ����
�� .sysonotfnull��� ��� TEXT� o     ���� 0 bodytext bodyText� �����
�� 
appr� o    ���� 0 	titletext 	titleText��  �  sound name "default"   � ��� ( s o u n d   n a m e   " d e f a u l t "� ���� l   ������  �  	delay 0.5   � ���  d e l a y   0 . 5��  � ��� l     ��������  ��  ��  � ��� l     ������  � z t �������������������������������������������������������������������������������������������������������������������   � ��� �   " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " "� ���� l     ������  � u o Here starts the garbage, the left-overs, whatever you want call it ... or if I cleaned it up, this is the end!   � ��� �   H e r e   s t a r t s   t h e   g a r b a g e ,   t h e   l e f t - o v e r s ,   w h a t e v e r   y o u   w a n t   c a l l   i t   . . .   o r   i f   I   c l e a n e d   i t   u p ,   t h i s   i s   t h e   e n d !��       X������������������������������������������������������������������������������������������������������������������������������������������  � V����������������������~�}�|�{�z�y�x�w�v�u�t�s�r�q�p�o�n�m�l�k�j�i�h�g�f�e�d�c�b�a�`�_�^�]�\�[�Z�Y�X�W�V�U�T�S�R�Q�P�O�N�M�L�K�J�I�H�G�F�E�D�C�B�A�@�?�>�=�<�;�:�9�8�7�6�5�4
�� 
pimr�� 0 uuid UUID��  0 functionchoice functionChoice�� 0 chosenlayer chosenLayer�� &0 chosenlayerrepeat chosenLayerRepeat�� 0 allpageitems allPageItems�� (0 allpageitemsrepeat allPageItemsRepeat��  0 activedocument activeDocument�� 0 opendocuments openDocuments��  0 otherdocuments otherDocuments� 00 deduplicatedlayernames deduplicatedLayerNames�~ (0 layerlistactivedoc layerListActiveDoc�} 00 layernamelistactivedoc layerNameListActiveDoc�| 0 stopbool stopBool�{ 0 theselection theSelection�z 0 
mygeometry 
myGeometry�y 0 mylayer myLayer�x 0 xvalue xValue�w 0 yvalue yValue�v 0 activewindow activeWindow�u 0 otherwindows otherWindows�t 0 openwindows openWindows�s 0 
activepage 
activePage�r 0 thezoom theZoom�q 0 uuidgenerator UUIDGenerator�p "0 settheselection setTheSelection�o 00 giveallpageitemsanuuid giveAllPageItemsAnUUID�n >0 giveallpageitemsonlayeranuuid giveAllPageItemsOnLayerAnUUID�m 40 deletetheselectedobjects deleteTheSelectedObjects�l  0 deletealluuids deleteAllUUIDs�k (0 tagselectedobjects tagSelectedObjects�j ,0 untagselectedobjects untagSelectedObjects�i 00 copytheselectedobjects copyTheSelectedObjects�h 40 movetheselectedobjectsby moveTheSelectedObjectsBy�g 40 movetheselectedobjectsto moveTheSelectedObjectsTo�f :0 movelayertheselectedobjects moveLayerTheSelectedObjects�e "0 functionchooser functionChooser�d 0 deduplicator  �c *0 xycoordinatesdialog xyCoordinatesDialog�b 0 displaytheend displayTheEnd�a 20 displaynotificationlong displayNotificationLong�` 40 displaynotificationshort displayNotificationShort
�_ .aevtoappnull  �   � ****�^ ,0 theoriginalselection theOriginalSelection�] 0 	layerlist 	layerList�\ 0 layernamelist layerNameList�[  �Z  �Y  �X  �W  �V  �U  �T  �S  �R  �Q  �P  �O  �N  �M  �L  �K  �J  �I  �H  �G  �F  �E  �D  �C  �B  �A  �@  �?  �>  �=  �<  �;  �:  �9  �8  �7  �6  �5  �4  � �3��3 �  ��� �2��1
�2 
cobj� ��   �0 5
�0 
frmk�1  � �/��.
�/ 
cobj� ��   �-
�- 
osax�.  � ��� H 8 8 6 1 7 F 2 6 - F 5 8 2 - 4 9 D 8 - 9 C C E - C 6 1 1 7 1 B 4 9 5 E 5� �,��, �  �� ��� R A u s g e w � h l t e   O b j e k t e   v e r s c h i e b e n   ( u m   x , y ) !
�� 
msng
�� 
msng� �+�*�+  �*  � �)�(�)  �(  � �� ��'�&�%�(                                                                                  InDn  alis    �  Macintosh HD               ϓ�[H+  �OAdobe InDesign CC 2014.app                                     ����        ����  	                Adobe InDesign CC 2014    ϓ�;      �p    �O ��Y  MMacintosh HD:Applications: Adobe InDesign CC 2014: Adobe InDesign CC 2014.app   6  A d o b e   I n D e s i g n   C C   2 0 1 4 . a p p    M a c i n t o s h   H D  >Applications/Adobe InDesign CC 2014/Adobe InDesign CC 2014.app  / ��  
�' 
docu�& 
�% kfrmID  � �$��$ �  ���� �� ��#�"�!
�# 
docu�" 
�! kfrmID  � �� �� ��
�  
docu� 
� kfrmID  � �� ����
� 
docu� 
� kfrmID  � ��� �  ��� �� ����
� 
docu� 
� kfrmID  � �� ����
� 
docu� 
� kfrmID  � ��� �  ����������
�	������ ���  E b e n e   1�  �  �  �  �  �  �  �  �
  �	  �  �  �  �  �  � ��� �  �� �� ���� � �������
�� 
docu�� 
�� kfrmID  
� 
layr� �
�  kfrmID  � ����� �  �� ���  E b e n e   1
�� boovtrue�    ������ ������ �������
�� 
docu�� 
�� kfrmID  
�� 
sprd�� �
�� kfrmID  
�� 
crec�� �
�� kfrmID  
�� 
msng
�� 
msng� �  1 0� �  1 0�  ������ �������
�� 
docu�� 
�� kfrmID  
�� 
Lwin��  ��
�� kfrmID  � ����   	 

 ������ �������
�� 
docu�� 
�� kfrmID  
�� 
Lwin��  �;
�� kfrmID  	  ������ �������
�� 
docu�� 
�� kfrmID  
�� 
Lwin��  ��
�� kfrmID  � ����     ������ �������
�� 
docu�� 
�� kfrmID  
�� 
Lwin��  ��
�� kfrmID    ������ �������
�� 
docu�� 
�� kfrmID  
�� 
Lwin��  �;
�� kfrmID    ������ �������
�� 
docu�� 
�� kfrmID  
�� 
Lwin��  ��
�� kfrmID  
�� 
msng
�� 
msng� ����������� 0 uuidgenerator UUIDGenerator��  ��     ����������
�� misccura�� 0 nsuuid NSUUID�� 0 uuid UUID�� 0 
uuidstring 
UUIDString
�� 
TEXT�� ��,j+ j+ �&)�,F� ����������� "0 settheselection setTheSelection��  ��   ������ 0 x  �� 0 y   #���������������������������������#&��������������������
�� 
capp
�� kfrmID  
�� 
pacw
�� 
pacp
�� 
pnam�� 0 
activepage 
activePage
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
pitm  ��9)���01*�,�,�,)�,FOb  �,)�,FOb  j 	k ��%�%���a a  Of)a ,FY �b  j 	k $a �%a %�a �a a  Of)a ,FY �)�,a k/a ,)a ,FO Vkb  j 	kh  b  a �/a ,a b  /b  a �/�,FOb  a �/ *a a l UOP[OY��O Gk)a  ,j 	kh b  a �/ %)a  ,a �/a !-a "[a ,\Z)a ,@1*�,FU[OY��Oe)a ,FOPU� ����������� 00 giveallpageitemsanuuid giveAllPageItemsAnUUID��  ��   ���� 0 i   ���������������������
�� 
capp
�� kfrmID  
�� 
aPgi�� 0 allpageitems allPageItems
�� .corecnte****       ****�� 0 uuidgenerator UUIDGenerator�� 0 uuid UUID
�� 
cobj
�� 
ptag�� 0 stopbool stopBool�� C)���0 5b  �,)�,FO &k)�,j kh  )j+ O)�,)�,�/�,F[OY��UOe)�,F� ������� ���� >0 giveallpageitemsonlayeranuuid giveAllPageItemsOnLayerAnUUID��  ��   ������ 0 
buttonname 
buttonName�� 0 i    ��v��������������������������������~�}�|�{�z�y
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
� 
pilr
�~ 
pnam�} (0 allpageitemsrepeat allPageItemsRepeat�| 0 uuidgenerator UUIDGenerator�{ 0 uuid UUID
�z 
ptag�y 0 stopbool stopBool�� �)���0 �b  �%�&E�Ob  
�,�b  ����e� Ec  O�f � �k)�,j kh b  a �/)a ,FOb  a ,a -a [a ,a ,\Zb  81)a ,FO 0k)a ,j kh )j+ O)a ,)a ,a �/a ,F[OY��OP[OY��Oe)a ,FY hOPUOe)a ,F� �x��w�v!"�u�x 40 deletetheselectedobjects deleteTheSelectedObjects�w  �v  ! �t�s�t 0 x  �s 0 y  " �r��q�p�o��n��m��l��k�j�i�h�g�f�e�d�c�b�a�`
�r 
capp
�q kfrmID  
�p 
sele
�o .corecnte****       ****
�n 
ret 
�m 
btns
�l 
dflt�k 
�j .sysodlogaskr        TEXT�i 0 stopbool stopBool
�h 
cobj�g 0 theselection theSelection
�f 
ptag�e 0 uuid UUID�d 0 opendocuments openDocuments
�c 
pitm
�b .CoRedelonull���     obj �a  �`  �u �)���0 �b  �,Ec  Ob  j k ��%�%����� Of)�,FY �b  �,�-)a ,FO mk)a ,j kh  )a ,�/a ,)a ,FO Ck)a ,j kh  &)a ,�/a -a [a ,\Z)a ,@1j W X  h[OY��[OY��Oe)�,FU� �_j�^�]#$�\�_  0 deletealluuids deleteAllUUIDs�^  �]  # �[�[ 0 i  $ 
�Z��Y�X�W�V��U�T�S
�Z 
capp
�Y kfrmID  
�X 
aPgi�W 0 allpageitems allPageItems
�V .corecnte****       ****
�U 
cobj
�T 
ptag�S 0 stopbool stopBool�\ ;)���0 -b  �,)�,FO k)�,j kh  �)�,�/�,F[OY��UOe)�,F� �R��Q�P%&�O�R (0 tagselectedobjects tagSelectedObjects�Q  �P  % �N�M�N 0 x  �M 0 y  & �L%�K�J�I�H��G��F��E��D�C�B�A�@�?�>�=�<�;
�L 
capp
�K kfrmID  
�J 
sele�I 0 theselection theSelection
�H .corecnte****       ****
�G 
ret 
�F 
btns
�E 
dflt�D 
�C .sysodlogaskr        TEXT�B 0 stopbool stopBool
�A 
cobj
�@ 
pcls
�? 
grop
�> 
pitm�= 0 uuidgenerator UUIDGenerator�< 0 uuid UUID
�; 
ptag�O �)���0 �b  �,)�,FO)�,j k ��%�%����� Of)�,FY � k)�,j kh  )�,a �/a ,a   @ :k)�,a �/a -j kh )j+ O)a ,)�,a �/a �/a ,F[OY��Y hO)j+ O)a ,)�,a �/a ,F[OY��Oe)�,FOPU� �:3�9�8'(�7�: ,0 untagselectedobjects untagSelectedObjects�9  �8  ' �6�5�6 0 x  �5 0 y  ( �4��3�2�1�0U�/W�.[�-^�,�+�*�)�(�'�&~�%�
�4 
capp
�3 kfrmID  
�2 
sele�1 0 theselection theSelection
�0 .corecnte****       ****
�/ 
ret 
�. 
btns
�- 
dflt�, 
�+ .sysodlogaskr        TEXT�* 0 stopbool stopBool
�) 
cobj
�( 
pcls
�' 
grop
�& 
pitm
�% 
ptag�7 �)���0 �b  �,)�,FO)�,j k ��%�%����� Of)�,FY x ok)�,j kh  )�,a �/a ,a   8 2k)�,a �/a -j kh a )�,a �/a �/a ,F[OY��Y hOa )�,a �/a ,F[OY��Oe)�,FOPU� �$.�#�")*�!�$ 00 copytheselectedobjects copyTheSelectedObjects�#  �"  ) � ��  0 x  � 0 y  * ������N�P�T�W�������������

� 
capp
� kfrmID  
� 
sele� 0 theselection theSelection
� .corecnte****       ****
� 
ret 
� 
btns
� 
dflt� 
� .sysodlogaskr        TEXT� 0 stopbool stopBool
� 
cobj
� 
ptag� 0 uuid UUID
� 
pilr� 0 mylayer myLayer�  0 otherdocuments otherDocuments
� 
insh
� 
layr
� 
pnam
�
 .CoRedupeobj         obj �! �)���0 �b  �,)�,FOb  j k ��%�%����� Of)�,FY �b  �,a -)�,FO xk)�,j kh  )�,a �/a ,)a ,FO)�,a �/a ,)a ,FO =k)a ,j kh )�,a �/a )a ,a �/a )a ,a ,E/l [OY��[OY��Oe)�,FOPU� �	���+,��	 40 movetheselectedobjectsby moveTheSelectedObjectsBy�  �  + ���� 0 o  � 0 x  � 0 y  , .���� ������������������������������)����=��>����N����fr������������������
� 
capp
� kfrmID  
�  
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
cobj�� *0 xycoordinatesdialog xyCoordinatesDialog�� 0 xvalue xValue
�� misccura
�� 
psof
�� 
psin
�� .sysooffslong    ��� null
�� 
TEXT
�� 
bool
�� 
ctxt
�� 
nmbr�� 0 yvalue yValue
�� 
ptag�� 0 uuid UUID�� 0 opendocuments openDocuments
�� 
pitm
�� 
by  
�� .CoRemoveobj         obj ��  ��  ��)���0�b  �,)�,FO)�,j k ��%�%����� Of)�,FY�b  �,a -)�,FO)j+ O)a ,a  a  *a a a )a ,� UE�O�j	 a a &a  a & 6b  [a \[Zk\Z�k2a %b  [a \[Z�k\Zi2%Ec  Y hOb  a &Ec  Y hO)a  ,a ! a  *a a "a )a  ,� UE�O�j	 a a &a # a & 6b  [a \[Zk\Z�k2a $%b  [a \[Z�k\Zi2%Ec  Y hOb  a &Ec  Y hO |)�,j kih )�,a �/a %,)a &,FO Tk)a ',j kh  7)a ',a �/a (-a )[a %,\Z)a &,@1a *b  b  lvl +W X , -h[OY��[OY��Oe)�,FOPU� �������-.���� 40 movetheselectedobjectsto moveTheSelectedObjectsTo��  ��  - �������� 0 o  �� 0 x  �� 0 y  . 8��	���������#��%��)��,������EGKN��������������������������������������			&	8����������������
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
gbnd�� 0 xvalue xValue�� 0 yvalue yValue
�� 
pcls
�� 
glin�� *0 xycoordinatesdialog xyCoordinatesDialog
�� misccura
�� 
psof
�� 
psin
�� .sysooffslong    ��� null
�� 
TEXT
�� 
bool
�� 
ctxt
�� 
nmbr
�� 
ptag�� 0 uuid UUID�� 0 opendocuments openDocuments
�� 
pitm
�� 
insh
�� .CoRemoveobj         obj ��  ��  ��^)���0Vb  �,)�,FO)�,j k ��%�%����� Of)�,FY&)�,j k  a �%a %�a �a � Of)�,FY�b  �,a -)�,FO)�,a ,a l/)a ,FO)�,a ,a k/)a ,FO)�,a ,a   a �a �a � OhY hO)j+ O)a ,a  a  *a  a !a ")a ,� #UE�O�j	 a $a %&a & a '& 6)a ,[a (\[Zk\Z�k2a )%)a ,[a (\[Z�k\Zi2%)a ,FY hO)a ,a *&)a ,FY hO)a ,a + a  *a  a ,a ")a ,� #UE�O�j	 a $a %&a - a '& 6)a ,[a (\[Zk\Z�k2a .%)a ,[a (\[Z�k\Zi2%)a ,FY hO)a ,a *&)a ,FY hO |)�,j kih )�,a �/a /,)a 0,FO Tk)a 1,j kh  7)a 1,a �/a 2-a 3[a /,\Z)a 0,@1a 4b  b  lvl 5W X 6 7h[OY��[OY��Oe)�,FOPU� ��	�����/0���� :0 movelayertheselectedobjects moveLayerTheSelectedObjects��  ��  / �������� $0 chosenlayercolor chosenLayerColor�� 0 x  �� 0 y  0 *��
s��������	���	���	���	���������������	���	�������������������������������������
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
pilr��  ��  ��j)���0bb  �,)�,FO)�,j k ��%�%����� Of)�,FY2b  �,a -)�,FOb  
a ,a b  a a a a a  )a ,FOb  a b  a &/a ,E�O �b  j kih )�,a �/a ,)a ,FO �k)a ,j kh b  a �/a b  a &/j   0*a !b  a �/a ,a "a #b  a &a ��� $Y hO @b  a �/a b  a &/b  a �/a %-a &[a ,\Z)a ,@1a ',FW X ( )h[OY�d[OY�:Oe)�,FOPU� ��
�����12���� "0 functionchooser functionChooser��  ��  1  2 )
�
�
�
�
�
�
�
�
�
�
�������
���
�����
���
���
���������+��8��E�R�~_�}�� 
�� 
inSL
�� 
prmp
�� 
okbt�� 
�� .gtqpchltns    @   @ ns  �� 00 giveallpageitemsanuuid giveAllPageItemsAnUUID�� >0 giveallpageitemsonlayeranuuid giveAllPageItemsOnLayerAnUUID��  0 deletealluuids deleteAllUUIDs�� (0 tagselectedobjects tagSelectedObjects�� ,0 untagselectedobjects untagSelectedObjects�� 40 deletetheselectedobjects deleteTheSelectedObjects�� 00 copytheselectedobjects copyTheSelectedObjects�� 40 movetheselectedobjectsby moveTheSelectedObjectsBy� 40 movetheselectedobjectsto moveTheSelectedObjectsTo�~ :0 movelayertheselectedobjects moveLayerTheSelectedObjects�} "0 settheselection setTheSelection�� ������������v�b  ���a a  Ec  Ob  a kv  
)j+ Y �b  a kv  
)j+ Y �b  a kv  )j+ OPY �b  a kv  
)j+ Y �b  a kv  
)j+ Y �b  a kv  
)j+ Y sb  a kv  
)j+  Y ]b  a !kv  
)j+ "Y Gb  a #kv  
)j+ $Y 1b  a %kv  
)j+ &Y b  a 'kv  )j+ (OPY hOP� �|��{�z34�y�| 0 deduplicator  �{ �x5�x 5  �w�w 0 l  �z  3 �v�u�t�v 0 l  �u 0 i  �t 0 x  4 �s�r�q�s 00 deduplicatedlayernames deduplicatedLayerNames
�r .corecnte****       ****
�q 
cobj�y :jv)�,FO ,k�j kh ��/E�O)�,� �)�,6FY h[OY��O)�,E� �p��o�n67�m�p *0 xycoordinatesdialog xyCoordinatesDialog�o  �n  6 �l�k�j�i�h�l 0 mylabelwidth myLabelWidth�k 0 mydialog myDialog�j 0 myxfield myXField�i 0 myyfield myYField�h 0 myresult myResult7 �gA�f�e�d�c�b��a�`�_�^�]��\�[��Z�Y�X�W�V
�g 
capp
�f kfrmID  �e 

�d 
uiDL
�c 
prdt
�b 
pnam
�a .corecrel****      � null
�` 
uiCW
�_ 
uiRW
�^ 
uiSt
�] 
uiSL
�\ 
uMnW�[ 
�Z 
utxE
�Y 
uiEC
�X 
TEXT
�W .K2LKshownull���     clnk
�V .UIUIdestnull���     uiDL�m �)���0 ��E�O����ll E�O� s�j  j�j  a�j  ������l O���a ��l UO�j  3a �a b  a &ll E�Oa �a b  a &ll E�UUUUO�j E�O�e  $�a ,Ec  O�a ,Ec  O�j OPY �j OPUOP� �UP�T�S89�R�U 0 displaytheend displayTheEnd�T  �S  8  9 S�QW�P[�O�N�M
�Q 
btns
�P 
dflt
�O 
givu�N 
�M .sysodlogaskr        TEXT�R ������k� � �Lo�K�J:;�I�L 20 displaynotificationlong displayNotificationLong�K �H<�H <  �G�F�E�G 0 	titletext 	titleText�F 0 subtitletext subtitleText�E 0 bodytext bodyText�J  : �D�C�B�D 0 	titletext 	titleText�C 0 subtitletext subtitleText�B 0 bodytext bodyText; �A�@�?�>
�A 
appr
�@ 
subt�? 
�> .sysonotfnull��� ��� TEXT�I ���� OP� �=��<�;=>�:�= 40 displaynotificationshort displayNotificationShort�< �9?�9 ?  �8�7�8 0 	titletext 	titleText�7 0 bodytext bodyText�;  = �6�5�6 0 	titletext 	titleText�5 0 bodytext bodyText> �4�3
�4 
appr
�3 .sysonotfnull��� ��� TEXT�: 
��l OP� �2@�1�0AB�/
�2 .aevtoappnull  �   � ****@ k    �CC  ��.�.  �1  �0  A �-�- 0 i  B �,��+�*�)�(�'�&�%�$�#�"�!� ���������������
�, 
capp
�+ kfrmID  
�* 
pacd�)  0 activedocument activeDocument
�( 
docu�' 0 opendocuments openDocuments
�& 
ID  �%  0 otherdocuments otherDocuments
�$ 
layr�# (0 layerlistactivedoc layerListActiveDoc�" 0 stopbool stopBool
�! 
cobj
�  
sele� ,0 theoriginalselection theOriginalSelection
� 
pacw
� 
cwin
� 
pare� 0 	layerlist 	layerList� 0 layernamelist layerNameList
� .corecnte****       ****
� 
pnam
� 
rvse� 0 deduplicator  � "0 functionchooser functionChooser
� 
TEXT� 20 displaynotificationlong displayNotificationLong�/�)���0y*�,)�,FO*�-)�,FO*�-�[�,\Zb  �,91)�,FOb  �-)�,FOf)�,FOjjlvE[�k/Ec  Z[�l/Ec  ZOb  �,E�O*a ,Ec  O*a -Ec  O*a -�[a ,�,\Zb  a ,�,91Ec  OjvE` OjvE` OjvEc  O (kb  j kh  _ b  ��/�-%E` [OY��O &k_ j kh  _ _ ��/a ,%E` [OY��O .kb  j kh  b  b  ��/a ,%Ec  [OY��O)_ a ,k+ O)j+ Ob  e  &)a b  �k/a &�j a &a %m+ Y hOPU� �D� D  EE FF G���G H���H ���
�	
� 
docu�
 
�	 kfrmID  
� 
sprd� �
� kfrmID  
� 
crec� �
� kfrmID  � �I� I  JKLJ MM N���N ����
� 
docu� 
� kfrmID  
� 
layr� �
� kfrmID  K OO P�� ��P �������
�� 
docu�� 
�� kfrmID  
� 
layr�  �
�� kfrmID  L QQ R������R �������
�� 
docu�� 
�� kfrmID  
�� 
layr�� �
�� kfrmID  � ��S�� S  TU�T �VV  E b e n e   1U �WW  E b e n e   1��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��   ascr  ��ޭ