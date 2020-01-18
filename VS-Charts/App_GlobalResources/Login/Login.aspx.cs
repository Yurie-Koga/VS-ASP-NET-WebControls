using System;
using System.Web;
using System.Web.UI;

namespace VSCharts
{

    public partial class Login : BasePage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                return;
            }
            updateStatusLabel();
        }

        protected void loginButtonClick(object sender, EventArgs e)
        {
            Session["Auth"] = "True";
            updateStatusLabel();
        }

        protected void logoutButtonClick(object sender, EventArgs e)
        {
            Session["Auth"] = null;
            updateStatusLabel();
        }

        protected void updateStatusLabel()
        {
            statusLabel.Text = IsLoggedIn ? "Logged in" : "Logged out";
            messageLabel.Text = IsLoggedIn ? "You can visit Page1." : "Please log in.";
        }
    }
}
