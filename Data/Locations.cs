using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CloudSupport
{
    public class Locations
    {
        public Locations(String enabledImage, String disabledImage)
        {
            this.enabledImage = enabledImage;
            this.disabledImage = disabledImage;
        }

        public bool this[String key]
        {
            get
            {
                return locations[key];
            }
            set
            {
                locations[key] = value;
            }
        }

        public String GetImage(string key)
        {
            return (locations[key] ? disabledImage : enabledImage);
        }

        public String EnabledImage
        {
            private set
            {

            }
            get
            {
                return enabledImage;
            }
        }

        public String DisabledImage
        {
            private set
            {

            }
            get
            {
                return disabledImage;
            }
        }

        // OLD
        /*
        public void Enable(String key)
        {
            locations[key] = true;
        }

        public void Disable(String key)
        {
            locations[key] = false;
        }

        public String this[String key]
        {
            get
            {
                return (locations[key] ? disabledImage : enabledImage);
            }
        }*/

        public String[] Keys
        {
            get
            {
                return locations.Keys.ToArray<String>();
            }
        }

        public String[] AffectedLocations
        {
            get
            {
                List<string> list = new List<string>();
                String[] keys = this.Keys;
                foreach(string key in keys)
                {
                    bool isEnabled = locations[key];
                    if (isEnabled)
                        list.Add(key);
                }
                return list.ToArray<String>();
            }
        }

        private String enabledImage;
        private String disabledImage;
        private Dictionary<String, Boolean> locations = new Dictionary<String, Boolean>();
    }
}