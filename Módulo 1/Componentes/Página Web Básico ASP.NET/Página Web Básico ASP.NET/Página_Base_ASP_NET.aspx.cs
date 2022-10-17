using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Página_Web_Básico_ASP.NET
{
    public partial class Página_Base_ASP_NET : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if(txtbox.Text == "")
            {
                message.Text = "Olá mundo :D";
            }
            else
            {
                message.Text = txtbox.Text;
            }
        }
    }
}