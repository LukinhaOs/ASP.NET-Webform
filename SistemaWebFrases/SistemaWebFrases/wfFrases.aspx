<%@ Page Title="Frases de Autores" Language="C#" MasterPageFile="~/WebBakcend.Master" AutoEventWireup="true" CodeBehind="wfFrases.aspx.cs" Inherits="SistemaWebFrases.wfFrases" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3 style="color: white; padding: 20px">Frases Famosas</h3>
    <div id="conteudoCategoria">
        <div id="sectionCategoria">
            <div id="itemFrases1">
                ID :
                <asp:TextBox ID="boxFrase1" Style="margin: 2px; margin-left: 50px; width: 250px" placeholder="O ID já possui um cadastrado" runat="server" Enabled="False"></asp:TextBox>
            </div>
            <div id="itemFrases2">
                Frase :
                <asp:TextBox ID="boxFrase2" Style="margin: 2px; width: 500px; margin-left: 27px;" placeholder="Informe a frase" runat="server"></asp:TextBox>
            </div>
            <div id="itemFrases4">
                Autor : <asp:DropDownList ID="listFraseAutor" style="margin-left: 30px;" CssClass="listFraseAutor" runat="server"></asp:DropDownList>
            </div>
            <div id="itemFrases5" style="margin-bottom: 20px;">
                Categoria : <asp:DropDownList ID="listFraseCategoria" CssClass="listFraseCategoria" runat="server"></asp:DropDownList>
            </div>
            <div id="itemFrases3">
                <asp:Button ID="buttonCInserir" CssClass="buttonCInserir" runat="server" Text="Inserir Frase" OnClick="buttonCInserir_Click"/>
                <asp:Button ID="buttonCCancelar" CssClass="buttonCCancelar" style="color: red;" runat="server" Text="Cancelar" OnClick="buttonCCancelar_Click"/>
                <asp:Button ID="buttonCAlterar" CssClass="buttonCAlterar" runat="server" Text="Alterar Frase" OnClick="buttonCAlterar_Click"/>
            </div>
            <div id="itemFrases6" style="color: Highlight;">
                <div id="mensagemFrases">
                    <asp:Label ID="mensagemFrase1" CssClass="mensagemCategoriaPositiva" runat="server" Visible="False"></asp:Label><br />
                    <asp:Label ID="mensagemFrase2" CssClass="mensagemCategoriaNegativa" runat="server" Visible="False"></asp:Label>
                </div>
                <h4>Registro de Frases famosas</h4>
                <asp:GridView ID="gridFrases" CssClass="gridCategoria" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" OnRowDeleting="gridFrases_RowDeleting" OnSelectedIndexChanged="gridFrases_SelectedIndexChanged">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" />
                        <asp:BoundField DataField="Id" HeaderText="ID" />
                        <asp:BoundField DataField="frase" HeaderText="Frases" />
                        <asp:BoundField DataField="tabelanome" HeaderText="Autor" />
                        <asp:BoundField DataField="tabelacategoria" HeaderText="Categoria da Frase" />
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
