using System;
using System.Collections.Generic;
using System.Text;

namespace Lab2
{
    public class Hotel
    {
        public string HotelID { get; set; }
        public string LocationID { get; set; }
        public string HotelName { get; set; }
        public string Address { get; set; }
        public string Introduce { get; set; }
        public string Image { get; set; }
        public string IsBooked { get; set; } = "Available";
    }
}
