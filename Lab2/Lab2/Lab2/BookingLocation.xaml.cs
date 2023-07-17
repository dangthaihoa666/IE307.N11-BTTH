using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace Lab2
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class BookingLocation : ContentPage
    {
        public BookingLocation()
        {
            InitializeComponent();
            CreatelistLocation();
        }
        void CreatelistLocation()
        {
            List<Location> dslocation = new List<Location>();
            dslocation.Add(new Location { LocationID = "DL", LocationName = "Đà Lạt", LocationImage = "dalat.jpg" });
            dslocation.Add(new Location { LocationID = "VT", LocationName = "Vũng Tàu", LocationImage = "vungtau.jpg" });
            dslocation.Add(new Location { LocationID = "PQ", LocationName = "Phú Quốc", LocationImage = "phuquoc.jpg" });
            dslocation.Add(new Location { LocationID = "HN", LocationName = "Hà Nội", LocationImage = "hanoi.jpg" });
            dslocation.Add(new Location { LocationID = "HCM", LocationName = "TP Hồ Chí Minh", LocationImage = "hcm.jpg" });
            listlocation.ItemsSource = dslocation;
        }

        private void listlocation_ItemTapped(object sender, ItemTappedEventArgs e)
        {
            if (listlocation.SelectedItem != null)
            {
                Location location = (Location)listlocation.SelectedItem;
                Navigation.PushAsync(new PageHotel(location));
            }
        }
    }
}