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
    public partial class PhoneCAQPPage : ContentPage
    {
        public List<SanPham> dsPhoneCAQP = new List<SanPham>();
        int favouriteTapCount = 0;
        public PhoneCAQPPage()
        {
            InitializeComponent();
            dsPhoneCAQP.Add(new SanPham { LoaiSP = "Phone", Loai = "CAQP", ID = "CAQP1", Name = "Lenovo ThinkBook 14", Image = "OPPO_Find_X5_Pro_5G.jpg", Cost = "19,590,000 vnđ", Star = "3.9" });
            dsPhoneCAQP.Add(new SanPham { LoaiSP = "Phone", Loai = "CAQP", ID = "CAQP2", Name = "Samsung Galaxy S22 Ultra", Image = "Samsung_Galaxy_S22_Ultra.jpg", Cost = "33,990,000 vnđ", Star = "4.3" });
            listCAQPPhone.ItemsSource = dsPhoneCAQP;
        }
        private async void OnDeleteSwipeItemIvoked(object sender, EventArgs e)
        {
            bool answer = await DisplayAlert("Warning", "Do you really want to delete it?", "YES", "NO");

            if (answer)
            {
                SwipeItem swipeitem = (SwipeItem)sender;
                SanPham sp = swipeitem.CommandParameter as SanPham;
                _ = dsPhoneCAQP.Remove(sp);
            }

        }

        private void OnBuySwipeItemInvoked(object sender, EventArgs e)
        {

        }
        private void OnRefresh(object sender, EventArgs e)
        {
            
            //listCAQPPhone.EndRefresh();
        }

        private void RVCAQPPhone_Refreshing(object sender, EventArgs e)
        {
            listCAQPPhone.ItemsSource = null;
            listCAQPPhone.ItemsSource = dsPhoneCAQP;
            RVCAQPPhone.IsRefreshing = false;
        }

        private void ImgAddToWishlist_Tapped(object sender, EventArgs e)
        {
            favouriteTapCount++;
            Image img = sender as Image;
            img.Source = favouriteTapCount % 2 == 0 ? "FavouriteBlackIcon.png" : "FavouriteRedIcon.png";
        }
    }
}