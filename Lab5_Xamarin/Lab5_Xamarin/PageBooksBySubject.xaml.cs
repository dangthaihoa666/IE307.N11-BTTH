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
    public partial class PageBooksBySubject : ContentPage
    {
        public PageBooksBySubject(Subject subject)
        {
            InitializeComponent();
            GetBooksBySubjectID(subject.Mcd);
            Title = subject.Ten_chu_de;
        }
        async void GetBooksBySubjectID(int subjectID)
        {
            HttpClient httpClient = new HttpClient();
            var bookList = await httpClient.GetStringAsync("http://172.20.14.98/webapidemo/api/ServiceController/GetBooksBySubjectID?macd=" + subjectID.ToString());
            var bookListConverted = JsonConvert.DeserializeObject<List<Book>>(bookList);
            LstBook.ItemsSource = bookListConverted;
        }
    }

   
}