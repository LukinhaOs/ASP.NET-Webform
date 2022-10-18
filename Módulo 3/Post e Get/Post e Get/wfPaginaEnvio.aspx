<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="wfPaginaEnvio.aspx.cs" Inherits="Post_e_Get.wfPaginaEnvio" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Página que Envia Dados</title>
</head>
<body>
    <form id="form1" runat="server">
        <h1>Post e Get
        </h1>

        Informe o salário bruto:
        <asp:TextBox ID="textSalario" runat="server"></asp:TextBox>
        <br />
        <br />
        Será necessário escolher o Percentual de desconto Abaixo:<br />
        <br />
        <asp:RadioButtonList ID="radioOptions" runat="server" AutoPostBack="True" OnSelectedIndexChanged="radioOptions_SelectedIndexChanged" Width="153px">
            <asp:ListItem Selected="True">10%</asp:ListItem>
            <asp:ListItem>25%</asp:ListItem>
            <asp:ListItem>35%</asp:ListItem>
            <asp:ListItem>Outros</asp:ListItem>
        </asp:RadioButtonList>
        <asp:TextBox ID="textPercentual" runat="server" Visible="False"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="buttonEnvio" runat="server" Text="Enviar Dados" PostBackUrl="~/wfPaginaRecebe.aspx" />
    </form>
</body>
</html>
