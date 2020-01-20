using System;
using System.Web;
using System.Web.UI;
using System.Drawing;

namespace VSCharts
{

    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs args)
        {
            if (!IsPostBack)
            {
                calendar1.SelectedDate = calendar1.TodaysDate;

                labelCheckbox1.Text = CalculateTotal(false).ToString("c");
            }
        }

        public void button1Clicked(object sender, EventArgs args)
        {
            button1.Text = "You clicked me";
        }

        public void button2Clicked(object sender, EventArgs args)
        {
            label1.Text = textbox1.Text;
        }

        public void calendar1SelectionChanged(object sender, EventArgs args)
        {
            labelCalendar1.Text = calendar1.SelectedDate.ToString("m");
        }

        public void Check_Clicked(object sender, EventArgs args)
        {
            labelCheckbox1.Text = CalculateTotal(checkbox1.Checked).ToString("c");
        }

        protected double CalculateTotal(bool Taxable)
        {
            double result = 1 + 2 + 3;
            if (Taxable)
            {
                result += result * 0.086;
            }
            return result;
        }

        public void buttonColorClicked(object sender, EventArgs args)
        {
            labelDDList1.BackColor = Color.FromName(dropDownList1.SelectedItem.Value);
        }
    }
}
