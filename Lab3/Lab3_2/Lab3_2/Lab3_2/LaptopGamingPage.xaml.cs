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
    public partial class LaptopGamingPage : ContentPage
    {
        public List<SanPham> dsLapGM = new List<SanPham>(); 
        int favouriteTapCount = 0;
        public LaptopGamingPage()
        {
            InitializeComponent();

            dsLapGM.Add(new SanPham { LoaiSP = "Laptop", Loai = "GM", ID = "GM1", Name = "ASUS TUF A15", Image = "ASUS_TUF_A15_FA507RC_HN051W.jpg", Cost = "23,290,000 vnđ", Star = "4.9" });
            dsLapGM.Add(new SanPham { LoaiSP = "Laptop", Loai = "GM", ID = "GM2", Name = "Acer Nitro 5 Eagle", Image = "Acer_Nitro_5_Eagle_AN515_57_54MV.jpg", Cost = "20,990,000 vnđ", Star = "4.6" });
            listLapGM.ItemsSource = dsLapGM;
        }

        private void ImgAddToWishlist_Tapped(object sender, EventArgs e)
        {
            favouriteTapCount++;
            Image img = sender as Image;
            img.Source = favouriteTapCount % 2 == 0 ? "FavouriteBlackIcon.png" : "FavouriteRedIcon.png";
        }
    }
}