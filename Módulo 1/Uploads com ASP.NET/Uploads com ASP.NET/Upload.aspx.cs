using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Uploads_com_ASP.NET
{
    public partial class Upload : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void enviar_Click(object sender, EventArgs e)
        {
            try { 
            String nome = fuArquivo.FileName; 
            String caminhoPasta = Server.MapPath(@"upload\");
            
            txtNome.Text = nome;

            txtTamanho.Text = fuArquivo.PostedFile.ContentLength.ToString() + " bytes";

            fuArquivo.PostedFile.SaveAs(caminhoPasta + nome);
            }
            catch
            {
                Console.WriteLine("O Arquivo não foi enviado. por favor, tente novamente!");
            }
        }

        protected void enviar2_Click(object sender, EventArgs e)
         {
            try
            {
                String nome = "";
                String caminhoPasta = Server.MapPath(@"upload\");
                for (int item = 0; item < fuArquivo.PostedFiles.Count; item++)
                {
                    nome = nome + fuArquivo.PostedFiles[item].FileName + " - ";
                    fuArquivo.PostedFiles[item].SaveAs(caminhoPasta + fuArquivo.PostedFiles[item].FileName);
                    txtTamanho.Text = fuArquivo.PostedFile.ContentLength.ToString() + " bytes";
                }
                txtNome.Text = nome;
            }
            catch
            {

            }
        }
    }
}