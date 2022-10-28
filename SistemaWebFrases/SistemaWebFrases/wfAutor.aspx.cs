using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SistemaWebFrases.Modelo;
using SistemaWebFrases.DATABASE;
using System.IO;

namespace SistemaWebFrases
{
    public partial class wfAutor : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {

            AtualizarGrid();
            buttonCAlterar.Visible = false;
        }

        public void AtualizarGrid()
        {
            ConexaoAutor data = new ConexaoAutor();
            gridAutor.DataSource = data.Localizar();
            gridAutor.DataBind();
        }


        private void LimparCampos()
        {
            boxAutor1.Text = "";
            boxAutor2.Text = "";
            buttonCInserir.Text = "Inserir";
        }



        protected void gridAutor_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            try
            {
                int index = Convert.ToInt32(e.RowIndex);
                int cod = Convert.ToInt32(gridAutor.Rows[index].Cells[1].Text);
                ConexaoAutor data = new ConexaoAutor();
                data.Excluir(cod);
                AtualizarGrid();
            }
            catch (Exception error)
            {
                throw new Exception(error.Message);
            }
            finally
            {
                mensagemAutor1.Visible = true;
                mensagemAutor1.Text = "A exclusão do item foi realizada!!";
            }
        }

        protected void buttonCCancelar_Click(object sender, EventArgs e)
        {
            mensagemAutor1.Visible = false;
            mensagemAutor2.Visible = false;
            this.LimparCampos();
            AtualizarGrid();
        }

        protected void buttonCInserir_Click(object sender, EventArgs e)
        {
            ConexaoAutor data = new ConexaoAutor();
            ModeloAutor objeto = new ModeloAutor();
            objeto.Nome = boxAutor2.Text;
            if (boxAutor2.Text == "")
            {
                mensagemAutor2.Visible = true;
                mensagemAutor2.Text = "Informe o nome do Autor antes de salvar.";
            }
            else
            {
                mensagemAutor2.Visible = false;
                try
                {
                    if (buttonCInserir.Text == "Inserir")
                    {
                        data.Inserir(objeto);
                        mensagemAutor1.Text = "Registro do item bem sucedido!";
                        mensagemAutor1.Visible = true;
                        mensagemAutor2.Visible = false;
                    }
                    this.LimparCampos();
                }
                catch (Exception)
                {
                    //
                    mensagemAutor2.Text = "Falha ao registrar. Por favor, tente novamente mais tarde!";
                    mensagemAutor2.Visible = true;
                    mensagemAutor1.Visible = false;
                }
                AtualizarGrid();
            }

        }
        protected void buttonCAlterar_Click(object sender, EventArgs e)
        {
            String caminhoFoto = Server.MapPath(@"Imagens\Autores\");
            ConexaoAutor data = new ConexaoAutor();
            ModeloAutor objeto = new ModeloAutor();
            objeto.Nome = boxAutor2.Text;

            try
            {
                if(buttonCAlterar.Text == "Alterar")
                {
                    objeto.Id = Convert.ToInt32(boxAutor1.Text);
                    data.Alterar(objeto);
                    mensagemAutor1.Text = "Nome alterado com sucesso!!";
                    mensagemAutor1.Visible = true;
                    mensagemAutor2.Visible = false;
                    AtualizarGrid();
                    this.LimparCampos();
                }
                else
                {
                    // Alterar Foto
                    objeto.Id = Convert.ToInt32(mensagemAutor1.Text);
                    
                    // Confere arquivo existente e o deleta
                    ModeloAutor uploadFoto = data.GetRegistro(objeto.Id);
                    if (uploadFoto.Foto != "")
                    {
                        File.Delete(caminhoFoto + uploadFoto.Foto);
                    }
                    data.Alterar(objeto);
                    mensagemAutor1.Text = "Foto Alterada com sucesso!";
                }
                this.LimparCampos();
            }
            catch (Exception)
            {
                mensagemAutor1.Visible = false;
                mensagemAutor2.Text = "Ocorreu um erro inesperado. Por favor, tente novamente mais tarde!";
            }
            AtualizarGrid();
        }

        protected void buttonCSalvar_Click(object sender, EventArgs e)
        {
            String caminhoFoto = Server.MapPath(@"Imagens\Autores\");
            ConexaoAutor data = new ConexaoAutor();
            ModeloAutor objeto = new ModeloAutor();
            objeto.Nome = boxAutor2.Text;

            if (boxAutor2.Text == "" || uploadAutor.PostedFile.ContentLength == 0)
            {
                mensagemAutor2.Visible = true;
                mensagemAutor2.Text = "Ops! Ocorreu um erro. Parece que você não inseriu o nome da foto ou o arquivo no campo (Escolher arquivo).";
                mensagemAutor1.Visible = false;
                AtualizarGrid();
            }
            else
            {
                try
                {
                    mensagemAutor2.Visible = false;

                    // Faz upload de Fotos
                    if (uploadAutor.PostedFile.FileName != "")
                    {
                        objeto.Foto = DateTime.Now.Millisecond.ToString() + uploadAutor.PostedFile.FileName;
                        String img = caminhoFoto + objeto.Foto;
                        uploadAutor.PostedFile.SaveAs(img);
                    }

                    if (buttonCSalvar.Text == "Salvar Foto")
                    {
                        data.Inserir(objeto);
                        mensagemAutor1.Text = "A foto foi registrada!";
                        mensagemAutor1.Visible = true;
                    }
                    this.LimparCampos();
                }
                catch
                {
                    mensagemAutor2.Text = "Falha ao registrar a Foto. Por favor, tente novamente mais tarde!";
                    mensagemAutor2.Visible = true;
                    mensagemAutor1.Visible = false;
                }
                AtualizarGrid();
            }

        }
        protected void gridAutor_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
                int index = gridAutor.SelectedIndex;
                int cod = Convert.ToInt32(gridAutor.Rows[index].Cells[1].Text);
                ConexaoAutor data = new ConexaoAutor();
                ModeloAutor select = data.GetRegistro(cod);
                if (select.Id != 0)
                {
                    buttonCAlterar.Visible = true;
                    boxAutor1.Text = select.Id.ToString();
                    boxAutor2.Text = select.Nome;
                }
            }
            catch (Exception error)
            {
                throw new Exception(error.Message);
            }
        }
    }
}