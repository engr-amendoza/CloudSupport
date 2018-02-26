using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CloudSupport
{
    public class OutageUpdate : Outage
    {
        public OutageUpdate(String Platform) : this(Platform, null) { }
        public OutageUpdate(Outage Ongoing) : this(Ongoing.Platform, Ongoing) { }
        private OutageUpdate(String Platform, Outage Ongoing) : base(Platform, "Update")
        {
            this._Outage = Ongoing;

            OutageHeader = "Information update for outage on";
            OpeningStatement = "Hello, please be aware of the following update information:";
            ReturnTimeHeader = "New Est. <br>Return Time";
            Icon = "images/smallIconRed.png";
            DSIcon = "images/kb_update.jpg";
            SummaryHeaderKB = "Update";
            
            if (Ongoing != null)
            {
                base.Start = Ongoing.Start;
                base.Return = Ongoing.Return;
                base.ServiceImpacted = Ongoing.ServiceImpacted;
                base.ProblemSummary = Ongoing.ServiceImpacted;
                base.Locations = Ongoing.Locations;
            }
        }

        public String Update { set; get; }
        ///public Outage Ongoing { private set; get; }
    }
}