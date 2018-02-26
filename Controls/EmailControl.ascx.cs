using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CloudSupport.Controls
{
    public partial class EmailControl : System.Web.UI.UserControl
    {
        protected void Page_Init(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                string javascript = @"javascript:this.select();";
                this.EmailSubject_Textbox.Attributes.Add("onfocus", javascript);
            }
        }
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public String OutageHeader;
        public String PlatformHeader;
        public String OpeningStatement;
        public String TopLeftIcon;
        public String ReturnTimeHeader;
        public String ServiceImpactedHeader;
        public String ServiceImpactedBody;
        public String ProblemSummaryHeader;
        public String ProblemSummaryBody;
        public String StartTime;
        public String ReturnTime;
        public String Platform;

        public String Europe;
        public String China;
        public String HongKong;
        public String Singapore;
        public String Korea;
        public String Tokyo;
        public String USWest;
        public String USEast;

        internal void Refresh(Outage outage)
        {
            OutageHeader = outage.OutageHeader;
            PlatformHeader = outage.Platform;
            OpeningStatement = outage.OpeningStatement;
            TopLeftIcon = outage.Icon;
            ReturnTimeHeader = outage.ReturnTimeHeader;
            //ServiceImpactedHeader = outage.ServiceImpacted;
            ServiceImpactedBody = outage.ServiceImpacted;
            //ProblemSummaryHeader = outage.ProblemSummary;
            ProblemSummaryBody = outage.ProblemSummary;
            StartTime = outage.Start.ToString();
            ReturnTime = outage.Return.ToString();
            Platform = outage.Platform;

            Europe = outage.Locations.GetImage("Europe");
            China = outage.Locations.GetImage("China");
            HongKong = outage.Locations.GetImage("Hong-Kong");
            Singapore = outage.Locations.GetImage("Singapore");
            Korea = outage.Locations.GetImage("Korea");
            Tokyo = outage.Locations.GetImage("Tokyo");
            USWest = outage.Locations.GetImage("US-West");
            USEast = outage.Locations.GetImage("US-East");

            EmailSubject_Textbox.Text = outage.EmailHeader;
        }
    }
}