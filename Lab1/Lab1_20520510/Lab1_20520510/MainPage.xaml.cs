using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Xamarin.Forms;

namespace Lab1_20520510
{
    public partial class MainPage : ContentPage
    {
        public MainPage()
        {
            InitializeComponent();
        }

        private void bai1_Clicked(object sender, EventArgs e)
        {
            Navigation.PushAsync(new Bai1(), true);
        }

        private void bai2_1_Clicked(object sender, EventArgs e)
        {
            Navigation.PushAsync(new Bai2_1(), true);
        }

        private void bai2_2_Clicked(object sender, EventArgs e)
        {
            Navigation.PushAsync(new Bai2_2(), true);
        }

        private void bai3_Clicked(object sender, EventArgs e)
        {
            Navigation.PushAsync(new Bai3(), true);
        }

        private void bai4_Clicked(object sender, EventArgs e)
        {
            Navigation.PushAsync(new Bai4(), true);
        }

        private void calculator_Clicked(object sender, EventArgs e)
        {
            Navigation.PushAsync(new Calculator(), true);
        }
    }
}
