   M S B A M L   `   `   `  ����   
WimaDesign    WimaDesign.GUI.ChoiceBox   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     @d2http://schemas.microsoft.com/expression/blend/2008     -     � AllowsTransparency  . 
������  � WindowStyle$
 None=� � 
ResizeMode$ NoResize=� � ShowInTaskbar .   J� SnapsToDevicePixels . $��Stretch=� � WindowState$ 	Maximized=�.��� .+��� 
���   � J� Opacity$	 0.5Q�� $	��200��$	��600��
�������.+��� $��30��$	��Top=�
����� ��� $
��WIMA��$	��Top=�$��Center=�$��20(��� $	��600��
���   �$��Center=�._��  � RowDefinitions �� $
��Auto ��� $��* ��� $
��Auto �.+��� -    ��Name$ title��$��20(�$
��Bold"��� -   $ 	tbMessage��$��1��$
��Wrap=�$��16(�$��6,6,0,0q�	 � Triggers	 :� 
 :� RoutedEvent$
 Window.Loaded��.[��� .���� -    g�Name$ FormFade��.��W� -   $ FormFadeAnimation�� �� TargetProperty$ (Window.Opacity)� W� From$	 0.0X�	 W� To$	 1.0X� g� Duration$ 0:0:0.1D� g� AutoReverse .   g� RepeatBehavior$ 1x��