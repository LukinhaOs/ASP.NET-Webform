using System;
using System.Collections.Generic;
using System.Linq;
using System.Data.SqlClient;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;

namespace DataBase__noção_
{
    public partial class wfDadosDataBase : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection conexao = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);

            SqlCommand comando = new SqlCommand();

            comando.Connection = conexao;
            comando.CommandText = "Insert into CostumerDados (Nome, Idade, Email, Nacionalidade, Ocupação) values (@Nome, @Idade, @Email, @Nacionalidade, @Ocupação)";
            comando.Parameters.AddWithValue("Nome", TextNome.Text);
            comando.Parameters.AddWithValue("Idade", TextIdade.Text);
            comando.Parameters.AddWithValue("Email", TextEmail.Text);
            comando.Parameters.AddWithValue("Nacionalidade", TextNac.Text);
            comando.Parameters.AddWithValue("Ocupação", TextOcupacao.Text);

            conexao.Open();
            comando.ExecuteNonQuery();
            conexao.Close();

            DataList1.DataBind();
        }
    }
}