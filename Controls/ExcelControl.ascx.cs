using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CloudSupport.Controls
{
    public partial class ExcelControl : System.Web.UI.UserControl
    {
        /*protected void Page_Load(object sender, EventArgs e)
        {
            Response.ContentType = "application/vnd.ms-excel";

            string sFile = Server.MapPath(@".\excel\Blog Template_temp.xlsx");

            FileStream fs = new FileStream(sFile, FileMode.Open, FileAccess.Read);

            byte[] b = new byte[(int)fs.Length];

            fs.Read(b, 0, (int)fs.Length);

            fs.Close();

            Response.Clear();

            Response.BinaryWrite(b);

            Response.End();
        }*/

            /*
        public void Refresh(string filepath)
        {
            Response.ContentType = "application/vnd.ms-excel";

            string sFile = Server.MapPath(filepath);

            FileStream fs = new FileStream(sFile, FileMode.Open, FileAccess.Read);

            byte[] b = new byte[(int)fs.Length];

            fs.Read(b, 0, (int)fs.Length);

            fs.Close();

            Response.Clear();

            Response.BinaryWrite(b);

            Response.End();
        }*/

        public void Refresh(String filepath)
        {
            //string sFile = this.Request.UrlReferrer.AbsoluteUri + filepath;

            //string src = String.Format(@"https://sheet.zoho.com/sheet/view.do?url={0}&name=newName", sFile);
            this.IFrameControl.Attributes["src"] = filepath;//src;
      
        }
    }
}