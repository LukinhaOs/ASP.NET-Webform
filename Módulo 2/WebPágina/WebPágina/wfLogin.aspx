<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="wfLogin.aspx.cs" Inherits="WebPágina.wfLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Página Login</title>

    <style>
        body {
            font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
            text-align: center;
        }

        #paginaLogin {
            color: white;
            font-weight: bold;
            display: flex;
            justify-content: center;
            flex-direction: column;
            margin-top: 10px;
            background-color: midnightblue;
            height: auto;
            border-radius: 8px;
            margin-left: 550px;
            margin-right: 550px;
            padding: 30px;
        }

        #labelMensagem {
            color: white;
            font-weight: bold;
        }

        #boxLogin, #boxSenha {
            padding: 3px;
            border-radius: 8px;
            border: none;
        }
    </style>

</head>
<body>
    <form id="form1" runat="server">
        <h1>WebPage & Banco de Dados</h1>
        <div id="paginaLogin">
            <div style="margin-right: 20px;">
                Login:
                <asp:TextBox ID="boxLogin" runat="server" style="text-align: center;" placeholder="Digite o seu e-mail"></asp:TextBox>
            </div>
            <div style="margin-right: 25px; margin-top: 10px;">
                Senha:
                <asp:TextBox ID="boxSenha" runat="server" style="text-align: center;" placeholder="Digite a sua senha" TextMode="Password"></asp:TextBox>
            </div>
            <div style="margin-top: 20px;">
                <asp:Button ID="buttonLogin" Style="border: none; border-radius: 8px; cursor: pointer; padding: 5px; font-weight: bold; width: 100px; background-color: white; color: Highlight;" runat="server" Text="Acessar" OnClick="buttonLogin_Click" />
            </div>
            <div id="loginMensagem" style="margin-top: 30px; font-weight: bold; color: white;">
                <asp:Label ID="labelMensagem" runat="server" Text=""></asp:Label>
            </div>
        </div>

        <footer>
            <h4>&Copy; | WebForm Development by Lucas</h4>
        </footer>
    </form>
</body>
</html>
