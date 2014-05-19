using System;
using System.Windows;
using System.Windows.Input;

namespace WimaDesign.GUI
{
    public partial class ChoiceBox2
    {
        #region Attribute

        public char? Choice { get; set; }

        #endregion

        #region Ctor

        public ChoiceBox2()
        {
            InitializeComponent();
            Choice = null;
        }

        #endregion

        #region Methods
        protected override void OnActivated(EventArgs e)
        {
            if (Owner != null)
            {
                if (Owner.WindowState == WindowState.Maximized)
                {
                    Left = 0;
                    Top = 200;
                    Width = SystemParameters.PrimaryScreenWidth;
                }
                else
                {
                    Left = Owner.Left + 1;
                    Top = Owner.Top + ((Owner.Height - 200) / 2);
                    Width = Owner.Width - 2;
                }
            }
            base.OnActivated(e);
        }

        public char? Show()
        {
            ShowDialog();
            return Choice;
        }

        private void OnKeyDown(object sender, KeyEventArgs e)
        {
            switch (e.Key)
            {
                case Key.Escape:
                    Choice = null;
                    Close();
                    break;
                case Key.Enter:
                    Choice = 'a';
                    Close();
                    break;
                case Key.Left:
                    CarouselControl.Left();
                    e.Handled = true;
                    break;
            }
        }



        #endregion
    }
}