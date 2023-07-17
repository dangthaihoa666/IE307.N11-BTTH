using System;
using System.Collections.Generic;
using System.Text;

namespace Lab3
{
    public class Country : List<City>
    {
        public string CountryID { get; set; }
        public string CountryName { get; set; }
        public string CountryImage { get; set; }
        public Country(string CountryName)
        {
            this.CountryName = CountryName;
        }
    }
}
