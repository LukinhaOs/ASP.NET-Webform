using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Cookies
{
    public partial class wfLoginCookies : System.Web.UI.Page
    {
        public List<String> Usuarios;
        String Senha = "Cookies.2022";
        protected void Page_Load(object sender, EventArgs e)
        {
            Usuarios = new List<string>();
            Usuarios.Add("Lucas");
            Usuarios.Add("TestCSharp");
            Usuarios.Add("Cookies");

            if (Request.Cookies["login"] != null)
            {
                textLogin.Text = Request.Cookies["login"].Value;
                textSenha.Text = Request.Cookies["Senha"].Value;
                // buttonLogin_Click(sender, e);
            }
        }

        protected void buttonLogin_Click(object sender, EventArgs e)
        {
            Boolean dado = false;
            foreach (var item in Usuarios)
            {
                if (item == textLogin.Text && Senha == textSenha.Text)
                {
                    // Cria Cookies
                    HttpCookie login = new HttpCookie("login", textLogin.Text);
                    Response.Cookies.Add(login);
                    HttpCookie senha = new HttpCookie("senha", textSenha.Text);
                    Response.Cookies.Add(senha);
                    // Cria Sessions
                    Session["login"] = textLogin.Text;
                    Response.Redirect("~/wfInicioCookies.aspx");
                }
            }
        }
    }
}