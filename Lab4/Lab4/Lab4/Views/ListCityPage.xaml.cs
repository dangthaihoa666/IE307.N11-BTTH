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
    public partial class ListCityPage : ContentPage
    {
        public ListCityPage()
        {
            InitializeComponent();
        }
        protected override void OnAppearing()
        {
            base.OnAppearing();
            CVCity.ItemsSource = App.BookingDb.ReadCities();
        }

        private void TIAddCity_Clicked(object sender, EventArgs e)
        {
            Navigation.PushAsync(new AddCityPage());
        }

        private void CVCity_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            City selectedCity = (City)CVCity.SelectedItem;
            Navigation.PushAsync(new ListHotelPage(selectedCity));
        }

        private async void SWDelete_Invoked(object sender, EventArgs e)
        {
            var swipeItem = sender as SwipeItem;
            var city = swipeItem.CommandParameter as City;
            bool answer = await DisplayAlert("Thông báo", $"Bạn có muốn xóa {city.CityName} không?", "CÓ", "KHÔNG");
            if(answer)
            {
                App.BookingDb.DeleteCity(city);
                CVCity.ItemsSource = App.BookingDb.ReadCities();
            }
        }

        private void SWEdit_Invoked(object sender, EventArgs e)
        {
            var swipeItem = sender as SwipeItem;
            var city = swipeItem.CommandParameter as City;
            Navigation.PushAsync(new AddCityPage(city));
        }
    }
}