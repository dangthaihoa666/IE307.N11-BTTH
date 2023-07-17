using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace Lab2
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class AnimalPage : ContentPage
    {
        public AnimalPage()
        {
            InitializeComponent();
            CreatelistAnimal();
        }
        void CreatelistAnimal()
        {
            List<Animal> dsAnimal = new List<Animal>();	
            
            dsAnimal.Add(new Animal { AnimalID = "khi", AnimalName = "Khỉ", AnimalImage = "KhiLogo.png", AnimalAge = "Tuổi TB: 10-50 năm" });
            dsAnimal.Add(new Animal { AnimalID = "ca", AnimalName = "Cá", AnimalImage = "CaLogo.png", AnimalAge = "Tuổi TB: 2-60 năm" });
            dsAnimal.Add(new Animal { AnimalID = "sanho", AnimalName = "San hô", AnimalImage = "SanHoLogo.png", AnimalAge = "Tuổi TB: 5-10 ngàn năm" });
            dsAnimal.Add(new Animal { AnimalID = "bo", AnimalName = "Bò", AnimalImage = "BoLogo.png", AnimalAge = "Tuổi TB: 15-20 năm" });
            dsAnimal.Add(new Animal { AnimalID = "cay", AnimalName = "Cầy", AnimalImage = "CayLogo.png", AnimalAge = "Tuổi TB: 5-15 năm" });
	    dsAnimal.Add(new Animal { AnimalID = "cho", AnimalName = "Chó", AnimalImage = "ChoLogo.png", AnimalAge = "Tuổi TB: 10-13 năm" });
            listAnimal.ItemsSource = dsAnimal;
        }

        private void listAnimal_ItemTapped(object sender, ItemTappedEventArgs e)
        {
            if (listAnimal.SelectedItem != null)
            {
                Animal animal = (Animal)listAnimal.SelectedItem;
                Navigation.PushAsync(new PageSpecies(animal));
            }
        }
    }
}