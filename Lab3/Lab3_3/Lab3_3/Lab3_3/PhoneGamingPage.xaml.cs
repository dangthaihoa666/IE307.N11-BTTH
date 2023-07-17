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
    public partial class PhoneGamingPage : ContentPage
    {
        public List<SanPham> dsPhoneGM = new List<SanPham>(); 
        int favouriteTapCount = 0;
        public PhoneGamingPage()
        {
            InitializeComponent();
            dsPhoneGM.Add(new SanPham { LoaiSP = "Phone", Loai = "GM", ID = "GM1", Name = "Xiaomi 11T Pro 5G", Image = "Xiaomi_11T_Pro_5G.jpg", Cost = "23,290,000 vnđ", Star = "4.9" });
            listGMPhone.ItemsSource = dsPhoneGM;
        }
        private async void OnDeleteSwipeItemIvoked(object sender, EventArgs e)
        {
            bool answer = await DisplayAlert("Warning", "Do you really want to delete it?", "YES", "NO");
            if (answer)
            {
                SwipeItem swipeitem = (SwipeItem)sender;
                SanPham sp = swipeitem.CommandParameter as SanPham;
                _ = dsPhoneGM.Remove(sp);
            }

        }

        private void OnBuySwipeItemInvoked(object sender, EventArgs e)
        {

        }
        private void OnRefresh(object sender, EventArgs e)
        {
            
            //listGMPhone.EndRefresh();
        }

        private void RVGMPhone_Refreshing(object sender, EventArgs e)
        {
            listGMPhone.ItemsSource = null;
            listGMPhone.ItemsSource = dsPhoneGM;
            RVGMPhone.IsRefreshing = false;
        }

        private void ImgAddToWishlist_Tapped(object sender, EventArgs e)
        {
            favouriteTapCount++;
            Image img = sender as Image;
            img.Source = favouriteTapCount % 2 == 0 ? "FavouriteBlackIcon.png" : "FavouriteRedIcon.png";
        }
    }
}