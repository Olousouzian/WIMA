   M S B A M L   `   `   `  ����   
WimaDesign#    WimaDesign.Caroussel.BallTest   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     -     >�Name$  UserControl�� � 	Resources    FloatingEffect g� RepeatBehavior �� TargetProperty �� 
TargetName9  3System.Windows.Media.Animation.EasingDoubleKeyFrame O� KeyTime O� Value��%�  &	        �� $ Forever��.��U� $U O(UIElement.RenderTransform).(TransformGroup.Children)[3].(TranslateTransform.X)�$
 Form��.\�  $ 0:0:1��$ -2Q�  $ 0:0:2��$ -3Q�U� $U O(UIElement.RenderTransform).(TransformGroup.Children)[3].(TranslateTransform.Y)�$
 Form��.\�  $ 0:0:1��$ -7Q�  $ 0:0:2��$ 8Q�U� $U O(UIElement.RenderTransform).(TransformGroup.Children)[3].(TranslateTransform.X)�$
 Char��.\�  $ 0:0:1��$ -2Q�  $ 0:0:2��$ -3Q�U� $U O(UIElement.RenderTransform).(TransformGroup.Children)[3].(TranslateTransform.Y)�$
 Char��.\�  $ 0:0:1��$ -7Q�  $ 0:0:2��$ 8Q� � Triggers :�  :� RoutedEvent$ FrameworkElement.Loaded��.[��� #��[  .��� -   	 �Name$	 
LayoutRoot��.+�A� -   $
��Form�����	#FFA61449$
��Left=�$��62��
���   �$	��Top=�$��62��
 J� RenderTransformOrigin$
 0.5,0.5&�z�V� .~��� �� �� T� �� -   $
��Char��$��E��$��Center=�$��Center=�$��48(�$
 0.5,0.5&�z�V� .~��� �� �� T� 