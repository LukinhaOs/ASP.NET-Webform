<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="wfDadosDataBase.aspx.cs" Inherits="DataBase__noção_.wfDadosDataBase" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <header><h1 style="text-align: center;">Introdução a DataBase com SQL e Webforms (ASP.NET)</h1></header>
            <div id="conteudo" style="background-color: ghostwhite; font-family: Arial, 18px; display: flex; justify-content: space-around;">
                <div id="dados" style="display: flex; flex-direction: column; justify-content: space-between; margin-bottom: 10px; width: 315px; height: 330px;">
                    Primeiro Nome: <asp:TextBox ID="TextNome" runat="server"></asp:TextBox>
                    Idade: <asp:TextBox ID="TextIdade" runat="server"></asp:TextBox>
                    E-mail: <asp:TextBox ID="TextEmail" runat="server"></asp:TextBox>
                    Nacionalidade: <asp:TextBox ID="TextNac" runat="server"></asp:TextBox>
                    Ocupação(Ex: Padeiro): <asp:TextBox ID="TextOcupacao" runat="server"></asp:TextBox>
                    <div id="rodapeDados" style="text-align: center; width: 315px; margin-bottom: 10px; font-weight: bold; ">
                    <asp:Button ID="Button1" runat="server" Text="Enviar Dados" style="padding: 5px;" OnClick="Button1_Click"/>
                </div>
                </div>

                <asp:DataList ID="DataList1" runat="server" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" DataKeyField="Id" DataSourceID="SqlDataSource1" ForeColor="Black" Width="310px">
                    <AlternatingItemStyle BackColor="PaleGoldenrod" />
                    <FooterStyle BackColor="Tan" />
                    <HeaderStyle BackColor="Tan" Font-Bold="True" />
                    <ItemTemplate>
                        Id Costumer:
                        <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
                        <br />
                        Nome:
                        <asp:Label ID="NomeLabel" runat="server" Text='<%# Eval("Nome") %>' />
                        <br />
                        E-mail:
                        <asp:Label ID="EmailLabel" runat="server" Text='<%# Eval("Email") %>' />
                        <br />
                        Idade:
                        <asp:Label ID="IdadeLabel" runat="server" Text='<%# Eval("Idade") %>' />
                        <br />
                        Nacionalidade:
                        <asp:Label ID="NacionalidadeLabel" runat="server" Text='<%# Eval("Nacionalidade") %>' />
                        <br />
                        Ocupação:
                        <asp:Label ID="OcupaçãoLabel" runat="server" Text='<%# Eval("Ocupação") %>' />
                        <br />
                        <br />
                        <br />
                    </ItemTemplate>
                    <SelectedItemStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                </asp:DataList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Id], [Nome], [Idade], [Nacionalidade], [Ocupação], [Email] FROM [CostumerDados]"></asp:SqlDataSource>

            </div>
        </div>
    </form>
</body>
</html>
