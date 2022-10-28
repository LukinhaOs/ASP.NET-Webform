using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SistemaWebFrases.Modelo;
using SistemaWebFrases.DATABASE;

namespace SistemaWebFrases
{
    public partial class wfFrases : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            AtualizarGrid();
            if (!IsPostBack)
            {
                AtualizarAutor();
                AtualizarCategoria();
            }
            buttonCAlterar.Visible = false;

        }

        public void AtualizarGrid()
        {
            ConexaoFrases data = new ConexaoFrases();
            gridFrases.DataSource = data.Localizar();
            gridFrases.DataBind();
        }

        public void AtualizarAutor()
        {
            ConexaoAutor data = new ConexaoAutor();
            listFraseAutor.DataSource = data.Localizar();
            listFraseAutor.DataTextField = "nomeAutor";
            listFraseAutor.DataValueField = "id";
            listFraseAutor.DataBind();
        }

        public void AtualizarCategoria()
        {
            ConexaoCategoria data = new ConexaoCategoria();
            listFraseCategoria.DataSource = data.Localizar();
            listFraseCategoria.DataTextField = "categoria";
            listFraseCategoria.DataValueField = "id";
            listFraseCategoria.DataBind();
        }

        private void LimparCampos()
        {
            boxFrase1.Text = "";
            boxFrase2.Text = "";
            buttonCInserir.Text = "Inserir Frase";
        }

        protected void buttonCInserir_Click(object sender, EventArgs e)
        {
            ConexaoFrases data = new ConexaoFrases();
            ModeloFrase objeto = new ModeloFrase();
            objeto.Frase = boxFrase2.Text;
            objeto.Autor = Convert.ToInt32(listFraseAutor.SelectedValue);
            objeto.Categoria = Convert.ToInt32(listFraseCategoria.SelectedValue);
            
            if (boxFrase2.Text == "")
            {
                mensagemFrase2.Visible = true;
                mensagemFrase2.Text = "Informe uma frase antes de Enviar!";
                mensagemFrase1.Visible = false;
            }
            else
            {
                mensagemFrase2.Visible = false;
                try
                {
                    if (buttonCInserir.Text == "Inserir Frase")
                    {
                        data.Inserir(objeto);
                        mensagemFrase1.Text = "Registro da frase bem sucedido!";
                        mensagemFrase1.Visible = true;
                        mensagemFrase2.Visible = false;
                    }
                    this.LimparCampos();
                }
                catch (Exception)
                {
                    //
                    mensagemFrase2.Text = "Falha ao registrar os dados. Por favor, tente novamente mais tarde!";
                    mensagemFrase2.Visible = true;
                    mensagemFrase1.Visible = false;
                }
                AtualizarGrid();
            }
        }

        protected void buttonCAlterar_Click(object sender, EventArgs e)
        {
            ConexaoFrases data = new ConexaoFrases();
            ModeloFrase objeto = new ModeloFrase();
            objeto.Frase = boxFrase2.Text;
            objeto.Autor = Convert.ToInt32(listFraseAutor.SelectedValue);
            objeto.Categoria = Convert.ToInt32(listFraseCategoria.SelectedValue);
            

            objeto.Id = Convert.ToInt32(boxFrase1.Text);
            data.Alterar(objeto);
            mensagemFrase1.Text = "Dados alterados com sucesso!";
            mensagemFrase1.Visible = true;
            mensagemFrase2.Visible = false;
            AtualizarGrid();

            this.LimparCampos();
        }

        protected void buttonCCancelar_Click(object sender, EventArgs e)
        {
            mensagemFrase1.Visible = false;
            mensagemFrase2.Visible = false;
            this.LimparCampos();
            AtualizarGrid();
        }
        protected void gridFrases_SelectedIndexChanged(object sender, EventArgs e)
        {
            int index = gridFrases.SelectedIndex;
            int cod = Convert.ToInt32(gridFrases.Rows[index].Cells[1].Text);
            ConexaoFrases data = new ConexaoFrases();
            ModeloFrase select = data.GetRegistro(cod);
            if (select.Id != 0)
            {
                boxFrase1.Text = select.Id.ToString();
                boxFrase2.Text = select.Frase;
                listFraseAutor.SelectedValue = select.Autor.ToString();
                listFraseCategoria.SelectedValue = select.Categoria.ToString();
                buttonCAlterar.Visible = true;
            }
        }

        protected void gridFrases_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            try
            {
                int index = Convert.ToInt32(e.RowIndex);
                int cod = Convert.ToInt32(gridFrases.Rows[index].Cells[1].Text);
                ConexaoFrases data = new ConexaoFrases();
                data.Excluir(cod);
                AtualizarGrid();
            }
            catch (Exception)
            {
                mensagemFrase1.Visible = true;
                mensagemFrase1.Text = "Ocorreu um erro. Por favor, tente novamente mais tarde!";
            }
            finally
            {
                mensagemFrase1.Visible = true;
                mensagemFrase1.Text = "A exclusão do item foi realizada!!";
                mensagemFrase2.Visible = false;
            }
        }
    }
}