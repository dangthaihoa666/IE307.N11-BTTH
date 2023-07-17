using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Xamarin.Forms;

namespace Lab3_3
{
    public partial class MainPage : ContentPage
    {
        public List<SanPham> dsSP = new List<SanPham>();
        int favouriteTapCount = 0;
        public MainPage()
        {
            InitializeComponent();
            dsSP.Add(new SanPham { LoaiSP = "Laptop", Loai = "VP", ID = "VP1", Name = "Dell Inspiron 15", Image = "Dell_Inspiron_15_5515.jpg", Cost = "24,290,000 vnđ", Star = "4.1" });
            dsSP.Add(new SanPham { LoaiSP = "Laptop", Loai = "VP", ID = "VP2", Name = "Asus Zenbook 14", Image = "Asus_Zenbook_14_OLED.jpg", Cost = "29,990,000 vnđ", Star = "4.5" });
            dsSP.Add(new SanPham { LoaiSP = "Laptop", Loai = "VP", ID = "VP3", Name = "Lenovo ThinkBook 14", Image = "Lenovo_ThinkBook_14_G2.jpg", Cost = "19,590,000 vnđ", Star = "3.9" });
            dsSP.Add(new SanPham { LoaiSP = "Laptop", Loai = "MAC", ID = "MAC1", Name = "Macbook Pro M2 2022", Image = "MacBook_Pro_M2_2022.jpg", Cost = "33,990,000 vnđ", Star = "4.3" });
            dsSP.Add(new SanPham { LoaiSP = "Laptop", Loai = "GM", ID = "GM1", Name = "ASUS TUF A15", Image = "ASUS_TUF_A15_FA507RC_HN051W.jpg", Cost = "23,290,000 vnđ", Star = "4.9" });
            dsSP.Add(new SanPham { LoaiSP = "Laptop", Loai = "GM", ID = "GM2", Name = "Acer Nitro 5 Eagle", Image = "Acer_Nitro_5_Eagle_AN515_57_54MV.jpg", Cost = "20,990,000 vnđ", Star = "4.6" });
            dsSP.Add(new SanPham { LoaiSP = "Phone", Loai = "CAQP", ID = "CAQP1", Name = "Lenovo ThinkBook 14", Image = "OPPO_Find_X5_Pro_5G.jpg", Cost = "19,590,000 vnđ", Star = "3.9" });
            dsSP.Add(new SanPham { LoaiSP = "Phone", Loai = "CAQP", ID = "CAQP2", Name = "Samsung Galaxy S22 Ultra", Image = "Samsung_Galaxy_S22_Ultra.jpg", Cost = "33,990,000 vnđ", Star = "4.3" });
            dsSP.Add(new SanPham { LoaiSP = "Phone", Loai = "GM", ID = "GM1", Name = "Xiaomi 11T Pro 5G", Image = "Xiaomi_11T_Pro_5G.jpg", Cost = "23,290,000 vnđ", Star = "4.9" });
            dsSP.Add(new SanPham { LoaiSP = "Phone", Loai = "IP", ID = "IP1", Name = "IPhone 13 Pro Max", Image = "iPhone_13_Pro_Max.jpg", Cost = "20,990,000 vnđ", Star = "4.6" });
            listSP.ItemsSource = dsSP;
           
        }

        private void ImgAddToWishlist_Tapped(object sender, EventArgs e)
        {
            favouriteTapCount++;
            Image img = sender as Image;
            img.Source = favouriteTapCount % 2 == 0 ? "FavouriteBlackIcon.png" : "FavouriteRedIcon.png";
        }
    }
}
