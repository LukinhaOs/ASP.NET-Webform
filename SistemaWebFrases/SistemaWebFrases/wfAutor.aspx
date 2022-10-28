<%@ Page Title="Autores" Language="C#" MasterPageFile="~/WebBakcend.Master" AutoEventWireup="true" CodeBehind="wfAutor.aspx.cs" Inherits="SistemaWebFrases.wfAutor" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3 style="color: white; padding: 20px">Cadastro dos Autores</h3>
    <div id="conteudoAutor">
        <div id="sectionAutor">
            <div id="itemAutor1">
                ID :
                <asp:TextBox ID="boxAutor1" Style="margin: 2px; margin-left: 28px; width: 250px" placeholder="O ID já possui um cadastrado" runat="server" Enabled="False"></asp:TextBox>
            </div>
            <div id="itemAutor2">
                Nome :
                <asp:TextBox ID="boxAutor2" Style="margin: 2px; width: 250px" placeholder="Informe o nome do Autor ou da Foto" runat="server"></asp:TextBox><br />
                <br />
            </div>
            <div id="itemAutorFoto">
                <asp:FileUpload ID="uploadAutor" CssClass="uploadAutor" Style="margin: 2px; width: 250px" runat="server" />
                <asp:Button ID="buttonCSalvar" CssClass="buttonCSalvar" runat="server" Text="Salvar Foto" OnClick="buttonCSalvar_Click" />
                <asp:Button ID="button1" CssClass="buttonCAlterar" runat="server" Text="Alterar nome da Foto" OnClick="buttonCAlterar_Click"/>
            </div>
            <div id="itemAutor3">
                <asp:Button ID="buttonCInserir" CssClass="buttonCInserir" runat="server" Text="Inserir" OnClick="buttonCInserir_Click" />
                <asp:Button ID="buttonCCancelar" CssClass="buttonCCancelar" Style="color: red;" runat="server" Text="Cancelar" OnClick="buttonCCancelar_Click" />
                <asp:Button ID="buttonCAlterar" CssClass="buttonCAlterar" runat="server" Text="Alterar" OnClick="buttonCAlterar_Click" Visible="false" />
            </div>
            <div id="itemAutor4" style="color: Highlight;">
                <div id="personalizarItem1">
                    <asp:Label ID="mensagemAutor1" CssClass="mensagemAutorPositiva" runat="server" Visible="False"></asp:Label><br />
                    <br />
                    <asp:Label ID="mensagemAutor2" CssClass="mensagemAutorNegativa" runat="server" Visible="False"></asp:Label>
                </div>
                <asp:GridView ID="gridAutor" CssClass="gridAutor" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" OnRowDeleting="gridAutor_RowDeleting" OnSelectedIndexChanged="gridAutor_SelectedIndexChanged">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" />
                        <asp:BoundField DataField="Id" HeaderText="ID" />
                        <asp:BoundField DataField="nomeAutor" HeaderText="Nome" />
                        <asp:ImageField DataImageUrlField="fotoAutor" DataImageUrlFormatString="~/Imagens/Autores/(0)" HeaderText="Fotos">
                            <ItemStyle Height="120px" Width="300px" />
                        </asp:ImageField>
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
