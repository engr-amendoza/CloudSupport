using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CloudSupport.Helpers
{
    class Base26 : BaseConverter
    {
        public override string ConvertTo(int num)
        {
            return Convert(26, num);
        }

        protected override string Mapping(int num)
        {
            const int start = 'A';
            string value = ((char)(start + num - 1)).ToString();
            return (num >= 1 && num <= 26) ? value : String.Empty;
        }
    }
}