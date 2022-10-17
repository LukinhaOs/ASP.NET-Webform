using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Componentes_com_ASP.NET
{
    public partial class Panell_e_BulleList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void list_Click(object sender, BulletedListEventArgs acao)
        {
            numPI.Visible = false;
            numFat.Visible = false;
            switch (acao.Index)
            {
                case 0:
                    numPI.Visible = true;
                    break;
                case 1:
                    numFat.Visible = true;
                    break;
            }
        }

        protected void button1_Click(object sender, EventArgs e)
        {
            int num = Convert.ToInt32(dadosusuario1.Text);
            string txt = "O número é Ímpar";

            if(num % 2 == 0)
            {
                txt = "O número é Par";
            }
            info1.Text = txt;
        }

        protected void button2_Click(object sender, EventArgs e)
        {
            int n1 = Convert.ToInt32(num1.Text);
            int n2 = Convert.ToInt32(num2.Text);
            int multi = n1 * n2;
            String txt = $"A multiplicação dos números {n1} x {n2} é igual a {multi}";
            info2.Text = txt;
        }
    }
}