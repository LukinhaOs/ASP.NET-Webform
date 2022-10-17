using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Componentes_com_ASP.NET
{
    public partial class Tabuada2_0 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void button_Click(object sender, EventArgs e)
        {
            if (dados.Text == "" || dados1.Text == "")
            {
                resultado.Items.Add("Ops! Parece que você não digitou um número ainda...");
            }

            int num1, num2;
            num1 = Convert.ToInt32(dados.Text);
            num2 = Convert.ToInt32(dados1.Text);

            if (dados.Text == "0" || dados1.Text == "0") {
                resultado.Items.Add("Um número multiplicado por 0 é 0!");
            }
            else {
                resultado.Items.Clear();
                for (int itens = 1; itens <= num2; itens++)
                {
                    resultado.Items.Add($"{num1} x {itens} = {num1 * itens}");
                }
            }
            resultado.Items.Add("");
            resultado.Items.Add("A tabuada acabou :)");
        }
    }
}