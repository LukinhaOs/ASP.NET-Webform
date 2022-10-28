using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SistemaWebFrases.DATABASE;
using SistemaWebFrases.Modelo;

namespace SistemaWebFrases
{
    public partial class wfUsuarios : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            AtualizarGrid();
            buttonCAlterar.Visible = false;
        }
        public void AtualizarGrid()
        {
            ConexaoUsuario data = new ConexaoUsuario();
            gridUsuarios.DataSource = data.Localizar();
            gridUsuarios.DataBind();
        }

        private void LimparCampos()
        {
            boxUsuario1.Text = "";
            boxUsuario2.Text = "";
            boxUsuario3.Text = "";
            boxUsuario4.Text = "";
            buttonCInserir.Text = "Inserir dados";
        }
        protected void buttonCInserir_Click(object sender, EventArgs e)
        {
            ConexaoUsuario data = new ConexaoUsuario();
            ModeloUsuario objeto = new ModeloUsuario();
            objeto.Nome = boxUsuario2.Text;
            objeto.Email = boxUsuario3.Text;
            objeto.Senha = boxUsuario4.Text;
            ModeloUsuario objetoValidaEmail = data.GetEmail(boxUsuario3.Text);

            try
            {
                if (buttonCInserir.Text == "Inserir dados")
                {
                    if (boxUsuario2.Text == "" || boxUsuario3.Text == "" || boxUsuario4.Text == "")
                    {
                        mensagemUsuario2.Visible = true;
                        mensagemUsuario2.Text = "Informe o nome do usuario, senha e email antes de Enviar!";
                    }
                    else if (objetoValidaEmail.Id == 0)
                    {
                        data.Inserir(objeto);
                        mensagemUsuario2.Visible = false;
                        mensagemUsuario1.Text = "Cadastro realizado!";
                        mensagemUsuario1.Visible = true;
                        this.LimparCampos();
                    }
                    else
                    {
                        mensagemUsuario1.Visible = false;
                        mensagemUsuario2.Visible = true;
                        mensagemUsuario2.Text = "E-mail informado já cadastrado";
                    }
                }
            }
            catch (Exception)
            {
                //
                mensagemUsuario2.Text = "Falha ao registrar os dados. Por favor, tente novamente mais tarde!";
                mensagemUsuario2.Visible = true;
                mensagemUsuario1.Visible = false;
            }
            AtualizarGrid();
        }

        protected void gridUsuarios_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            try
            {
                int index = Convert.ToInt32(e.RowIndex);
                int cod = Convert.ToInt32(gridUsuarios.Rows[index].Cells[1].Text);
                ConexaoUsuario data = new ConexaoUsuario();
                data.Excluir(cod);
                AtualizarGrid();
            }
            catch (Exception)
            {
                mensagemUsuario2.Visible = true;
                mensagemUsuario2.Text = "Ocorreu um erro. Por favor, tente novamente mais tarde!";
                mensagemUsuario1.Visible = false;
            }
            finally
            {
                mensagemUsuario2.Visible = false;
                mensagemUsuario1.Visible = true;
                mensagemUsuario1.Text = "A exclusão do item foi realizada!!";
            }
        }

        protected void gridUsuarios_SelectedIndexChanged(object sender, EventArgs e)
        {
            int index = gridUsuarios.SelectedIndex;
            int cod = Convert.ToInt32(gridUsuarios.Rows[index].Cells[1].Text);
            ConexaoUsuario data = new ConexaoUsuario();
            ModeloUsuario select = data.GetRegistro(cod);
            if (select.Id != 0)
            {
                boxUsuario1.Text = select.Id.ToString();
                boxUsuario2.Text = select.Nome;
                boxUsuario3.Text = select.Email;
                boxUsuario4.Text = select.Senha;
                buttonCAlterar.Visible = true;
            }
        }

        protected void buttonCAlterar_Click(object sender, EventArgs e)
        {
            ConexaoUsuario data = new ConexaoUsuario();
            ModeloUsuario objeto = new ModeloUsuario();
            objeto.Id = Convert.ToInt32(boxUsuario1.Text);
            objeto.Nome = boxUsuario2.Text;
            objeto.Email = boxUsuario3.Text;
            objeto.Senha = boxUsuario4.Text;
            ModeloUsuario objetoValidaEmail = data.GetEmail(boxUsuario3.Text);

            if ((objetoValidaEmail.Id != 0) && (objetoValidaEmail.Id != objeto.Id) && (buttonCAlterar.Text == "Alterar dados"))
            {
                mensagemUsuario1.Visible = false;
                mensagemUsuario2.Visible = true;
                mensagemUsuario2.Text = "O e-mail informado já foi cadastrado! Não é possível alterar.";
            }
            else
            {
                data.Alterar(objeto);
                mensagemUsuario2.Visible = false;
                mensagemUsuario1.Text = "Dados alterados com sucesso!!";
                mensagemUsuario1.Visible = true;
                this.LimparCampos();
            }
            AtualizarGrid();
        }

        protected void buttonCCancelar_Click(object sender, EventArgs e)
        {
            mensagemUsuario1.Visible = false;
            mensagemUsuario2.Visible = false;
            this.LimparCampos();
            AtualizarGrid();
        }
    }
}