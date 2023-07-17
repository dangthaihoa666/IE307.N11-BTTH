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
    public partial class PhoneIPhonePage : ContentPage
    {
        public List<SanPham> dsIPhone = new List<SanPham>();
        int favouriteTapCount = 0;
        public PhoneIPhonePage()
        {
            InitializeComponent();
            dsIPhone.Add(new SanPham { LoaiSP = "Phone", Loai = "IP", ID = "IP1", Name = "IPhone 13 Pro Max", Image = "iPhone_13_Pro_Max.jpg", Cost = "20,990,000 vnđ", Star = "4.6" });
            listIphone.ItemsSource = dsIPhone;
        }

        private async void OnDeleteSwipeItemIvoked(object sender, EventArgs e)
        {
            bool answer = await DisplayAlert("Warning", "Do you really want to delete it?", "YES", "NO");
            if (answer)
            {
                SwipeItem swipeitem = (SwipeItem)sender;
                SanPham sp = swipeitem.CommandParameter as SanPham;
                _ = dsIPhone.Remove(sp);
            }

        }

        private void OnBuySwipeItemInvoked(object sender, EventArgs e)
        {

        }
        

        private void RVIPhone_Refreshing(object sender, EventArgs e)
        {
            listIphone.ItemsSource = null;
            listIphone.ItemsSource = dsIPhone;
            RVIPhone.IsRefreshing = false;
        }

        private void ImgAddToWishlist_Tapped(object sender, EventArgs e)
        {
            favouriteTapCount++;
            Image img = sender as Image;
            img.Source = favouriteTapCount % 2 == 0 ? "FavouriteBlackIcon.png" : "FavouriteRedIcon.png";
        }
    }
}