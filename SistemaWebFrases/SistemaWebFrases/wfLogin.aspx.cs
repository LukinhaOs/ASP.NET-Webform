using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SistemaWebFrases.Modelo;
using SistemaWebFrases.DATABASE;
using System.Configuration;
using System.Data.SqlClient;

namespace SistemaWebFrases
{
    public partial class wfLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            loginLabel.Visible = false;
            Session.Clear();
        }

        protected void loginButton_Click(object sender, EventArgs e)
        {
            string email = boxLoginEmail.Text;
            string senha = boxLoginSenha.Text;

            ConexaoUsuario data = new ConexaoUsuario();
            ModeloUsuario dados = data.GetEmail(email);
            if(email == dados.Email && senha == dados.Senha)
            {
                Session["id"] = dados.Id;
                Session["nome"] = dados.Nome;
                Session["email"] = dados.Email;

                Response.Redirect("~/wfDefault.aspx");
            }
            else if (boxLoginEmail.Text == "" && boxLoginSenha.Text == "")
            {
                loginLabel.Visible = true;
                loginLabel.Text = "Por favor, insira os dados antes de acessar sua conta.";
            }
            else
            {
                loginLabel.Visible = true;
                loginLabel.Text = "Usuário ou senha Inválidos. Por favor, tente novamente!";
            }
        }
    }
}