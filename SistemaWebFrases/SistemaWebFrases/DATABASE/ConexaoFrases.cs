using SistemaWebFrases.Modelo;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace SistemaWebFrases.DATABASE
{
    public class ConexaoFrases
    {
        public void Inserir(ModeloFrase objeto)
        {
            // Conexão com o SQL Local
            SqlConnection conexaoSQL = new SqlConnection(ConfigurationManager.ConnectionStrings["SistemaBackendConnectionString"].ConnectionString);
            SqlCommand comandoSQL = new SqlCommand();
            try
            {
                comandoSQL.Connection = conexaoSQL;
                comandoSQL.CommandText = "Insert into Frases (frase, fraseAutor, fraseCategoria) values (@frase, @fraseAutor, @fraseCategoria);select @@IDENTITY;";
                comandoSQL.Parameters.AddWithValue("frase", objeto.Frase);
                comandoSQL.Parameters.AddWithValue("fraseAutor", objeto.Autor);
                comandoSQL.Parameters.AddWithValue("fraseCategoria", objeto.Categoria);
                conexaoSQL.Open();
                objeto.Id = Convert.ToInt32(comandoSQL.ExecuteScalar());
            }
            catch (Exception error)
            {
                throw new Exception(error.Message);
            }
            finally
            {
                conexaoSQL.Close();
            }

        }

        public void Alterar(ModeloFrase objeto)
        {
            // Conexão com o SQL Local
            SqlConnection conexaoSQL = new SqlConnection(ConfigurationManager.ConnectionStrings["SistemaBackendConnectionString"].ConnectionString);
            SqlCommand comandoSQL = new SqlCommand();
            try
            {
                comandoSQL.Connection = conexaoSQL;
                comandoSQL.CommandText = "Update Frases set frase=@frase, fraseAutor=@fraseAutor, fraseCategoria=@fraseCategoria where id = @id;";
                comandoSQL.Parameters.AddWithValue("frase", objeto.Frase);
                comandoSQL.Parameters.AddWithValue("fraseAutor", objeto.Autor);
                comandoSQL.Parameters.AddWithValue("fraseCategoria", objeto.Categoria);
                comandoSQL.Parameters.AddWithValue("id", objeto.Id);
                conexaoSQL.Open();
                comandoSQL.ExecuteNonQuery();
            }
            catch (Exception error)
            {
                throw new Exception(error.Message);
            }
            finally
            {
                conexaoSQL.Close();
            }
        }
        public void Excluir(int cod)
        {
            // Conexão com o SQL Local
            SqlConnection conexaoSQL = new SqlConnection(ConfigurationManager.ConnectionStrings["SistemaBackendConnectionString"].ConnectionString);
            SqlCommand comandoSQL = new SqlCommand();
            try
            {
                comandoSQL.Connection = conexaoSQL;
                comandoSQL.CommandText = "Delete from Frases where id = " + cod.ToString();
                conexaoSQL.Open();
                comandoSQL.ExecuteNonQuery();
            }
            catch (Exception error)
            {
                throw new Exception(error.Message);
            }
            finally
            {
                conexaoSQL.Close();
            }
        }

        public DataTable Localizar()
        {
            // Conexão com o SQL Local
            SqlConnection conexaoSQL = new SqlConnection(ConfigurationManager.ConnectionStrings["SistemaBackendConnectionString"].ConnectionString);
            SqlCommand comandoSQL = new SqlCommand();
            DataTable tabela = new DataTable();
            String tabelas = "select item.id, item.frase, item.fraseAutor, item.fraseCategoria, autorItem.nomeAutor as tabelanome, categoriaItem.categoria as tabelacategoria " +
                             "from Frases item " +
                             "inner join autores autorItem on item.fraseAutor = autorItem.id " +
                             "inner join categorias categoriaItem on item.fraseCategoria = categoriaItem.id";
            SqlDataAdapter adaptar = new SqlDataAdapter(tabelas, conexaoSQL.ConnectionString);

            try
            {
                adaptar.Fill(tabela);
                return tabela;
            }
            catch (Exception error)
            {
                throw new Exception(error.Message);
            }
        }

        public DataTable Localizar(String valor)
        {
            // Conexão com o SQL Local
            SqlConnection conexaoSQL = new SqlConnection(ConfigurationManager.ConnectionStrings["SistemaBackendConnectionString"].ConnectionString);
            SqlCommand comandoSQL = new SqlCommand();

            DataTable tabela = new DataTable();
            SqlDataAdapter adaptar = new SqlDataAdapter("Select * from Frases where frase like '%" + valor + "%'", conexaoSQL.ConnectionString);

            try
            {
                adaptar.Fill(tabela);
                return tabela;
            }
            catch (Exception error)
            {
                throw new Exception(error.Message);
            }
        }

        public ModeloFrase GetRegistro(int id)
        {
            ModeloFrase objeto = new ModeloFrase();
            SqlConnection conexaoSQL = new SqlConnection(ConfigurationManager.ConnectionStrings["SistemaBackendConnectionString"].ConnectionString);
            SqlCommand comandoSQL = new SqlCommand();
            comandoSQL.Connection = conexaoSQL;
            try
            {
                comandoSQL.CommandText = "Select * from Frases where id = @id";
                comandoSQL.Parameters.AddWithValue("@id", id);
                conexaoSQL.Open();
                SqlDataReader registro = comandoSQL.ExecuteReader();
                if (registro.HasRows)
                {
                    registro.Read();
                    objeto.Id = Convert.ToInt32(registro["Id"]);
                    objeto.Frase = Convert.ToString(registro["frase"]);
                    objeto.Autor = Convert.ToInt32(registro["fraseAutor"]);
                    objeto.Categoria = Convert.ToInt32(registro["fraseCategoria"]);
                }
            }
            catch (Exception error)
            {
                throw new Exception(error.Message);
            }
            return objeto;
        }
    }
}