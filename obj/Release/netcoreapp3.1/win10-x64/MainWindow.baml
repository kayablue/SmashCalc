   M S B A M L   `   `   `  ���� E  ACalculator, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null'clr-namespace:Calculator
Calculator      Calculator.MainWindow   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     *localclr-namespace:Calculator       � Title$  Smash Heroes Calculator��$	��600��$	��450�� � 
ResizeMode$ NoResize=� � Icon$ images/icon.png��'  !System.Windows.Shell.WindowChrome   WindowChrome      GlassFrameThickness$ 1q�   CaptionHeight$ 0Q�   UseAeroCaptionButtons$ False��   ResizeBorderThickness$ 7q� J� Effect 3  -System.Windows.Media.Effects.DropShadowEffect  	   Color$
	 Gray��
   
BlurRadius$
 20Q�   	Direction$	 -90Q�   RenderingBias$ Quality=�   ShadowDepth$ 4Q�����  �� ImageSource$ /images/bg.png�� j� Stretch$ UniformToFill=�.���  � UseLayoutRounding$
 True�� � RowDefinitions �� $��30���� .+��� -   $��0�����	#99999999._��  � ColumnDefinitions �� �� �� $��30���� $��30���� $��30��.+��� -      	TopButton#��[  $��4��$��6q�.����  �� BitmapScalingMode$ Linear=�$��images/close.png���� -   #��[  $��3��.���� $	��—��
�������$��0 8 0 0q�$��14(�$
��Bold"��� ���	#22e6e6e6$��1�� �� Padding$ 10 15 10 10q�._�� $��0 15 0 0q� �� $��90 ��� $��70 ��� $��70 ��� $��70 ��� $��70 ��� �� $��25 �.+���  �� TextAlignment$ Center=�$��30(�$
��Wrap=�
�������$!��Smash Heroes EXP Calculator��$��fonts/#Minecraftia)�$��0 10 0 0q� �� LineStackingStrategy$ BlockLineHeight=� �� 
LineHeight$ 40��   $	 280Q�$ 2Q�$
 20Q��� $��1��$��20 16 20 20q�$��0 0 0 2q�
�������._��� -    ��Name$ Level_Input�� �� 
CaretBrush
 �����
������ $��25(�
�������$��0q��� $��1�� J� IsHitTestVisible$ False��$��Enter Your Level��$��25(�$��Light"�$��1��$��	20 0 20 5q�$��Center=����#BBBBBB����  �� 
TargetType" ��.���  �� Property � y� �� Value$ 	Collapsed=� �� Triggers ��  �� Binding �� *Text+  �� ElementName$  Level_Input��! �� Value!  .a���  � y�$ Visible=�   $	 280Q�$ 0Q�$
 5Q�$
	 Gray���� $��2��$��20 16 20 20q�$��0 0 0 2q�
�������._��� -   $ 	EXP_Input��
 �����
������ $��25(�
�������$��0q��� $��2��$ False��$��Enter Your EXP��$��25(�$��Light"�$��1��$��	20 0 20 5q�$��Center=����#BBBBBB���� " ��.���  � y�$ 	Collapsed=� ��  �� *Text+$  	EXP_Input��!  .a���  � y�$ Visible=�   $	 280Q�$ 0Q�$
 5Q�$
	 Gray���� $��3��$��20 16 20 20q�$��0 0 0 2q�
�������._��� -   $ DesiredLevel_Input��
 �����
������ $��0q�$��25(�
��������� $��3��$ False��$��Enter Your Desired Level��$��25(�$��Light"�$��1��$��	20 0 20 5q�$��Center=����#BBBBBB���� " ��.���  � y�$ 	Collapsed=� ��  �� *Text+$  DesiredLevel_Input��!  .a���  � y�$ Visible=�   $	 280Q�$ 0Q�$
 5Q�$
	 Gray���� $��4��$��20 16 20 20q�$��0 0 0 2q�
�������._��� -   $ EXPGain_Input��
 �����$��Center=�
������ $��0q�$��25(�
��������� $��4��$ False��$��Enter EXP Per Game��$��25(�$��Light"�$��1��$��	20 0 20 5q�$��Center=����#BBBBBB���� " ��.���  � y�$ 	Collapsed=� ��  �� *Text+$  EXPGain_Input��!  .a���  � y�$ Visible=�   $	 280Q�$ 0Q�$
 5Q�$
	 Gray���� -   " ��Name$" Calculate_Button��$��	Calculate��$��fonts/#Minecraftia)�$��5��$��Center=�$��Center=�
�������  CalculateButton#��[ $��30(�$��48��$	��200��$��0 0 0 5q�   $	 280Q�$ 2Q�$
 20Q��� $��Made By kayablue#2395��$��6��$ Center=�$��Center=����#BBBBBB   $	 280Q�$ 2Q�$
 5Q