using System;
using System.Web;
using System.Web.UI;

namespace VSCharts
{

    public partial class SecurePage : BasePage
    {
        protected override void OnPreInit(EventArgs e)
        {
            base.OnPreInit(e);
            if (!IsLoggedIn)
            {
                Response.Redirect("Default.aspx");
            }
        }
    }
}
