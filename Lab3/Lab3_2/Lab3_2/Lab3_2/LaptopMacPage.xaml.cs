using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace Lab3_2
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class LaptopMacPage : ContentPage
    {
        public List<SanPham> dsLapMac = new List<SanPham>();
        int favouriteTapCount = 0;
        public LaptopMacPage()
        {
            InitializeComponent();
            dsLapMac.Add(new SanPham { LoaiSP = "Laptop", Loai = "MAC", ID = "MAC1", Name = "Macbook Pro M2 2022", Image = "MacBook_Pro_M2_2022.jpg", Cost = "33,990,000 vnđ", Star = "4.3" });
            listLapMac.ItemsSource = dsLapMac;
        }

        private void ImgAddToWishlist_Tapped(object sender, EventArgs e)
        {
            favouriteTapCount++;
            Image img = sender as Image;
            img.Source = favouriteTapCount % 2 == 0 ? "FavouriteBlackIcon.png" : "FavouriteRedIcon.png";
        }
    }
}