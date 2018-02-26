using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Runtime.InteropServices;
//using Microsoft.Office.Interop.Excel;
using DocumentFormat.OpenXml;
using DocumentFormat.OpenXml.Spreadsheet;
using System.IO;
using DocumentFormat.OpenXml.Packaging;
using CloudSupport.Helpers;
namespace CloudSupport
{
    class ExcelMarshall
    {
        public ExcelMarshall(OutageRecovery outage, String excelPath, int startRow)
        {

            this.ExcelPath = excelPath;
            this.outage = outage;
            this.startRow = startRow;
        }

        public String Marshall(bool RelativePath=true)
        {
            string genFilename = GenerateFilename();
            string genFilenameFullpath = GenerateFullPath(genFilename);
            try
            {

                OpenXMLExcel excel = new OpenXMLExcel(ExcelPath, genFilenameFullpath);
                //Microsoft.Office.Interop.Excel.Application excel = new Microsoft.Office.Interop.Excel.Application();
                //Workbook wb = excel.Workbooks.Open(ExcelPath, null, true);
                //Microsoft.Office.Interop.Excel.Worksheet ws = (Microsoft.Office.Interop.Excel.Worksheet)wb.Worksheets.get_Item(1);

                excel[startRow, (int)Mappings.PROD_IMPACTED] = outage._Outage._Outage.Platform;
                excel[startRow, (int)Mappings.EVENT_TYPE] = "OUTAGE";
                excel[startRow, (int)Mappings.EUROPE] = IsOutage(outage._Outage._Outage.Locations["Europe"]);
                excel[startRow, (int)Mappings.HONG_KONG] = IsOutage(outage._Outage._Outage.Locations["Hong-Kong"]);
                excel[startRow, (int)Mappings.SINGAPORE] = IsOutage(outage._Outage._Outage.Locations["Singapore"]);
                excel[startRow, (int)Mappings.TOKYO] = IsOutage(outage._Outage._Outage.Locations["Tokyo"]);
                excel[startRow, (int)Mappings.CHINA] = IsOutage(outage._Outage._Outage.Locations["China"]);
                excel[startRow, (int)Mappings.US_WEST] = IsOutage(outage._Outage._Outage.Locations["US-West"]);
                excel[startRow, (int)Mappings.US_EAST] = IsOutage(outage._Outage._Outage.Locations["US-East"]);
                excel[startRow, (int)Mappings.START_DATE] = ((DateTime)outage._Outage._Outage.Start).ToString("MM/dd/yyyy");
                excel[startRow, (int)Mappings.START_TIME] = ((DateTime)outage._Outage._Outage.Start).ToString("hh:mm:ss");
                excel[startRow, (int)Mappings.END_DATE] = ((DateTime)outage._Outage._Outage.Return).ToString("MM/dd/yyyy");
                excel[startRow, (int)Mappings.END_TIME] = ((DateTime)outage._Outage._Outage.Return).ToString("hh:mm:ss");
                /*
                ws.Cells[startRow, Mappings.PROD_IMPACTED] = outage._Outage._Outage.Platform;
                ws.Cells[startRow, Mappings.EVENT_TYPE] = "OUTAGE";
                ws.Cells[startRow, Mappings.EUROPE] = IsOutage(outage._Outage._Outage.Locations["Europe"]);
                ws.Cells[startRow, Mappings.HONG_KONG] = IsOutage(outage._Outage._Outage.Locations["Hong-Kong"]);
                ws.Cells[startRow, Mappings.SINGAPORE] = IsOutage(outage._Outage._Outage.Locations["Singapore"]);
                ws.Cells[startRow, Mappings.TOKYO] = IsOutage(outage._Outage._Outage.Locations["Tokyo"]);
                ws.Cells[startRow, Mappings.CHINA] = IsOutage(outage._Outage._Outage.Locations["China"]);
                ws.Cells[startRow, Mappings.US_WEST] = IsOutage(outage._Outage._Outage.Locations["US-West"]);
                ws.Cells[startRow, Mappings.US_EAST] = IsOutage(outage._Outage._Outage.Locations["US-East"]);
                ws.Cells[startRow, Mappings.START_DATE] = ((DateTime)outage._Outage._Outage.Start).ToString("MM/dd/yyyy");
                ws.Cells[startRow, Mappings.START_TIME] = ((DateTime)outage._Outage._Outage.Start).ToString("hh:mm:ss");
                ws.Cells[startRow, Mappings.END_DATE] = ((DateTime)outage._Outage._Outage.Return).ToString("MM/dd/yyyy");
                ws.Cells[startRow, Mappings.END_TIME] = ((DateTime)outage._Outage._Outage.Return).ToString("hh:mm:ss");
                */


                excel[startRow, (int)Mappings.INITIAL_INFO_RECEIVED] = outage._Outage._Outage.InfoReceived.ToString("hh:mm:ss");
                excel[startRow, (int)Mappings.INITIAL_MAIL_SENT] = outage._Outage._Outage.MailSent.ToString("hh:mm:ss");
                excel[startRow, (int)Mappings.INITIAL_BLOG_POST] = outage._Outage._Outage.BlogPosted.ToString("hh:mm:ss");

                excel[startRow, (int)Mappings.UPDATE_INFO_RECEIVED] = outage._Outage.InfoReceived.ToString("hh:mm:ss");
                excel[startRow, (int)Mappings.UPDATE_MAIL_SENT] = outage._Outage.MailSent.ToString("hh:mm:ss");
                excel[startRow, (int)Mappings.UPDATE_BLOG_POST] = outage._Outage.BlogPosted.ToString("hh:mm:ss");

                excel[startRow, (int)Mappings.RECOVERY_INFO_RECEIVED] = outage.InfoReceived.ToString("hh:mm:ss");
                excel[startRow, (int)Mappings.RECOVERY_MAIL_SENT] = outage.MailSent.ToString("hh:mm:ss");
                excel[startRow, (int)Mappings.RECOVERY_BLOG_POST] = outage.BlogPosted.ToString("hh:mm:ss");
                /*ws.Cells[startRow, Mappings.INITIAL_INFO_RECEIVED] = outage._Outage._Outage.InfoReceived.ToString("hh:mm:ss");
                ws.Cells[startRow, Mappings.INITIAL_MAIL_SENT] = outage._Outage._Outage.MailSent.ToString("hh:mm:ss");
                ws.Cells[startRow, Mappings.INITIAL_BLOG_POST] = outage._Outage._Outage.BlogPosted.ToString("hh:mm:ss");

                ws.Cells[startRow, Mappings.UPDATE_INFO_RECEIVED] = outage._Outage.InfoReceived.ToString("hh:mm:ss");
                ws.Cells[startRow, Mappings.UPDATE_MAIL_SENT] = outage._Outage.MailSent.ToString("hh:mm:ss");
                ws.Cells[startRow, Mappings.UPDATE_BLOG_POST] = outage._Outage.BlogPosted.ToString("hh:mm:ss");

                ws.Cells[startRow, Mappings.RECOVERY_INFO_RECEIVED] = outage.InfoReceived.ToString("hh:mm:ss");
                ws.Cells[startRow, Mappings.RECOVERY_MAIL_SENT] = outage.MailSent.ToString("hh:mm:ss");
                ws.Cells[startRow, Mappings.RECOVERY_BLOG_POST] = outage.BlogPosted.ToString("hh:mm:ss");
                */

                excel.Close();
                /*
                wb.SaveAs(genFilenameFullpath);
                object misValue = System.Reflection.Missing.Value;
                wb.Close(true, misValue, misValue);
                excel.Quit();

                Marshal.ReleaseComObject(ws);
                Marshal.ReleaseComObject(wb);
                Marshal.ReleaseComObject(excel);
                */
                return (!RelativePath) ?  genFilenameFullpath : genFilename;
            }
            catch (Exception e)
            {
                //Console.WriteLine(e.ToString());
                //return String.Empty;
                throw e;

            }
        }

