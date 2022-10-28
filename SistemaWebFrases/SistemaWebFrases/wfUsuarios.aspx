<%@ Page Title="Cadastro de usuários" Language="C#" MasterPageFile="~/WebBakcend.Master" AutoEventWireup="true" CodeBehind="wfUsuarios.aspx.cs" Inherits="SistemaWebFrases.wfUsuarios" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3 style="color: white; padding: 20px">Cadastro e Alteração de Usuários</h3>
    <div id="sectionCategoria">
        <div id="itemUsuario1">
            ID :
                <asp:TextBox ID="boxUsuario1" Style="margin: 2px; margin-left: 28px; width: 250px" placeholder="O ID já possui um cadastrado" runat="server" Enabled="False"></asp:TextBox>
        </div>
        <div id="itemUsuario2">
            Nome :
                <asp:TextBox ID="boxUsuario2" Style="margin: 2px; margin-left: 3px; width: 250px" placeholder="Informe o nome do usuário" runat="server"></asp:TextBox>
        </div>
        <div id="itemUsuario5">
            E-mail : 
                <asp:TextBox ID="boxUsuario3" Style="margin: 2px; margin-left: 0.5px; width: 250px" placeholder="Informe o seu e-mail" runat="server"></asp:TextBox>
        </div>
        <div id="itemUsuario6">
            Senha : 
                <asp:TextBox ID="boxUsuario4" Style="margin: 2px; margin-left: -1px; width: 250px" placeholder="Informe a senha" runat="server" TextMode="Password"></asp:TextBox>
        </div>
        <div id="itemUsuario3">
            <asp:Button ID="buttonCInserir" CssClass="buttonCInserir" runat="server" Text="Inserir dados" OnClick="buttonCInserir_Click" />
            <asp:Button ID="buttonCCancelar" CssClass="buttonCCancelar" Style="color: red;" runat="server" Text="Cancelar" OnClick="buttonCCancelar_Click" />
            <asp:Button ID="buttonCAlterar" CssClass="buttonCAlterar" runat="server" Text="Alterar dados" OnClick="buttonCAlterar_Click" />
        </div>
        <div id="itemUsuario4" style="color: Highlight;">
            <div id="personalizarItem1">
                <asp:Label ID="mensagemUsuario1" CssClass="mensagemCategoriaPositiva" runat="server" Visible="False"></asp:Label><br />
                <asp:Label ID="mensagemUsuario2" CssClass="mensagemUsuarioNegativa" runat="server" Visible="False"></asp:Label>
            </div>
            <asp:GridView ID="gridUsuarios" CssClass="gridCategoria" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" OnRowDeleting="gridUsuarios_RowDeleting" OnSelectedIndexChanged="gridUsuarios_SelectedIndexChanged">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                    <asp:BoundField DataField="Id" HeaderText="ID" />
                    <asp:BoundField DataField="nome" HeaderText="Nome" />
                    <asp:BoundField DataField="email" HeaderText="E-mail" />
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
</asp:Content>
