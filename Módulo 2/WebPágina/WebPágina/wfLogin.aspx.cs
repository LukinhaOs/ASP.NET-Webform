using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;

namespace WebPágina
{
    public partial class wfLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void buttonLogin_Click(object sender, EventArgs e)
        {
            String email = boxLogin.Text;
            String senha = boxSenha.Text;

            // Conexão ao Banco de Dados
            SqlConnection conexaoLogin = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            SqlCommand commandLogin = new SqlCommand();

            commandLogin.Connection = conexaoLogin;
            commandLogin.CommandText = "select * from DataUsuario where Email = @Email and Senha = @Senha";
            commandLogin.Parameters.AddWithValue("Email", email);
            commandLogin.Parameters.AddWithValue("Senha", senha);
            conexaoLogin.Open();
            SqlDataReader registro = commandLogin.ExecuteReader();
            if (registro.HasRows)
            {
                // Permite ou não a realização de login com Cookie
                HttpCookie cookieLogin = new HttpCookie("cookieLogin", boxLogin.Text);
                Response.Cookies.Add(cookieLogin);

                // Efetuar o Login do Usuário
                Response.Redirect("~/wfIndexInicio.aspx");
            }
            else
            {
                labelMensagem.Text = "E-mail ou Senha Inválidos. Por favor, verifique os dados informados e tente novamente!";
            }
        }
    }
}