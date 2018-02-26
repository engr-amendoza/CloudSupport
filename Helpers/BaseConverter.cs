using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;

namespace CloudSupport.Helpers
{
    abstract public class BaseConverter
    {
        abstract protected String Mapping(int num);
        abstract public string ConvertTo(int num);

        protected string Convert(int _base, int num)
        {
            Stack<int> stack = new Stack<int>();
            int maxPower = MaxPower(_base, num);
            int tempNum = num;
            while (maxPower >= 0)
            {
                int pow = (int)Math.Pow(_base, maxPower);

                int result = tempNum / pow;
                int rem = tempNum % pow;

                // special case where num is divisible by _base
                if (rem == 0 && maxPower != 0)
                {
                    result--;
                    rem = _base;
                }

                stack.Push(result);
                tempNum = rem;
                maxPower--;
            }

            return Reverse(stack);
        }

        private int MaxPower(int _base, int num)
        {
            int pow = -1;
            double result = 0;
            while (result < num)
            {
                result = Math.Pow(_base, ++pow);
            }
            return pow - 1;
        }

        private string Reverse(Stack<int> stack)
        {
            Stack<int> reverse = new Stack<int>();
            StringBuilder sb = new StringBuilder();
            String temp = String.Empty;
            while (stack.Count > 0)
            {
                reverse.Push(stack.Pop());
            }

            while (reverse.Count > 0)
            {
                String mapping = Mapping(reverse.Pop());
                sb.Append(mapping);
            }

            temp = sb.ToString();
            return temp;
            //return (String.IsNullOrEmpty(temp)) ? 0 : Int32.Parse(temp);
        }
    }
}