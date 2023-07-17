using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace Lab3
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class PageCountryCity : ContentPage
    {
        List<City> dsCity = new List<City>();
        Country POR = new Country("Bồ Đào Nha");
        Country VN = new Country("Việt Nam");
        Country GER = new Country("Đức");
        public PageCountryCity()
        {
            InitializeComponent();
            countrypicker.Items.Add("Tất cả");
            countrypicker.Items.Add(VN.CountryName);
            countrypicker.Items.Add(GER.CountryName);
            countrypicker.Items.Add(POR.CountryName);

            dsCity.Add(new City { CountryID = "VN", CityID = "VN1", CityName = "Hà Nội", CityImage = "UITLogo.webp" });
            dsCity.Add(new City { CountryID = "VN", CityID = "VN2", CityName = "Hồ Chí Minh", CityImage = "UITLogo.webp" });
            dsCity.Add(new City { CountryID = "VN", CityID = "VN3", CityName = "Đà Nẵng", CityImage = "UITLogo.webp" });
            dsCity.Add(new City { CountryID = "GER", CityID = "GER1", CityName = "Berlin", CityImage = "UITLogo.webp" });
            dsCity.Add(new City { CountryID = "GER", CityID = "GER2", CityName = "Cologne", CityImage = "UITLogo.webp" });
            dsCity.Add(new City { CountryID = "GER", CityID = "GER3", CityName = "Munich", CityImage = "UITLogo.webp" });
            dsCity.Add(new City { CountryID = "POR", CityID = "POR1", CityName = "Porto", CityImage = "UITLogo.webp" });
            dsCity.Add(new City { CountryID = "POR", CityID = "POR2", CityName = "Lisbon", CityImage = "UITLogo.webp" });
            dsCity.Add(new City { CountryID = "POR", CityID = "POR3", CityName = "Obidos", CityImage = "UITLogo.webp" });
            
            listCity.ItemsSource = dsCity;

            foreach (City city in dsCity)
            {
                if (city.CountryID == "POR")
                    POR.Add(city);
                if (city.CountryID == "VN")
                    VN.Add(city);
                if (city.CountryID == "GER")
                    GER.Add(city);
            }

        }

        private void countrypicker_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (countrypicker.SelectedIndex == 0)
            {
                listCity.ItemsSource = dsCity;
            }

            if (countrypicker.SelectedIndex == 1)
            {
                listCity.ItemsSource = VN;
            }

            if (countrypicker.SelectedIndex == 2)
            {
                listCity.ItemsSource = GER;
            }

            if (countrypicker.SelectedIndex == 3)
            {
                listCity.ItemsSource = POR;
            }
        }
    }
}