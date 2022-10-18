using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Cookies
{
    public partial class wfInicioCookies : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (IsPostBack == true)
            {
                respLogin.Text = "";
                if (Request.Cookies["login"] != null)
                {
                    respLogin.Text = Request.Cookies["login"].Value;
                }
            }

            if (Session["login"] == null)
            {
                Response.Redirect("~/wfLoginCookies.aspx");
            }
            else
            {
                respLogin.Text = Session["login"].ToString();
                if (Session["lContSession"] == null) Session["lContSession"] = 0;
                textSession.Text = Session.SessionID.ToString();
                textContSession.Text = Session["lContSession"].ToString();
                if (Application["labelApplication"] == null) Application["labelApplication"] = 0;
                textApplication.Text = Application["labelApplication"].ToString();
            }

            if (Application["labelApplication"] == null) Application["labelApplication"] = 0;
            else textApplication.Text = Application["labelApplication"].ToString();
        }

        protected void buttonCListar_Click(object sender, EventArgs e)
        {
            var dados = Request.Cookies.AllKeys;
            String texto = "<p>";
            String pos = "";
            for (int item = 0; item < Request.Cookies.Count; item++)
            {
                pos = dados[item];
                texto += pos + ":" + Request.Cookies[pos].Value + " ";
            }
            texto += "</p>";
            Response.Write(texto);
        }

        protected void buttonCApagar_Click(object sender, EventArgs e)
        {
            if (Request.Cookies["login"] != null)
            {
                Request.Cookies.Remove("login");
                int cookie = Request.Cookies.Count;
            }
        }

        protected void buttonAdicionarSession_Click(object sender, EventArgs e)
        {
            Session["lContSession"] = Convert.ToInt32(Session["lContSession"]) + 1;
        }

        protected void buttonRemoverSession_Click(object sender, EventArgs e)
        {
            Session.Remove("lContSession");
            
        }

        protected void buttonApplication_Click(object sender, EventArgs e)
        {
            Application.Lock();
            Application["labelApplication"] = Convert.ToInt32(Application["labelApplication"]) + 1;
            Application.UnLock();
        }

        protected void buttonRemoveApplication_Click(object sender, EventArgs e)
        {
            Application.Remove("labelApplication");
        }
    }
}