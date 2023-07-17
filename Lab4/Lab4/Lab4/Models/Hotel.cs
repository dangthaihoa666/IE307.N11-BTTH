using System;
using System.Collections.Generic;
using System.Text;
using SQLite;
namespace Lab4
{
    public class Hotel
    {
        [PrimaryKey, AutoIncrement]
        public int HotelID { get; set; }
        public string HotelName { get; set; }
        public string HotelImageUrl { get; set; }
        public int CityID { get; set; }
    }
}
