using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Componentes_com_ASP.NET
{
    public partial class ComponentesWeb : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void button_Click(object sender, EventArgs e)
        {
            ListItem itens = new ListItem(info1.Text, listdetalhes.Items.Count.ToString());
            listdetalhes.Items.Add(itens);
            info1.Text = "";

            //listdetalhes.Items.Add(info1.Text);

            itens = new ListItem(info1.Text);
            dadosinfo.Items.Add(itens);
            info2.Text = "";
        }

        protected void button2_Click(object sender, EventArgs e)
        {
            ListItem itens = listdetalhes.SelectedItem;
            info1.Text = itens.Text;
            itens = dadosinfo.SelectedItem;
            info2.Text = itens.Text;
        }
    }
}