using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SistemaWebFrases
{
    public partial class wfDefault : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["email"] != null)
            {
                homeNomeLabel.Text = Session["nome"].ToString();
                homeEmailLabel.Text = Session["email"].ToString();
            }
         
        }
    }
}