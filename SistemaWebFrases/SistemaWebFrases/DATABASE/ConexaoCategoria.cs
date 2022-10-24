using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Configuration;
using System.Data.SqlClient;
using SistemaWebFrases.Modelo;
using System.Data;

namespace SistemaWebFrases.DATABASE
{
    public class ConexaoCategoria
    {
        public void Inserir(ModeloCategoria objeto)
        {
            // Conexão com o SQL Local
            SqlConnection conexaoSQL = new SqlConnection(ConfigurationManager.ConnectionStrings["SistemaBackendConnectionString"].ConnectionString);
            SqlCommand comandoSQL = new SqlCommand();
            try
            {
                comandoSQL.Connection = conexaoSQL;
                comandoSQL.CommandText = "Insert into Categorias (categoria) values (@categoria);select @@IDENTITY;";
                comandoSQL.Parameters.AddWithValue("categoria", objeto.Nome);
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

        public void Alterar(ModeloCategoria objeto)
        {
            // Conexão com o SQL Local
            SqlConnection conexaoSQL = new SqlConnection(ConfigurationManager.ConnectionStrings["SistemaBackendConnectionString"].ConnectionString);
            SqlCommand comandoSQL = new SqlCommand();
            try
            {
                comandoSQL.Connection = conexaoSQL;
                comandoSQL.CommandText = "Update Categorias set categoria=@categoria where id = @id;";
                comandoSQL.Parameters.AddWithValue("categoria", objeto.Nome);
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
                comandoSQL.CommandText = "Delete from Categorias where id = " + cod.ToString();
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
            SqlDataAdapter adaptar = new SqlDataAdapter("Select * from Categorias", conexaoSQL.ConnectionString);

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
            SqlDataAdapter adaptar = new SqlDataAdapter("Select * from Categorias where categoria like '%" + valor + "%'", conexaoSQL.ConnectionString);

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

        public ModeloCategoria GetRegistro(int id)
        {
            ModeloCategoria objeto = new ModeloCategoria();
            SqlConnection conexaoSQL = new SqlConnection(ConfigurationManager.ConnectionStrings["SistemaBackendConnectionString"].ConnectionString);
            SqlCommand comandoSQL = new SqlCommand();
            comandoSQL.Connection = conexaoSQL;
            try
            {
                comandoSQL.CommandText = "Select * from Categorias where id = @id";
                comandoSQL.Parameters.AddWithValue("@id", id);
                conexaoSQL.Open();
                SqlDataReader registro = comandoSQL.ExecuteReader();
                if (registro.HasRows)
                {
                    registro.Read();
                    objeto.Id = Convert.ToInt32(registro["Id"]);
                    objeto.Nome = Convert.ToString(registro["categoria"]);
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