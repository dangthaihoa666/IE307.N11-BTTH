using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Text;
using System.Threading.Tasks;

using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace Lab5_Xamarin
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class PageSubjectList : ContentPage
    {
        public PageSubjectList()
        {
            InitializeComponent();
            ListViewInit();
        }

        private void LstSubject_ItemSelected(object sender, SelectedItemChangedEventArgs e)
        {
            Subject subject = (Subject)e.SelectedItem;
            Navigation.PushAsync(new PageBooksBySubject(subject));
        }
        async void ListViewInit()
        {
            HttpClient httpClient = new HttpClient();
            var subjectList = await httpClient.GetStringAsync("http://172.20.14.98/webapidemo/api/ServiceController/GetAllSubject");
            var subjectListConverted = JsonConvert.DeserializeObject<List<Subject>>(subjectList);
            LstSubject.ItemsSource = subjectListConverted;
        }
    }    
}