using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DropDownList_e_ListBox
{
    public partial class Itens_do_DropDown_e_Box : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void button1_Click(object sender, EventArgs e)
        {
            ListItem dados1 = new ListItem(textbox1.Text);
            itens.Items.Add(dados1);
            textbox1.Text = "";

        }

        protected void button2_Click(object sender, EventArgs e)
        {
            ListItem dados2 = new ListItem(textbox2.Text);
            itens2.Items.Add(dados2);
            textbox2.Text = "";
        }

        protected void button3_Click(object sender, EventArgs e)
        {
            foreach (ListItem info in itens.Items)
            {
                if (info.Selected)
                {
                    info.Selected = false;
                    itens3.Items.Add(info);

                }
            }

            foreach (ListItem info in itens2.Items)
            {
                if (info.Selected)
                {
                    info.Selected = false;
                    itens4.Items.Add(info);
                }
            }
        }
    }
}