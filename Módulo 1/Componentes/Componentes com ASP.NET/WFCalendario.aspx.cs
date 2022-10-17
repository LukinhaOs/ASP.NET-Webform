using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Componentes_com_ASP.NET
{
    public partial class WFCalendario : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            calendar2.SelectedDate = DateTime.Now;
        }

        protected void button_Click(object sender, EventArgs e)
        {
            int dia = 0, mes = 0, ano = 0;
            int diaa = 0, mesa = 0, anoa = 0;

            dia = calendar1.SelectedDate.Day;
            mes = calendar1.SelectedDate.Month*30;
            ano = calendar1.SelectedDate.Year*365;

            diaa = calendar2.SelectedDate.Day;
            mesa = calendar2.SelectedDate.Month*30;
            anoa = calendar2.SelectedDate.Year*365;

            int total = (diaa + mesa + anoa) - (dia + mes + ano);
            label.Text = "Dias de vida: " + total.ToString();
        }
    }
}