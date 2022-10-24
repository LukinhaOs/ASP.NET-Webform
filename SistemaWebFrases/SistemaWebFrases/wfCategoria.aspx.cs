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
    public partial class wfCategoria : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            AtualizarGrid();
            buttonCAlterar.Visible = false;
        }

        public void AtualizarGrid()
        {
            ConexaoCategoria data = new ConexaoCategoria();
            gridCategoria.DataSource = data.Localizar();
            gridCategoria.DataBind();
        }

        private void LimparCampos()
        {
            boxCategoria1.Text = "";
            boxCategoria2.Text = "";
            buttonCInserir.Text = "Inserir";
        }

        protected void buttonCInserir_Click(object sender, EventArgs e)
        {
            ConexaoCategoria data = new ConexaoCategoria();
            ModeloCategoria objeto = new ModeloCategoria();
            objeto.Nome = boxCategoria2.Text;
            try
            {
                if (buttonCInserir.Text == "Inserir")
                {
                    data.Inserir(objeto);
                    mensagemCategoria1.Text = "Registro do item bem sucedido!";
                    mensagemCategoria1.Visible = true;
                }
                this.LimparCampos();
            }
            catch (Exception)
            {
                //
                mensagemCategoria2.Text = "Falha ao registrar. Por favor, tente novamente mais tarde!";
                mensagemCategoria2.Visible = true;
            }
            AtualizarGrid();

        }

        protected void buttonCAlterar_Click(object sender, EventArgs e)
        {
            ConexaoCategoria data = new ConexaoCategoria();
            ModeloCategoria objeto = new ModeloCategoria();
            objeto.Nome = boxCategoria2.Text;

            objeto.Id = Convert.ToInt32(boxCategoria1.Text);
            data.Alterar(objeto);
            mensagemCategoria1.Text = "Registro Alterado com sucesso!!";
            mensagemCategoria1.Visible = true;
            AtualizarGrid();

            this.LimparCampos();
        }

        protected void buttonCCancelar_Click(object sender, EventArgs e)
        {
            this.LimparCampos();
            AtualizarGrid();
        }

        protected void gridCategoria_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            AtualizarGrid();
            int index = Convert.ToInt32(e.RowIndex);
            int cod = Convert.ToInt32(gridCategoria.Rows[index].Cells[1].Text);
            ConexaoCategoria data = new ConexaoCategoria();
            data.Excluir(cod);
        }

        protected void gridCategoria_SelectedIndexChanged(object sender, EventArgs e)
        {
            int index = gridCategoria.SelectedIndex;
            int cod = Convert.ToInt32(gridCategoria.Rows[index].Cells[1].Text);
            ConexaoCategoria data = new ConexaoCategoria();
            ModeloCategoria select = data.GetRegistro(cod);
            if (select.Id != 0)
            {
                boxCategoria1.Text = select.Id.ToString();
                boxCategoria2.Text = select.Nome;
                buttonCAlterar.Visible = true;
            }
        }
    }
}