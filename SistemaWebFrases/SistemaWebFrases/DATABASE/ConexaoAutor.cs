using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using SistemaWebFrases.Modelo;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;

namespace SistemaWebFrases.DATABASE
{
    public class ConexaoAutor
    {       public void Inserir(ModeloAutor objeto)
        {
            // Conexão com o SQL Local
     
            SqlConnection conexaoSQL = new SqlConnection(ConfigurationManager.ConnectionStrings["SistemaBackendConnectionString"].ConnectionString);
            SqlCommand comandoSQL = new SqlCommand();
            try
            {
                comandoSQL.Connection = conexaoSQL;
                comandoSQL.CommandText = "Insert into Autores (nomeAutor, fotoAutor) values (@nomeAutor, @fotoAutor); select @@IDENTITY;";
                comandoSQL.Parameters.AddWithValue("nomeAutor", objeto.Nome);
                comandoSQL.Parameters.AddWithValue("fotoAutor", objeto.Foto);
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

        public void Alterar(ModeloAutor objeto)
        {
            // Conexão com o SQL Local
            SqlConnection conexaoSQL = new SqlConnection(ConfigurationManager.ConnectionStrings["SistemaBackendConnectionString"].ConnectionString);
            SqlCommand comandoSQL = new SqlCommand();
            try
            {
                comandoSQL.Connection = conexaoSQL;
                comandoSQL.CommandText = "Update Autores set nomeAutor=@nomeAutor, fotoAutor=@fotoAutor where id = @id;";
                comandoSQL.Parameters.AddWithValue("nomeAutor", objeto.Nome);
                comandoSQL.Parameters.AddWithValue("fotoAutor", objeto.Foto);
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
                comandoSQL.CommandText = "Delete from Autores where id = " + cod.ToString();
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
            SqlDataAdapter adaptar = new SqlDataAdapter("Select * from Autores", conexaoSQL.ConnectionString);

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
            SqlDataAdapter adaptar = new SqlDataAdapter("Select * from Autores where nomeAutor like '%" + valor + "%'", conexaoSQL.ConnectionString);

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

        public ModeloAutor GetRegistro(int id)
        {
            ModeloAutor objeto = new ModeloAutor();
            SqlConnection conexaoSQL = new SqlConnection(ConfigurationManager.ConnectionStrings["SistemaBackendConnectionString"].ConnectionString);
            SqlCommand comandoSQL = new SqlCommand();
            comandoSQL.Connection = conexaoSQL;
            try
            {
                comandoSQL.CommandText = "Select * from Autores where id = @id";
                comandoSQL.Parameters.AddWithValue("@id", id);
                conexaoSQL.Open();
                SqlDataReader registro = comandoSQL.ExecuteReader();
                if (registro.HasRows)
                {
                    registro.Read();
                    objeto.Id = Convert.ToInt32(registro["Id"]);
                    objeto.Nome = Convert.ToString(registro["nomeAutor"]);
                    objeto.Foto = Convert.ToString(registro["fotoAutor"]);
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