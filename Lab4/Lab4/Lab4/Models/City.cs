using System;
using System.Collections.Generic;
using System.Text;
using SQLite;

namespace Lab4
{
    public class City
    {
        [PrimaryKey,AutoIncrement]
        public int CityID { get; set; }
        public string CityName { get; set; }
        public string CityImageUrl { get; set; }
    }
}
