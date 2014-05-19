using System.Windows.Controls;
using CoreCLR;


namespace WimaGUIProto.Core
{
    public class CoreEngine
    {
        #region Attributes

        private Kernel _kernel;
        private CoreTimer _ctimer;
      
        #endregion

        #region Ctor

        public CoreEngine()
        {
            _kernel = new Kernel();
            _ctimer = new CoreTimer();

            _kernel.EDown += KeyDownEvent;
            _kernel.EUp += KeyUpEvent;
        }

        #endregion

        #region Methods

        public void StartCoreEngine()
        {
            _kernel.InstallKernel();
            _kernel.Run();
        }

        ~CoreEngine()
        {
            _kernel.UninstallKernel();
        }

        public void KeyDownEvent(int i)
        {
            if (_ctimer.Start(i))
                _kernel.SendKey(i);
        }

        public void KeyUpEvent(int i)
        {
            _ctimer.Stop(i);
        }

        #endregion

        #region Getter & Setter

        public CoreTimer CoreTimer
        {
            get { return _ctimer; }
            set { _ctimer = value; }
        }

        public Kernel Kernel
        {
            get { return _kernel; }
            set { _kernel = value; }
        }

        #endregion
    }
}
