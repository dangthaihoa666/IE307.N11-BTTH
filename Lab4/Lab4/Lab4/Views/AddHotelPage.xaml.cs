using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace Lab4.Views
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class AddHotelPage : ContentPage
    {
        private readonly Hotel _hotel;
        public AddHotelPage()
        {
            InitializeComponent();
        }
        public AddHotelPage(City city)
        {
            InitializeComponent();
            Title = "Thêm khách sạn mới";
            PickerInit(city.CityID);
        }

        public AddHotelPage(Hotel hotel)
        {
            InitializeComponent();
            Title = "Sửa khách sạn";
            _hotel = hotel;
            EntHotelName.Text = hotel.HotelName;
            EntHotelImg.Text = hotel.HotelImageUrl;
            PickerInit(hotel.CityID);
        }

        private void PickerInit(int cityID)
        {
            List<City> cities = App.BookingDb.ReadCities();
            picker.ItemsSource = cities;
            foreach (City ct in cities)
            {
                if (cityID == ct.CityID)
                {
                    picker.SelectedIndex = cities.IndexOf(ct);
                    break;
                }
            }
        }

        private async void BtnAddNewHotel_Clicked(object sender, EventArgs e)
        {
            if (string.IsNullOrWhiteSpace(EntHotelName.Text) || string.IsNullOrWhiteSpace(EntHotelImg.Text))
            {
                await DisplayAlert("Thông báo", "Vui lòng điền đầy đủ thông tin!", "OK");
            }
            else if (_hotel != null)
            {
                _hotel.HotelName = EntHotelName.Text;
                _hotel.HotelImageUrl = EntHotelImg.Text;
                City selectedCity = (City)picker.SelectedItem;
                _hotel.CityID = selectedCity.CityID;
                App.BookingDb.UpdateHotel(_hotel);
                await Navigation.PopAsync();
            }
            else
            {
                Hotel hotel = new Hotel
                {
                    HotelName = EntHotelName.Text,
                    HotelImageUrl = EntHotelImg.Text
                };
                City selectedCity = (City)picker.SelectedItem;
                hotel.CityID = selectedCity.CityID;

                if (App.BookingDb.CreateHotel(hotel))
                {
                    await DisplayAlert("Thông báo", "Thêm mới thành công!", "OK");
                    await Navigation.PopAsync();
                }
                else
                {
                    await DisplayAlert("Lỗi", "Thêm mới thất bại!", "OK");
                }
            }
            
        }
    }
}