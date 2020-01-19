using System;
using System.Web;
using System.Web.UI;

namespace VSCharts
{

    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs args)
        {
            if (!IsPostBack)
            {
                calendar1.SelectedDate = calendar1.TodaysDate;
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
    }
}
