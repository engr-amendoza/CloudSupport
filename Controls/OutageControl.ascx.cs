using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CloudSupport
{
    public partial class OutageControl : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void OnChange(object sender, EventArgs e)
        {
            Outage outage = (Outage)Session["Outage"];
            
            if (outage == null)
                return;

            String platform = this.platformSelect.Items[platformSelect.SelectedIndex].Text;
            DateTime? start = (!String.IsNullOrEmpty(this.startTime.Text)) ? DateTime.Parse(this.startTime.Text) : (DateTime?)null;//DateTime.Now;
            DateTime? end = (!String.IsNullOrEmpty(this.returnTime.Text)) ? DateTime.Parse(this.returnTime.Text) : (DateTime?)null;// DateTime.Now;
            Locations locations = GetLocationStatus(outage.Locations.EnabledImage, outage.Locations.DisabledImage);
            String services = this.servicesImpacted.Text;
            String summary = this.problemSummary.Text;

            outage.Platform = platform;
            outage.Start = start;
            outage.Return = end;
            outage.Locations = locations;
            outage.ServiceImpacted = services;
            outage.ProblemSummary = summary;

           // Session["Outage"] = outage;
           // OutageObject = outage;

            // fire event
            if(ChangeEvent != null)
                ChangeEvent(outage); 
        }

        private Locations GetLocationStatus(String enabledImage, String disabledImage)
        {
            Locations locations = new Locations(enabledImage, disabledImage);
            int locationsCount = this.locationsCheckbox.Items.Count;
            for (int i = 0; i < locationsCount; ++i)
            {
                String key = locationsCheckbox.Items[i].Text;
                locations[key] = locationsCheckbox.Items[i].Selected;
            }

            return locations;
        }

        private void SetLocationStatus(Outage outage)
        {
            Locations locations = outage.Locations;
            string[] keys = locations.Keys;
            foreach (string key in keys)
            {
                bool isChecked = locations[key];
                locationsCheckbox.Items.FindByText(key).Selected = isChecked;
            }
        }

        public delegate void OnChageEvent(Outage outage);
        public event OnChageEvent ChangeEvent;

        //public Outage OutageObject;

        internal void Refresh(Outage outage)
        {
            platformSelect.Items[platformSelect.SelectedIndex].Text = outage.Platform;
            startTime.Text = (outage.Start != null) ? ((DateTime)outage.Start).ToString("yyyy-MM-ddTHH:mm:ss") : String.Empty;
            returnTime.Text = (outage.Return != null) ? ((DateTime)outage.Return).ToString("yyyy-MM-ddTHH:mm:ss") : String.Empty;
            SetLocationStatus(outage);
            servicesImpacted.Text = outage.ServiceImpacted;
            problemSummary.Text = outage.ProblemSummary;
        }
    }
}