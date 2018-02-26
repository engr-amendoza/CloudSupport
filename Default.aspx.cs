using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CloudSupport
{
    public partial class _Default : Page
    {
        protected void Page_Init(object sender, EventArgs e)
        {
           // if(!IsPostBack)
                this.OutageControl.ChangeEvent += OutageChange;
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            Outage outage = null;

            if (!IsPostBack)
            {
                IsOngoingInit = false;
                outage = new OutageOngoing("Customers")
                {
                    Start = DateTime.Now,
                    Return = DateTime.Now,
                    ProblemSummary = String.Empty,
                    ServiceImpacted = String.Empty
                };

                Locations location = outage.Locations;
                location["Europe"] = false;
                location["China"] = false;
                location["Hong-Kong"] = false;
                location["Singapore"] = false;
                location["Korea"] = false;
                location["Tokyo"] = false;
                location["US-West"] = false;
                location["US-East"] = false;

                SetTabDefaults();

                Session["Outage"] = Session["Ongoing"] = outage;
                ReplicateOutage(outage);
                //OutageMenuItemsEnabled(false);
                this.OutageControl.Refresh(outage);
                RefreshPreviewContent();

                
                this.CurrentUserLabel.Text = (System.Web.HttpContext.Current.User.Identity.IsAuthenticated) ?
                    "Welcome, " + System.Web.HttpContext.Current.User.Identity.Name : Page.User.Identity.Name;
            }       
        }

        private void SetTabDefaults()
        {
            this.Outage_RadioButtonList.SelectedIndex = 0;
            this.Preview_RadioButtonList.SelectedIndex = 0;
        }

        private void OutageChange(Outage outage)
        {
            String outageType = this.Outage_RadioButtonList.SelectedValue;
            Session[outageType] = Session["Outage"] = outage;
            RefreshPreviewContent();
        }

        private void RefreshPreviewContent()
        {
            String value = this.Preview_RadioButtonList.SelectedValue;
            String page = String.Empty;
            Outage outage = (Outage)Session["Outage"];
            String ExcelPath = Server.MapPath("~/excel/Blog.xlsx");
            switch (value.ToLower())
            {
                case "email": page = "Customers.aspx";
                    this.EmailControl.Visible = true;
                    this.KBControl.Visible = false;
                    this.ExcelControl.Visible = false;
                    EmailControl.Refresh(outage);
                    break;
                case "kb": page = "Knowledgebase.aspx";
                    this.EmailControl.Visible = false;
                    this.KBControl.Visible = true;
                    this.ExcelControl.Visible = false;
                    KBControl.Refresh(outage);
                    break;
                case "excel": page = "Excel.aspx";
                    this.EmailControl.Visible = false;
                    this.KBControl.Visible = false;
                    OutageRecovery or = GetOutages();
                    String newFilePath = new ExcelMarshall(or, ExcelPath, 5).Marshall();
                    ExcelControl.Refresh("~/excel/" + newFilePath);
                    this.ExcelControl.Visible = true;
                    break;
                default: return;
            }
            ///this.PreviewFrame.Attributes["src"] = page;
        }

        private OutageRecovery GetOutages()
        {
            OutageOngoing oo = (OutageOngoing)Session["Ongoing"];
            OutageUpdate ou = (OutageUpdate)Session["Update"];
            OutageRecovery or = (OutageRecovery)Session["Recovery"];

            ou._Outage = oo;
            or._Outage = ou;

            return or;
            
        }

        private void RefreshOutageContent()
        {
            Outage outage = null;
            String value = this.Outage_RadioButtonList.SelectedValue.ToLower();
            switch (value)
            {
                case "ongoing": outage = (OutageOngoing)Session["Ongoing"]; break;
                case "update": outage = (OutageUpdate)Session["Update"]; break;
                case "recovery": outage = (OutageRecovery)Session["Recovery"]; break;
                default: return;
            }
            this.OutageControl.Refresh(outage);
            Session["Outage"] = outage;
            ///this.OutageFrame.Attributes["src"] = "Outage_.aspx";
        }

        protected void Refresh_Click(object sender, EventArgs e)

        {
            IsOngoingInit = true;
            //RefreshAll();
        }

        private void RefreshAll()
        {
            RefreshOutageContent();
            RefreshPreviewContent();
        }

        private void OutageMenuItemsEnabled(bool enabled)
        {
            int size = this.Outage_RadioButtonList.Items.Count;

            for (int i = 0; i < size; ++i)
            {
                if(!Outage_RadioButtonList.Items[i].Selected)
                {
                    Outage_RadioButtonList.Items[i].Enabled = enabled;
                }
            }
        }

        protected void Outage_RadioButtonList_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (!this.ScriptManager.IsInAsyncPostBack) // trigger caused by full page postback, not updatepanel
            {
                this.IsOngoingInit = true;
                RefreshAll();
                //RefreshPreviewContent();
            }
            /*
            string outageType = this.Outage_RadioButtonList.SelectedValue;
            if(outageType.Equals("Ongoing"))
            {
                Outage outage = (Outage)Session["Outage"];
                ReplicateOutage(outage);
            }*/
         
            /*if (!IsOngoingInit)
            {
                string MESSAGE = String.Format("<script> alert(\"{0}\") </script> ",
                    "Please initialize an Ongoing message first.");
                //Response.Write(MESSAGE);
                this.Outage_RadioButtonList.SelectedIndex = 0;
                return;      
            }*/
            //RefreshAll();
            ///RefreshOutageContent();
            
        }


        protected void Preview_RadioButtonList_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (!this.ScriptManager.IsInAsyncPostBack) // trigger caused by full page postback, not updatepanel
            {
                RefreshAll();//RefreshPreviewContent();
            }
        }

        private void ReplicateOutage(Outage outage)
        {
            Session["Update"] = new OutageUpdate(outage);
            Session["Recovery"] = new OutageRecovery(outage);
        }

        private String OutageHeader;
        private bool IsOngoingInit;
       

    }
}