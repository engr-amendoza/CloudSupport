using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Text;

namespace CloudSupport
{
    public class Helper
    {
        public static String ToDatetimeLocal(DateTime dt)
        {
            return String.Format("{0}-{1}-{2}T{3}:{4}:{5}",
                dt.Year, dt.Month, dt.Day, dt.Hour, dt.Minute, dt.Second);
        }

        public static String GenerateURL(String URL, Dictionary<String, String> parameters)
        {
            StringBuilder sb = new StringBuilder();
            sb.Append(URL);

            int size = parameters.Count;
            int count = 0;

            if (parameters == null || size == 0)
                return sb.ToString();

            sb.Append("?");
            foreach (KeyValuePair<String, String> kv in parameters)
            {
                sb.Append(String.Format("{0}={1}", kv.Key, kv.Value));
                count++;
                if (count < size)
                    sb.Append("&");
            }
            return sb.ToString();
        }
    }
}