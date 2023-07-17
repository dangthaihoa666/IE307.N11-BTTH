using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Input;
using Xamarin.Essentials;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace Lab3_2
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class MainShell : Shell
    {
        public ICommand HelpCommand => new Command<string>(async (url) => await Browser.OpenAsync(url));
        
        public MainShell()
        {
            InitializeComponent();
            BindingContext = this;
        }
    }
}