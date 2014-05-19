using System.Windows;
using System.Windows.Input;
using WimaDesign.GUI;


namespace WimaDesign
{
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
        }

        private void MainWindow_OnKeyDown(object sender, KeyEventArgs e)
        {
            var test = new ChoiceBox2();
            test.Show();
        }
    }
}
