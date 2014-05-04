using System;
using System.Timers;

namespace WimaProto.Core
{
    public class CoreTimer
    {
        #region Events

        public event TickHandler Tick;
        public EventArgs E = null;
        public delegate void TickHandler(CoreTimer m, EventArgs e);

        #endregion

        #region Attributes

        private readonly Timer _timer;
        public int KeyStart { get; set; }
        public bool PopUpIsEnabled { get; set; }

        #endregion

        #region Ctor
        public CoreTimer()
        {
            _timer = new Timer(1000);
            _timer.Elapsed += TimerOnElapsed;
            KeyStart = -1;
            PopUpIsEnabled = false;
        }

        #endregion
        
        #region Methods

        public bool Start(int keyStart)
        {
            if (keyStart == KeyStart)
                return false;

            _timer.Enabled = true;
            KeyStart = keyStart;
            return true;
        }

        public bool Stop(int keyEnd)
        {
            if (keyEnd != KeyStart) 
                return false;
            _timer.Enabled = false;
            KeyStart = -1;
            var temp = PopUpIsEnabled;
            PopUpIsEnabled = false;
            return temp;
        }

        private void TimerOnElapsed(object sender, ElapsedEventArgs elapsedEventArgs)
        {
            _timer.Enabled = false;
            PopUpIsEnabled = true;
            Tick(this, E);
        }

        #endregion
    }
}
