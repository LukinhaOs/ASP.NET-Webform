<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Tabuada2_0.aspx.cs" Inherits="Componentes_com_ASP.NET.Tabuada2_0" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Tabuada 2.0</title>
    <style>
        body {
            background-image:linear-gradient(cadetblue, darkgrey);
            background-attachment:fixed;
            color: white;
            font: normal 18px Lucida Sans Unicode;
            font-weight: bold;
        }

        #dados, #dados1, #button, #button, #resultado{
            padding: 6px;
            margin: 10px;
            color: cadetblue;
            font-weight: bold;
            text-align: center;
        }

        h1{
            text-align: center;
        }

        #conteudo1, #conteudo2, p {
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <h1> Tabuada </h1>
        <p>Informe um número logo abaixo para conferir a tabuada.</p>
        <div ID="conteudo1">
            <asp:TextBox ID="dados" runat="server"></asp:TextBox> Ex: 4<br />
            <asp:TextBox ID="dados1" runat="server"></asp:TextBox> Até quanto? Ex: 25<br />
            <asp:Button ID="button" runat="server" Text="Verificar resultado" OnClick="button_Click" />
        </div>

        <div ID="conteudo2">

            <asp:ListBox ID="resultado" runat="server" Height="251px" Width="315px"></asp:ListBox>

        </div>
    </form>
</body>
</html>
