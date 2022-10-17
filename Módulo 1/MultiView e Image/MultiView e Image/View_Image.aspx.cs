using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

// "Literal" Um código que interpreta outros códigos e os exibem na tela, sem a necessiade de criar um.
// Liberal: <strong> Esse texto aparecerá em Negrito no documento! </strong>


namespace MultiView_e_Image
{
    public partial class View_Imamge : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void imagebutton1_Click(object sender, ImageClickEventArgs e)
        {
            MultiView1.ActiveViewIndex = 1;  
        }

        protected void imagebutton2_Click(object sender, ImageClickEventArgs e)
        {
            MultiView1.ActiveViewIndex = 2;
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 0;
        }
    }
}