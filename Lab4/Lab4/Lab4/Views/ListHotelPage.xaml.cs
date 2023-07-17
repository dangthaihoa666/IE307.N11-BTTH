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
    public partial class ListHotelPage : ContentPage
    {
        City _city;
        public ListHotelPage()
        {
            InitializeComponent();
        }
        public ListHotelPage(City city)
        {
            InitializeComponent();
            _city = city;
            Title = city.CityName;
        }
        protected override void OnAppearing()
        {
            base.OnAppearing();
            CVHotel.ItemsSource = App.BookingDb.GetHotelsByCityID(_city.CityID);
        }

        private void TIAddHotel_Clicked(object sender, EventArgs e)
        {
            Navigation.PushAsync(new AddHotelPage(_city));
        }

        private void CVHotel_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            Hotel selectedHotel = (Hotel)CVHotel.SelectedItem;
        }

        private async void SWDelete_Invoked(object sender, EventArgs e)
        {
            var swipeItem = sender as SwipeItem;
            var hotel = swipeItem.CommandParameter as Hotel;
            int cityID = hotel.CityID;
            bool answer = await DisplayAlert("Thông báo", $"Bạn có muốn xóa {hotel.HotelName} không?", "CÓ", "KHÔNG");
            if (answer)
            {
                App.BookingDb.DeleteHotel(hotel);
                CVHotel.ItemsSource = App.BookingDb.GetHotelsByCityID(cityID);
            }
        }

        private void SWEdit_Invoked(object sender, EventArgs e)
        {
            var swipeItem = sender as SwipeItem;
            var hotel = swipeItem.CommandParameter as Hotel;
            Navigation.PushAsync(new AddHotelPage(hotel));
        }
    }
}