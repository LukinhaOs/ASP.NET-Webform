using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Post_e_Get
{
    public partial class wfDadosFilmes : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Response.Write("<h1>Recebimento de Filmes com o DropDown & VirtualPath</h1>");
            if (PreviousPage.Filmes != null)
            {
                List<String> Filmes = PreviousPage.Filmes;
                foreach(var item in Filmes)
                {
                    Response.Write("<h3> " + item + "</h3>");
                }
            }
        }
    }
}