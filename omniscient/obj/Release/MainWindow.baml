   M S B A M L   `   `   `  ���� E  AOmniscient, Version=1.5.0.0, Culture=neutral, PublicKeyToken=null'clr-namespace:omniscient
omniscient      omniscient.MainWindow   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     *localclr-namespace:omniscient     -     � Title$  
Omniscient��$	��473��$��524.01��
������� � 
ResizeMode$ NoResize=� � Topmost .  � WindowStartupLocation$ CenterOwner=�$y�Visible=� � AllowsTransparency .  � WindowStyle$
 None=���Z� .��� $
��Left=�$	��524��$	��473��$	��Top=�.+��� -    ��Name$ TopBar��$��	0,0,0,330q�����  �� EndPoint$ 0.5,1&� �� 
StartPoint$ 0.5,0&�.��� 	 � Color$	 	#FF1C0030��
 � Offset$

 0.18Q�� $	 	#FF4163FF��$
 1Q��� -   $ TopBar_Incog��$
��Left=�$	��524�� J� Opacity$	 0.7Q�$	��143��$	��Top=�
���   �$y�Hidden=��� -   $ TopBar1��$
��Left=�$	��524��$��30��$	��Top=�$	 0.4Q�
���   ��� -   $ 
ControlBox��$
��Left=�$	��524��$��	0,143,0,0q����	#FF23272A$	��330��$	��Top=��� -    ��Name$ CurrentlyOpen��$
��Left=�$��Current Window Title��$
��Left=�$��	10,49,0,0q�$	��Top=�$��38��$	��454��$%��./Resources/FONTS/#Rubik Medium)�$��24(����	#00000000
������� J� RenderTransformOrigin$	 0,0&�&   System.Windows.Media.TextOptions   TextHintingMode$ Animated=��� -    ��Name$ MinimizeButton��   TransButton#���   $	����$
��Left=�$��	432,0,0,0q�$	��Top=�$��46��$��30��$*��$./Resources/FONTS/#Segoe MDL2 Assets)�
�������$��10(�$ 	0.534,0.5&���Z� ��Z� �� -   $ CloseButton��  CloseButton#���  $	����$
��Left=�$	��Top=�$��46��$��30��$*��$./Resources/FONTS/#Segoe MDL2 Assets)�$ 0.425,0.575&�
�������$��	478,0,0,0q�$��10(���Z� ��Z� �� -	   $ InfoBtn��#���   $	����$
��Left=�$	��Top=�$��41��$��34��$*��$./Resources/FONTS/#Segoe MDL2 Assets)�
�������$��
483,30,0,0q�$��16(���Z� ��Z� �� -
    ��Name$ CustomTextCheck��$��Custom Status��$
��Left=�$��
15,225,0,0q�$	��Top=�$��26��$	��226��
����������	#FF1B1B1B$��./Resources/FONTS/#Rubik)�$ Fixed=�$��18(�
��������� -    ��Name$ CustomStatusText��$
��Left=�$��30��$��
15,251,0,0q� �� TextWrapping$
 Wrap=�$	��Top=�$	��491��
����������	#FF2C2F33$��./Resources/FONTS/#Rubik)� � Cursor$  �� �� 
CaretBrush
 �����$��18(���Z� �� -   $ CustomAppText��$
��Left=�$��28��$��
15,189,0,0q�$
 Wrap=�$	��Top=�$	��491��
����������	#FF2C2F33$��./Resources/FONTS/#Rubik)�$  ��
 �����$��18(���Z� �� -   $ CustomAppTextCheck��$��Custom App name��$
��Left=�$��
15,163,0,0q�$	��Top=�$��26��$	��238��
����������	#FF1B1B1B$��./Resources/FONTS/#Rubik)�$ Fixed=�$��18(�
��������� -   $ BlockedWordsTextBox��$
��Left=�$��30��$��
15,315,0,0q�$
 Wrap=�$	��Top=�$	��428��
����������	#FF2C2F33$��./Resources/FONTS/#Rubik)�$  ��
 �����$��18(�$ 0.5,0.5&���Z� �� -   $ bl_label��$��Blocked words��$
��Left=�$��
15,283,0,0q�$	��Top=�$	��138��$��32��$��./Resources/FONTS/#Rubik)�$��18(�
��������� -   $ SaveBtn��  
CustButton#���  $
��Save��$
��Left=�$	��Top=�$��58��$��448,315,0,0q�$��30��$��./Resources/FONTS/#Rubik)�$��14(�
����������	#FF2C2F33$��0,1,1,1q�$ 0.443,0.467&���Z� �� -   $ IncognitoCheck��$��	Incognito��$
��Left=�$��
20,357,0,0q�$	��Top=�$��24��$	��106��
����������	#FF1B1B1B$��./Resources/FONTS/#Rubik)�$ Fixed=�$��18(�
������� J� Effect 3  -System.Windows.Media.Effects.DropShadowEffect     Opacity$	 0.7Q�   ShadowDepth$ 0Q��� -   $ RoS_btn��#���  $��Run on Startup��$
��Left=�$	��Top=�$	��166��$��
15,427,0,0q�$��31��$��./Resources/FONTS/#Rubik)�$��14(�
����������	#FF2C2F33$��0,1,1,1q���Z� �� -   $ Theme_Check��$��Old Icons (Not Updated)��$
��Left=�$��272,357,0,0q�$	��Top=�$��24��$	��242��
����������	#FF1B1B1B$��./Resources/FONTS/#Rubik)�$ Fixed=�$��18(�
�������   $	 0.7Q�$ 0Q��� -   $ Blocklist_Check��$��Hide Blocked��$
��Left=�$��131,357,0,0q�$	��Top=�$��24��$	��136��
����������	#FF1B1B1B$��./Resources/FONTS/#Rubik)�$ Fixed=�
�������$��18(�   $	 0.7Q�$ 0Q��� -   $ CurrentProcessOpen��$
��Left=�$��Current Application Name��$
��Left=�$��	10,92,0,0q�$	��Top=�$��27��$	��454��$��./Resources/FONTS/#Rubik)�$��16(����	#00000000
�������$	 0,0&�$ Animated=�� -    �Name$ 	AboutGrid��$
��Left=�$	��443��$	��Top=�$	��524��$ 0.502,0.508&�$��0,30,0,0q����	#E511001D$y�Hidden=�.+��� -    ��Name$ image��$��10,33,366,259q�$��Resources/OmniNewIcon.png���� -   $ Appname��$��
Omniscient��$
��Left=�$��51��$��
10,189,0,0q�$	��Top=�$	��504��
�������$��./Resources/FONTS/#Rubik)�$��36(�$��SemiBold"��� -   $ 
Appversion��$$��1.5 // The LONG Overdue Update��$
��Left=�$��51��$��
10,230,0,0q�$	��Top=�$	��504��
�������$��./Resources/FONTS/#Rubik)�$��20(�$��Medium"��� -   $ 	Createdby��$ ��Created by Sami (justsame)��$
��Left=�$��37��$��
10,265,0,0q�$	��Top=�$	��287��
�������$��./Resources/FONTS/#Rubik)�$��20(�$��Medium"��� -   $ Createdby_Copy��$D��>@justsame // twitter
youtube.com/justsame
justsame.github.io��$
��Left=�$��78��$��
10,302,0,0q�$	��Top=�$	��223��
�������$��./Resources/FONTS/#Rubik)�$��18(��� -   $ 
CloseAbout��#���  $��Close��$
��Left=�$	��Top=�$��58��$��456,405,0,0q�$��28��$��./Resources/FONTS/#Rubik)�$��14(�
����������	#FF2C2F33$��0,1,1,1q���Z� 