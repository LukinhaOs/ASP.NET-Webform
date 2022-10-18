<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="wfVirtualPath.aspx.cs" Inherits="Post_e_Get.wfVirtualPath" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Virtual Path</title>
    <style>
        body {
            font: normal 18px Arial;
            color: white;
            background-color: orange;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Envio de Dados com Virtual Path</h1>
        </div>
        Filmes: <asp:DropDownList ID="listaFilme" runat="server"></asp:DropDownList>
        <asp:TextBox ID="textFilme" placeholder="Digite o nome de um filme" runat="server" Width="200px"></asp:TextBox>
        <p>
            <asp:Button ID="buttonAdc" runat="server" Text="Adicionar" OnClick="buttonAdc_Click" />
            <asp:Button ID="buttonEnviar" runat="server" PostBackUrl="~/wfDadosFilmes.aspx" Text="Enviar" OnClick="buttonEnviar_Click" />
        </p>
    </form>
</body>
</html>
