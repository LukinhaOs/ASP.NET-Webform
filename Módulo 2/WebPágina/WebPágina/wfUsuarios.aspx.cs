using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebPágina
{
    public partial class wfUsuarios : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SqlDataSourceDadosUsuarios_Inserted(object sender, SqlDataSourceStatusEventArgs e)
        {
            if (e.Exception != null)
            {
                LMsg.Text = "Os dados informados já foram cadastrados, ou alguns campos não foram preenchidos. Por favor, verifique os dados recem digitados e tente novamente!";
                e.ExceptionHandled = true;
            }
            else
            {
                LMsg.Text = "Dados Enviados ao Banco de Dados com sucesso!";
            }
        }

        protected void SqlDataSourceDadosUsuarios_Updated(object sender, SqlDataSourceStatusEventArgs e)
        {
            if (e.Exception != null)
            {
                LMsg.Text = "Os dados informados já foram cadastrados, ou alguns campos não foram preenchidos. Por favor, verifique os dados recem digitados e tente novamente!";
                e.ExceptionHandled = true;
            }
            else
            {
                LMsg.Text = "Dados atualizados com sucesso!";
            }
        }
    }
}