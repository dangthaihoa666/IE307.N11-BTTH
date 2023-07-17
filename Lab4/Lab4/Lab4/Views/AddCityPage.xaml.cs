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
    public partial class AddCityPage : ContentPage
    {
        City _city;
        public AddCityPage()
        {
            InitializeComponent();
            Title = "Thêm thành phố mới";
        }
        public AddCityPage( City city)
        {
            InitializeComponent();
            Title = "Sửa thành phố";
            _city = city;
            EntCityName.Text = city.CityName;
            EntCityImg.Text = city.CityImageUrl;
            EntCityName.Focus();
        }

        private async void BtnAddNewCity_Clicked(object sender, EventArgs e)
        {
            if (string.IsNullOrWhiteSpace(EntCityName.Text) || string.IsNullOrWhiteSpace(EntCityImg.Text))
            {
                await DisplayAlert("Thông báo", "Vui lòng điền đầy đủ thông tin!", "OK");
            }
            else if (_city != null)
            {
                _city.CityName = EntCityName.Text;
                _city.CityImageUrl = EntCityImg.Text;
                App.BookingDb.UpdateCity(_city);
                await Navigation.PopAsync();
            }
            else
            {
                City city = new City
                {
                    CityName = EntCityName.Text,
                    CityImageUrl = EntCityImg.Text
                };
                if (App.BookingDb.CreateCity(city))
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