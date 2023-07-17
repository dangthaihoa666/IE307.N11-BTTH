﻿using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Xamarin.Forms;

namespace Lab2
{
    public partial class MainPage : ContentPage
    {
        public MainPage()
        {
            InitializeComponent();
            
        }

        private void Bai1_Clicked(object sender, EventArgs e)
        {
            Navigation.PushAsync(new BookingLocation());
        }

        private void Bai2_Clicked(object sender, EventArgs e)
        {
            Navigation.PushAsync(new AnimalPage());
        }
    }
}
