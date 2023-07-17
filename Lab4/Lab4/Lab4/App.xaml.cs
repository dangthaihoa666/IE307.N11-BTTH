﻿using System;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace Lab4
{
    public partial class App : Application
    {
        public static BookingDatabase BookingDb = new BookingDatabase();
        public App()
        {
            InitializeComponent();

            MainPage = new NavigationPage(new MainPage());
        }

        protected override void OnStart()
        {
        }

        protected override void OnSleep()
        {
        }

        protected override void OnResume()
        {
        }
    }
}
