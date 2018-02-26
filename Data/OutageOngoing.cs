using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CloudSupport
{
    public class OutageOngoing : Outage
    {
        public OutageOngoing(String Platform) : base(Platform, "Ongoing")
        {
            OutageHeader = "Outage ongoing on";
            OpeningStatement = "Hello, please be aware of the following incident:";
            ReturnTimeHeader = "Est. Return<br>Time";
            Icon = "images/smallIconRed.png";
            DSIcon = "images/kb_outage.jpg";
            SummaryHeaderKB = "Problem Summary";
            _Outage = this;
        }
    }
}