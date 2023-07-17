using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Net.Http;
using System.Text;
using System.Threading.Tasks;
using Xamarin.Forms;

namespace Lab5_Xamarin
{
    public partial class MainPage : ContentPage
    {
        public MainPage()
        {
            InitializeComponent();
        }

        private async void CmdHelloWebAPI_Clicked(object sender, EventArgs e)
        {
            HttpClient httpClient = new HttpClient();
            var result = await httpClient.GetStringAsync("http://172.20.14.98/webapidemo/api/ServiceController/HelloWebAPI");
            LblHello.Text = result;
            LblHello.TextColor = Color.Red;
        }

        private void CmdSubjectList_Clicked(object sender, EventArgs e)
        {
            Navigation.PushAsync(new PageSubjectList());
        }
    }
}
