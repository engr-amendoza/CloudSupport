using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CloudSupport
{
    public class OutageRecovery : Outage
    {
        public OutageRecovery(String Platform) : this(Platform, null) { }
        public OutageRecovery(Outage update) : this(update.Platform, update) { }
        private OutageRecovery(String Platform, Outage Update) : base(Platform, "Recovery")
        {
            this._Outage = Update;

            OutageHeader = "Outage recovered on";
            OpeningStatement = "Hello, please be aware the following incident is now closed:";
            ReturnTimeHeader = "Recovery<br>Time";
            Icon = "images/smallIconGreen.png";
            DSIcon = "images/kb_recovery.jpg";
            OpeningStatementKB = "Please be aware that the following issue with the <b>3D</b>EXPERIENCE platform has been resolved:";
            SummaryHeaderKB = "Restoring Description";

            if (Update != null)
            {
                base.Start = Update.Start;
                base.Return = Update.Return;
                base.ServiceImpacted = Update.ServiceImpacted;
                base.ProblemSummary = Update.ServiceImpacted;
                base.Locations = Update.Locations;
            }
        }

        public DateTime Recovery { set; get; }
        public String Description { set; get; }
        ///public Outage Update { private set; get; }
    }
}