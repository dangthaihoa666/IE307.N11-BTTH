using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace Lab3_3
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class LaptopVPPage : ContentPage
    {
        public List<SanPham> dsLapVP = new List<SanPham>();
        int favouriteTapCount = 0;
        public LaptopVPPage()
        {
            InitializeComponent();
            dsLapVP.Add(new SanPham { LoaiSP = "Laptop", Loai = "VP", ID = "VP1", Name = "Dell Inspiron 15", Image = "Dell_Inspiron_15_5515.jpg", Cost = "24,290,000 vnđ", Star = "4.1" });
            dsLapVP.Add(new SanPham { LoaiSP = "Laptop", Loai = "VP", ID = "VP2", Name = "Asus Zenbook 14", Image = "Asus_Zenbook_14_OLED.jpg", Cost = "29,990,000 vnđ", Star = "4.5" });
            dsLapVP.Add(new SanPham { LoaiSP = "Laptop", Loai = "VP", ID = "VP3", Name = "Lenovo ThinkBook 14", Image = "Lenovo_ThinkBook_14_G2.jpg", Cost = "19590000", Star = "3.9" });
            listLapVP.ItemsSource = dsLapVP;
        }

        private void ImgAddToWishlist_Tapped(object sender, EventArgs e)
        {
            favouriteTapCount++;
            Image img = sender as Image;
            img.Source = favouriteTapCount % 2 == 0 ? "FavouriteBlackIcon.png" : "FavouriteRedIcon.png";
        }
    }
}