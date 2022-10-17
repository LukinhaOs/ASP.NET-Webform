using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;

namespace WebPágina
{
    public partial class wfContatos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void buttonContatos_Click(object sender, EventArgs e)
        {
            try
            {
                if (TextContatoNome.Text != "" && TextContatoEmail.Text != "" && TextContatoCelular.Text != "")
                {
                    // Conexão com o SQL
                    SqlConnection conexaoContatos = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                    SqlCommand comandoContatos = new SqlCommand();

                    comandoContatos.Connection = conexaoContatos;
                    comandoContatos.CommandText = "Insert into DataContato (Nome, Email, Celular) values (@Nome, @Email, @Celular)";
                    comandoContatos.Parameters.AddWithValue("Nome", TextContatoNome.Text);
                    comandoContatos.Parameters.AddWithValue("Email", TextContatoEmail.Text);
                    comandoContatos.Parameters.AddWithValue("Celular", TextContatoCelular.Text);

                    conexaoContatos.Open();
                    comandoContatos.ExecuteNonQuery();
                    conexaoContatos.Close();

                    GridView1.DataBind();
                }
                else
                {
                    throw new Exception("Não deixe Campos em Branco. Existe campos que devem ser preenchidos!");
                }
            }
            catch(Exception erro)
            {
                contatoError.Text = erro.Message;
            }
        }
    }
}