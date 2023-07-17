using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace Lab1_20520510
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class Bai4 : ContentPage
    {
        public Bai4()
        {
            InitializeComponent();
            NavigationPage.SetHasNavigationBar(this, true);
            Title = "Handling The Controls";
        }
        private void SubmitBtn_Clicked(object sender, EventArgs e)
        {
            string usrName = entUsrName.Text ?? "";
            string usrEmail = entUsrEmail.Text ?? "";
            string usrPhone = entUsrPhone.Text ?? "";
            string usrDOB = dpkUsrDOB.Date.ToString("dd/MM/yyyy");
            string usrGender = swUsrGender.IsToggled ? "Male" : "Female";
            string messageContent = "Name: " + usrName + "\nEmail: " + usrEmail + "\nPhone: " + usrPhone + "\nBirthday: " + usrDOB + "\nGender: " + usrGender;
            DisplayAlert("Message", messageContent, "OK");
        }
        private void CancelBtn_Clicked(object sender, EventArgs e)
        {
            entUsrName.Text = "";
            entUsrEmail.Text = "";
            entUsrPhone.Text = "";
            dpkUsrDOB.Date = DateTime.Today;
            swUsrGender.IsToggled = false;
        }
    }
}