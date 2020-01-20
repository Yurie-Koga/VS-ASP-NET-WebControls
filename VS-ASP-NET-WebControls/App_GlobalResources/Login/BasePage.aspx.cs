using System;
using System.Web;
using System.Web.UI;

namespace VsAspNetWebControls
{

    public partial class BasePage : System.Web.UI.Page
    {
        protected bool IsLoggedIn
        {
            get
            {
                if (Session["Auth"] == null || !Session["Auth"].Equals("True"))
                {
                    return false;
                }
                return true;
            }
        }
    }
}
