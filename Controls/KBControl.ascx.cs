using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;
namespace CloudSupport.Controls
{
    public partial class KBControl : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public void Refresh(Outage outage)
        {
            OutageType = outage.OutageType;
            OpeningStatement = outage.OpeningStatementKB;
            Platform = outage.Platform;
            ProblemSummary = outage.ProblemSummary;
            ServicesImpacted = outage.ServiceImpacted;
            Locations = FormatLocations(outage.Locations);
            Start = outage.Start.ToString();
            Return = outage.Return.ToString();

            SummaryHeader = outage.SummaryHeaderKB;
            HeaderImage = outage.DSIcon;
        }

        private string FormatLocations(Locations locations)
        {
            StringBuilder sb = new StringBuilder();
            String[] loc = locations.AffectedLocations;
            foreach(var l in loc)
            {
                sb.Append(l + "</br>");
            }
            return sb.ToString();
        }

        public string OutageType;
        public string OpeningStatement;
        public string Platform;
        public string ProblemSummary;
        public string ServicesImpacted;
        protected string Locations;
        public string Start;
        public string Return;

        public string SummaryHeader;
        public string HeaderImage;


    }
}