using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace Lab1_20520510
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class Bai3 : ContentPage
    {
        public Bai3()
        {
            InitializeComponent();
            NavigationPage.SetHasNavigationBar(this, true);
            Title = "Basic Controls";
        }

    }
}