using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Post_e_Get
{
    public partial class wfPaginaEnvio : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void radioOptions_SelectedIndexChanged(object sender, EventArgs e)
        {
            textPercentual.Visible = false;
            if(radioOptions.SelectedIndex == 3)
            {
                textPercentual.Visible = true;
            }
        }
    }
}