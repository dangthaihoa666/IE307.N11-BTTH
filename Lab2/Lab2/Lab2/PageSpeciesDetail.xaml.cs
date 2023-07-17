using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace Lab2
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class PageSpeciesDetail : ContentPage
    {
        public PageSpeciesDetail(Species species)
        {
            InitializeComponent();
            Title = species.VNname;
            Hinh.Source = species.Image;
            VN.Text = species.VNname;
            LT.Text = species.LTname;
            Ho.Text = "Họ: " + species.ho;
            Bo.Text = "Bộ: " + species.bo;
            Dacdiem.Text = species.dacdiem;
            Phanbo.Text = species.phanbo;
        }
    }

}