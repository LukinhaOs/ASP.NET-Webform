<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Upload.aspx.cs" Inherits="Uploads_com_ASP.NET.Upload" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Arquivos</title>
    <style>
        body {
            background-color: limegreen;
            text-align: center;
            font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
            font-weight: bold;
            color: white;
        }

        #fuArquivo {
            border: none;

        }

    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Upload do Arquivo:
            <asp:FileUpload ID="fuArquivo" runat="server" /><br />
            Tamanho do Arquivo: <asp:TextBox ID="txtTamanho" runat="server"></asp:TextBox>
            <br />
            Nome do Arquivo
            <asp:TextBox ID="txtNome" runat="server"></asp:TextBox><br />
            Extensão do Arquivo/Tipo: 
            <asp:TextBox ID="extensionNome" runat="server"></asp:TextBox>
            <br />
            <asp:Button ID="enviar" runat="server" OnClick="enviar_Click" Text="Enviar Arquivo" Width="310px" />
            <asp:Button ID="enviar2" runat="server" Text="Enviar Múltiplos Aqruivos" OnClick="enviar2_Click" />
        </div>
    </form>
</body>
</html>
