   M S B A M L   `   `   `  ���� E  AWimaDesign, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null;"clr-namespace:WimaDesign.CarousselWimaDesign.Caroussel      WimaDesign.GUI.ChoiceBox2   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     @d2http://schemas.microsoft.com/expression/blend/2008     8	caroussel"clr-namespace:WimaDesign.Caroussel     -     � AllowsTransparency  . 
������  � WindowStyle$
 None=� � 
ResizeMode$ NoResize=� � ShowInTaskbar .   J� SnapsToDevicePixels . $��Stretch=� � WindowState$ 	Maximized=�.��� .+��� 
���   � J� Opacity$	 0.5Q�� $	��200��$	��600����
�  
� RadiusY$ 0.573Q� 
� RadiusX$ 0.667Q�	 
� GradientOrigin$	 
1.01,1.035&�.��� 
 � Color$
 	#FF06183C�� � Offset$ 1Q�� $
 	#FF0D60A3��.+��� $��2q� �� CornerRadius$ 3��$	��200��$	��600��$��Center=�$��Center=�����  �� EndPoint$ 0.5,1&� �� 
StartPoint$ 0.5,0&�.��� $
 	#FFA4B3C5��$ 0Q�� $
 White��$ 1Q�._��� $��1q�
���   �$ 0����
� $	 0.225,-0.616&�$ 0.863Q�$ 0.757Q�.��� $
 	#EEFFFFFF��� $
 	#00FFFFFF��$ 0.696Q�._�*   $WimaDesign.Caroussel.CarouselControl  -     Name$ CarouselControl��$��1��$��2��$	��600��$��Center=�$��Center=� J� RenderTransformOrigin$ 0.5,0.5&�.+�#   WimaDesign.Caroussel.BallTest     Index$ 0��$��	0,-31,0,0q�  $ 1��$��	0,-31,0,0q�  $ 2��$��	0,-31,0,0q�  $ 3��$��	0,-31,0,0q�  $ 4��$��	0,-31,0,0q�  $ 5��$��	0,-31,0,0q�  $ 6��$��	0,-31,0,0q�  $ 7��$��	0,-31,0,0q� � Triggers :�  :� RoutedEvent$ Window.Loaded��.[��� .���� -    g�Name$ FormFade��.��W� -   $ FormFadeAnimation�� �� TargetProperty$ (Window.Opacity)� W� From$	 0.0X�	 W� To$	 1.0X� g� Duration$ 0:0:0.1D� g� AutoReverse .   g� RepeatBehavior$ 1x��