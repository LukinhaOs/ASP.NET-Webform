using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using SistemaWebFrases.Modelo;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

namespace SistemaWebFrases.DATABASE
{
    public class ConexaoUsuario
    {
        public void Inserir(ModeloUsuario objeto)
        {
            // Conexão com o SQL Local
            SqlConnection conexaoSQL = new SqlConnection(ConfigurationManager.ConnectionStrings["SistemaBackendConnectionString"].ConnectionString);
            SqlCommand comandoSQL = new SqlCommand();
            try
            {
                comandoSQL.Connection = conexaoSQL;
                comandoSQL.CommandText = "Insert into Usuarios (nome, email, senha) values (@nome, @email, @senha);select @@IDENTITY;";
                comandoSQL.Parameters.AddWithValue("nome", objeto.Nome);
                comandoSQL.Parameters.AddWithValue("email", objeto.Email);
                comandoSQL.Parameters.AddWithValue("senha", objeto.Senha);
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

        public void Alterar(ModeloUsuario objeto)
        {
            // Conexão com o SQL Local
            SqlConnection conexaoSQL = new SqlConnection(ConfigurationManager.ConnectionStrings["SistemaBackendConnectionString"].ConnectionString);
            SqlCommand comandoSQL = new SqlCommand();
            try
            {
                comandoSQL.Connection = conexaoSQL;
                comandoSQL.CommandText = "Update Usuarios set nome=@nome, email=@email, senha=@senha where id = @id;";
                comandoSQL.Parameters.AddWithValue("nome", objeto.Nome);
                comandoSQL.Parameters.AddWithValue("email", objeto.Email);
                comandoSQL.Parameters.AddWithValue("senha", objeto.Senha);
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
                comandoSQL.CommandText = "Delete from Usuarios where id = " + cod.ToString();
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
            SqlDataAdapter adaptar = new SqlDataAdapter("Select * from Usuarios", conexaoSQL.ConnectionString);

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
            SqlDataAdapter adaptar = new SqlDataAdapter("Select * from Usuarios where nome like '%" + valor + "%'", conexaoSQL.ConnectionString);

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

        public ModeloUsuario GetRegistro(int id)
        {
            ModeloUsuario objeto = new ModeloUsuario();
            SqlConnection conexaoSQL = new SqlConnection(ConfigurationManager.ConnectionStrings["SistemaBackendConnectionString"].ConnectionString);
            SqlCommand comandoSQL = new SqlCommand();
            comandoSQL.Connection = conexaoSQL;
            try
            {
                comandoSQL.CommandText = "Select * from Usuarios where id = @id";
                comandoSQL.Parameters.AddWithValue("@id", id);
                conexaoSQL.Open();
                SqlDataReader registro = comandoSQL.ExecuteReader();
                if (registro.HasRows)
                {
                    registro.Read();
                    objeto.Id = Convert.ToInt32(registro["Id"]);
                    objeto.Nome = Convert.ToString(registro["nome"]);
                    objeto.Email = Convert.ToString(registro["email"]);
                    objeto.Senha = Convert.ToString(registro["senha"]);
                }
            }
            catch (Exception error)
            {
                throw new Exception(error.Message);
            }
            return objeto;
        }

        public ModeloUsuario GetEmail(String email)
        {
            ModeloUsuario objeto = new ModeloUsuario();
            SqlConnection conexaoSQL = new SqlConnection(ConfigurationManager.ConnectionStrings["SistemaBackendConnectionString"].ConnectionString);
            SqlCommand comandoSQL = new SqlCommand();
            comandoSQL.Connection = conexaoSQL;

            try
            {
                comandoSQL.CommandText = "Select * from Usuarios where email =@email";
                comandoSQL.Parameters.AddWithValue("@email", email);
                conexaoSQL.Open();
                SqlDataReader registro = comandoSQL.ExecuteReader();
                if (registro.HasRows)
                {
                    registro.Read();
                    objeto.Id = Convert.ToInt32(registro["Id"]);
                    objeto.Nome = Convert.ToString(registro["nome"]);
                    objeto.Email = Convert.ToString(registro["email"]);
                    objeto.Senha = Convert.ToString(registro["senha"]);
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