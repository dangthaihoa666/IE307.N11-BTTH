using Lab4.Views;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Xamarin.Forms;

namespace Lab4
{
    public partial class MainPage : ContentPage
    {
        public MainPage()
        {
            InitializeComponent();
        }

        private void bai1_Clicked(object sender, EventArgs e)
        {
            Navigation.PushAsync(new ListCityPage());
        }
    }
}
