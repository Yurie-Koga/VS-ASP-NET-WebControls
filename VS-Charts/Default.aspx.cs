using System;
using System.Web;
using System.Web.UI;

namespace VSCharts
{

    public partial class Default : System.Web.UI.Page
    {
        public void button1Clicked(object sender, EventArgs args)
        {
            button1.Text = "You clicked me";
        }

        public void button2Clicked(object sender, EventArgs args)
        {
            label1.Text = textbox1.Text;
        }


    }
}
