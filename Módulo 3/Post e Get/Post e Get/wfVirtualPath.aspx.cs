using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Post_e_Get
{
    public partial class wfVirtualPath : System.Web.UI.Page
    {

        public List<String> Filmes { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void buttonAdc_Click(object sender, EventArgs e)
        {
            listaFilme.Items.Add(new ListItem(textFilme.Text, textFilme.Text));
        }

        protected void buttonEnviar_Click(object sender, EventArgs e)
        {
            Filmes = new List<string>();
            foreach(ListItem item in listaFilme.Items)
            {
                Filmes.Add(item.Text);
                // Response.Redirect("~/wfDadosFilmes.aspx"); Tenta acesar a página, e não envia Dados!
            }
        }
    }
}