        private String IsOutage(bool b)
        {
            return b ? "x" : String.Empty;
        }

        private String GenerateFilename()
        {
            FileInfo file = new FileInfo(ExcelPath);
            string ext = file.Extension;
            int extLength = file.Extension.Length;
            int filenameLength = ((int)file.Name.Length) - extLength;
            string filename = file.Name.Substring(0, filenameLength);

            return String.Format("{0}_{1}{2}", filename, DateTime.Now.ToString("MMddyyyy_hh_mm_ss") /*Guid.NewGuid().ToString()*/, ext);
        }

        private String GenerateFullPath(String filename)
        {
            FileInfo file = new FileInfo(ExcelPath);
            String dir = file.DirectoryName;
            return String.Format("{0}\\{1}", dir, filename);
        }


        private enum Mappings
        {
            PROD_IMPACTED = 1,
            EVENT_TYPE = 2,
            EUROPE = 3,
            HONG_KONG = 4,
            SINGAPORE = 5,
            TOKYO = 6,
            CHINA = 7,
            US_WEST = 8,
            US_EAST = 9,
            START_DATE = 10,
            START_TIME = 11,
            END_DATE = 12,
            END_TIME = 13,
            INITIAL_INFO_RECEIVED = 14,
            INITIAL_MAIL_SENT = 15,
            INITIAL_BLOG_POST = 16,
            UPDATE_INFO_RECEIVED = 17,
            UPDATE_INFO_MODE = 18,
            UPDATE_MAIL_SENT = 19,
            UPDATE_BLOG_POST = 20,
            UPDATE_OCCURENCE = 21,
            RECOVERY_INFO_RECEIVED = 22,
            RECOVERY_MAIL_SENT = 23,
            RECOVERY_BLOG_POST = 24,
            BLOG_SOURCE = 25
        }

        public String ExcelPath { set; get; }

        //private Workbook wb;
        private Outage outage;
        private Mappings mappings;
        private int startRow;
        //private Dictionary<string, int> excelMappings;
    }

}