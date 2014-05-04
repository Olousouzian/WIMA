using System.ComponentModel;
using WimaProto.Core;
using WimaProto.GUI;

namespace WimaProto
{
    public partial class MainWindow
    {
        private CoreEngine _coreEngine;
        private BackgroundWorker _backgroundWorker;

        public MainWindow()
        {
            InitializeComponent();
            LaunchCore();
        }

        private void LaunchCore()
        {
            _coreEngine = new CoreEngine();

            _backgroundWorker = new BackgroundWorker();
            _backgroundWorker.DoWork += BackgroundWorkerOnDoWork;
            _backgroundWorker.ProgressChanged += BackgroundWorkerOnProgressChanged;
            _backgroundWorker.WorkerSupportsCancellation = true;
            _backgroundWorker.WorkerReportsProgress = true;
            _backgroundWorker.RunWorkerAsync();            
        }

        private void BackgroundWorkerOnProgressChanged(object sender, ProgressChangedEventArgs progressChangedEventArgs)
        {
            var test = new MessegeBox();
            var ret = test.Show("SpaceShip !");
        }

        private void BackgroundWorkerOnDoWork(object sender, DoWorkEventArgs doWorkEventArgs)
        {
            _coreEngine.CoreTimer.Tick += (timer, args) => _backgroundWorker.ReportProgress(0);
            _coreEngine.StartCoreEngine();
        }
    }
}
