using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebPágina
{
    public partial class wfPaginaMestre : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Request.Cookies["cookieLogin"] == null)
            {
                Response.Redirect("~/wfLogin.aspx");
            }
        }
    }
}