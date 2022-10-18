using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Post_e_Get
{
    public partial class wfPaginaRecebe : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request["textSalario"] == null)
            {
                Response.Redirect("~/wfPaginaEnvio.aspx");
            }

            Response.Write("<h1> Objeto Resquest </h1>");
            Response.Write("<h3> Salario informado: R$" + Request.Form["textSalario"] + "</k3>");
            double sb = Convert.ToDouble(Request.Form["textSalario"]);
            double pd = 0;
            RadioButtonList confere = (RadioButtonList)Page.PreviousPage.FindControl("radioOptions");

            if(confere.SelectedIndex != 3)
            {
                switch (confere.SelectedIndex)
                {
                    case 0:
                        pd = 10;
                        Response.Write("<h3> Percentual de desconto informado: 10% </h3>");
                        break;
                    case 1:
                        pd = 25;
                        Response.Write("<h3> Percentual de desconto informado: 25% </h3>");
                        break;
                    case 2:
                        pd = 35;
                        Response.Write("<h3> Percentual de desconto informado: 35% </h3>");
                        break;
                }
            }
            else
            {
                pd = Convert.ToDouble(Request.Form["textPercentual"]);
                Response.Write("<h3> Percentual de desconto informado: " + Request.Form["textPercentual"] + "%</h3>");
            }

            double desconto = (sb * pd) / 100;
            double resultado = sb - desconto;

            Table table = new Table();
            //Salario Bruto

            TableRow linha = new TableRow();
            //texto

            TableCell coluna = new TableCell();
            coluna.Text = "Salário Bruto: R$";
            linha.Cells.Add(coluna);
            //Valor
            coluna = new TableCell();
            coluna.Text = sb.ToString();
            linha.Cells.Add(coluna);
            table.Rows.Add(linha);

            //Percentual de Desconto
            linha = new TableRow();
            //texto

            coluna = new TableCell();
            coluna.Text = "Percentual de Desconto: ";
            linha.Cells.Add(coluna);

            //valor
            coluna = new TableCell();
            coluna.Text = pd.ToString() + "%";
            linha.Cells.Add(coluna);
            table.Rows.Add(linha);

            //Resultado - Salário Líquido
            linha = new TableRow();
            //texto

            coluna = new TableCell();
            coluna.Text = "Salário Líquido: R$";
            linha.Cells.Add(coluna);

            coluna = new TableCell();
            coluna.Text = resultado.ToString();
            linha.Cells.Add(coluna);
            table.Rows.Add(linha);

            PlaceHolder1.Controls.Add(table);
        }
    }
}