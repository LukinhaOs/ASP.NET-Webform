<%@ Page Title="Categorias" Language="C#" MasterPageFile="~/WebBakcend.Master" AutoEventWireup="true" CodeBehind="wfCategoria.aspx.cs" Inherits="SistemaWebFrases.wfCategoria" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3 style="color: white; padding: 20px">Cadastro e Alteração de Categorias</h3>
    <div id="conteudoCategoria">
        <div id="sectionCategoria">
            <div id="itemCategoria1">
                ID :
                <asp:TextBox ID="boxCategoria1" Style="margin: 2px; margin-left: 28px; width: 250px" placeholder="O ID já possui um cadastrado" runat="server" Enabled="False"></asp:TextBox>
            </div>
            <div id="itemCategoria2">
                Nome :
                <asp:TextBox ID="boxCategoria2" Style="margin: 2px; width: 250px" placeholder="Informe o nome da Categoria" runat="server"></asp:TextBox>
            </div>
            <div id="itemCategoria3">
                <asp:Button ID="buttonCInserir" CssClass="buttonCInserir" runat="server" Text="Inserir" OnClick="buttonCInserir_Click" />
                <asp:Button ID="buttonCCancelar" CssClass="buttonCCancelar" style="color: red;" runat="server" Text="Cancelar" OnClick="buttonCCancelar_Click" />
                <asp:Button ID="buttonCAlterar" CssClass="buttonCAlterar" runat="server" Text="Alterar" OnClick="buttonCAlterar_Click" Visible="False"/>
            </div>
            <div id="itemCategoria4" style="color: Highlight;">
                <div id="personalizarItem1">
                    <asp:Label ID="mensagemCategoria1" CssClass="mensagemCategoriaPositiva" runat="server" Visible="False"></asp:Label><br />
                    <asp:Label ID="mensagemCategoria2" CssClass="mensagemCategoriaNegativa" runat="server" Visible="False"></asp:Label>
                </div>
                <asp:GridView ID="gridCategoria" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" OnRowDeleting="gridCategoria_RowDeleting" OnSelectedIndexChanged="gridCategoria_SelectedIndexChanged">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" />
                        <asp:BoundField DataField="Id" HeaderText="ID" />
                        <asp:BoundField DataField="Categoria" HeaderText="Nome" />
                        <asp:CommandField ShowDeleteButton="True" />
                    </Columns>
                    <EditRowStyle BackColor="#2461BF" />
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EFF3FB" />
                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F5F7FB" />
                    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                    <SortedDescendingCellStyle BackColor="#E9EBEF" />
                    <SortedDescendingHeaderStyle BackColor="#4870BE" />
                </asp:GridView>
            </div>
        </div>
    </div>
</asp:Content>
