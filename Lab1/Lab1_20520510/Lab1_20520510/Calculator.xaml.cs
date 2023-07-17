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
    public partial class Calculator : ContentPage
    {
        public Calculator()
        {
            InitializeComponent();
            NavigationPage.SetHasNavigationBar(this, true);
            Title = "Calculator";
        }
        decimal firstNumber = 0;
        string operatorName;
        bool isOperatorClicked;
        // Nhap 1 so tu 1 - 9
        private void BtnCommon_Clicked(object sender, EventArgs e)
        {
            var button = sender as Button;
            if (lbltext.Text == "0" || isOperatorClicked)
            {
                isOperatorClicked = false;
                lbltext.Text = button.Text;
            }
            else
            {
                lbltext.Text += button.Text;
            }
        }
        // nut AC: reset may tinh
        private void BtnAC_Clicked(object sender, EventArgs e)
        {
            lbltext.Text = "0";
            isOperatorClicked = false;
            operatorName = " ";
            firstNumber = 0;
        }
        // nut DEL: xoa 1 ki tu
        private void BtnDEL_Clicked(object sender, EventArgs e)
        {
            string number = lbltext.Text;
            if (number != "0")
            {
                number = number.Remove(number.Length - 1, 1);
                if (string.IsNullOrEmpty(number))
                {
                    lbltext.Text = "0";
                }
                else
                {
                    lbltext.Text = number;
                }
            }
        }
        // cac phep tinh + - * / ^
        private void BtnOperator_Clicked(object sender, EventArgs e)
        {
            var button = sender as Button;
            isOperatorClicked = true;
            operatorName = button.Text;
            firstNumber = Convert.ToDecimal(lbltext.Text);
        }
        // nut = de xuat ket qua
        private void BtnEqual_Clicked(object sender, EventArgs e)
        {
            decimal secondNumber = Convert.ToDecimal(lbltext.Text);
            decimal result = secondNumber;
            if (operatorName == "+")
            {
                result = firstNumber + secondNumber;
            }
            else if (operatorName == "-")
            {
                result = firstNumber - secondNumber;
            }
            else if (operatorName == "*")
            {
                result = firstNumber * secondNumber;
            }
            else if (operatorName == "/")
            {
                result = firstNumber / secondNumber;
            }
            else if (operatorName == "POW")
            {
                double x = Convert.ToDouble(firstNumber);
                double y = Convert.ToDouble(secondNumber);
                result = Convert.ToDecimal(Math.Pow(x, y));
            }
            lbltext.Text = result.ToString("0.##");
        }
        // Nut %: nhap 1 so -> % -> ket qua in ra man hinh: (so vua nhap)/100
        private void BtnPercent_Clicked(object sender, EventArgs e)
        {
            string number = lbltext.Text;
            if (number != "0")
            {
                decimal percentValue = Convert.ToDecimal(number);
                lbltext.Text = (percentValue / 100).ToString("0.##");
            }
        }
        // Nut sin: nhap 1 so -> sin -> ket qua in ra man hinh: sin(so vua nhap) tinh theo radian
        private void BtnSin_Clicked(object sender, EventArgs e)
        {
            string number = lbltext.Text;
            double sinValue = Convert.ToDouble(number);
            lbltext.Text = Math.Sin(sinValue).ToString("0.##");
        }
        // Nut cos: nhap 1 so -> cos -> ket qua in ra man hinh: cos(so vua nhap) tinh theo radian
        private void BtnCos_Clicked(object sender, EventArgs e)
        {
            string number = lbltext.Text;
            double cosValue = Convert.ToDouble(number);
            lbltext.Text = Math.Cos(cosValue).ToString("0.##");
        }
        // Nut tan: nhap 1 so -> tan -> ket qua in ra man hinh: tan(so vua nhap) tinh theo radian
        private void BtnTan_Clicked(object sender, EventArgs e)
        {
            string number = lbltext.Text;
            double tanValue = Convert.ToDouble(number);
            lbltext.Text = Math.Tan(tanValue).ToString("0.##");
        }
        // Nut sqr: nhap 1 so -> sqr -> ket qua in ra man hinh: binh phuong cua so vua nhap
        private void BtnSqr_Clicked(object sender, EventArgs e)
        {
            string number = lbltext.Text;
            double sqrValue = Convert.ToDouble(number);
            lbltext.Text = Math.Pow(sqrValue, 2).ToString("0.##");
        }
        // Nut sqrt: nhap 1 so -> sqrt -> ket qua in ra man hinh: can bac hai cua so vua nhap
        private void BtnSqrt_Clicked(object sender, EventArgs e)
        {
            string number = lbltext.Text;
            double sqrtValue = Convert.ToDouble(number);
            lbltext.Text = Math.Sqrt(sqrtValue).ToString("0.##");
        }
        // Nut fac: nhap 1 so -> fac -> ket qua in ra man hinh: tinh giai thua cua so vua nhap
        private void BtnFactorial_Clicked(object sender, EventArgs e)
        {
            string number = lbltext.Text;
            double facValue = Convert.ToDouble(number);
            if (facValue == 0)
            {
                lbltext.Text = "1";
            }
            else
            {
                int f = 1;
                for (int i = 1; i <= facValue; i++)
                    f = f * i;
                lbltext.Text = f.ToString("0.##");
            }
        }
    }
}