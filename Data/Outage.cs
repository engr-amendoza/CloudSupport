using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel;

namespace CloudSupport
{
    public class Outage
    {
        public Outage() : this(String.Empty, String.Empty) { }
        public Outage(String Platform, String OutageType)
        {
            this.Platform = Platform;
            this.OutageType = OutageType;

            // change later
            Locations = new Locations("images/green.png", "images/red.png");
            OpeningStatementKB = "Please be aware of the following issue with the <b>3D</b>EXPERIENCE platform";
        }

        public String OutageType { protected set; get; }

        public String Platform { /*protected*/ set; get; }

        public DateTime? Start { set; get; }
        public DateTime? Return { set; get; }
        public String ServiceImpacted { set; get; }
        public String ProblemSummary { set; get; }
        [Description("Optional")]
        public String Icon { set; get; }
        public String DSIcon { set; get; }
        public Locations Locations { set; get; }
        public DateTime InfoReceived { set; get; }
        public DateTime MailSent { set; get; }
        public DateTime BlogPosted { set; get; }

        #region Headers
        public String EmailHeader
        {
            private set { }
            get
            {
                return String.Format("{0} Outage {1} -- 3DEXPERIENCE platform Public Cloud", Platform, OutageType);
            }
        }
        public String ReturnTimeHeader { protected set; get; }
        [Description("Optional")]
        public String OutageHeader { set; get; }
        public String OpeningStatementKB { set; get; }
        public String SummaryHeaderKB { set; get; }
        [Description("Optional")]
        public String OpeningStatement { set; get; }
        #endregion Headers

        public Outage _Outage { set; get; }
    } 
}