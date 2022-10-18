<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="wfInicioCookies.aspx.cs" Inherits="Cookies.wfInicioCookies" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Página Inicial</title>
    <style>
        body {
            background-color: lightslategray;
            font: normal 18px Arial;
            color: white;
        }

        #conteudoPrincipal {
            font-weight: bold;
        }

        #conteudoCookies, #conteudoSession, #conteudoApplication {
            background-color: dimgray;
            padding: 20px;
            width: 900px;
            height: 100px;
            margin: auto;
            text-align: center;
            margin-top: 20px;
            border-radius: 10px;
        }

        h1, h3 {
            text-align: center;
        }

        #buttonCApagar, #buttonCListar, #buttonAdicionarSession, #buttonRemoverSession, #buttonApplication, #buttonRemoveApplication {
            border: none;
            color: darkslategray;
            padding: 5px;
            border-radius: 10px;
            cursor: pointer;
        }

        #textSession, #textContSession, #textApplication {
            border: none;
            color: darkslategray;
            padding: 5px;
            border-radius: 10px;
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <h1>Página Principal com Cookies - Applications & Sessions</h1>
        <div id="conteudoPrincipal">
            <div id="conteudoCookies">
                <h3>Cookies</h3>
                <asp:Label ID="respLogin" runat="server" Text="Exibindo dados do Cookie: "></asp:Label>
                <asp:Button ID="buttonCApagar" runat="server" Text="Apagar Cookies" OnClick="buttonCApagar_Click" />
                <asp:Button ID="buttonCListar" runat="server" Text="Listar Cookies" OnClick="buttonCListar_Click" />
            </div>

            <div id="conteudoSession">
                <h3>Session</h3>
                <asp:Label ID="lSession" runat="server" Text="'ID' da Session: "></asp:Label>
                <asp:TextBox ID="textSession" runat="server"></asp:TextBox>
                <asp:Label ID="lContSession" runat="server" Text="Contador da Session: "></asp:Label>
                <asp:TextBox ID="textContSession" runat="server"></asp:TextBox>
                <asp:Button ID="buttonAdicionarSession" runat="server" Text="Adicionar" OnClick="buttonAdicionarSession_Click" />
                <asp:Button ID="buttonRemoverSession" runat="server" Text="Remover" OnClick="buttonRemoverSession_Click" />
            </div>

            <div id="conteudoApplication">
                <h3>Application</h3>
                <asp:Label ID="labelApplication" runat="server" Text="Contador da Aplicação: "></asp:Label>
                <asp:TextBox ID="textApplication" runat="server"></asp:TextBox>
                <asp:Button ID="buttonApplication" runat="server" Text="Adicionar" OnClick="buttonApplication_Click" />
                <asp:Button ID="buttonRemoveApplication" runat="server" Text="Remover" OnClick="buttonRemoveApplication_Click" />
            </div>
        </div>
    </form>
</body>
</html>
