using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Componentes_com_ASP.NET
{
    public partial class Tabuada : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                for (int i = 1; i <= 10; i++)
                {
                    listaitens.Items.Add(i.ToString());
                }
            } 

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            listbox.Items.Clear();
            ListItem dado = listaitens.SelectedItem;
            int num = Convert.ToInt32(dado.Value);

            for (int itens = 1; itens <= 10; itens++)
            {
                listbox.Items.Add($"{num.ToString()} x {itens.ToString()} = {num * itens}");
            }
        }
    }
}