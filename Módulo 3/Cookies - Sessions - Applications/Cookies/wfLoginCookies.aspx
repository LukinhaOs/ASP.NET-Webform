<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="wfLoginCookies.aspx.cs" Inherits="Cookies.wfLoginCookies" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Login & Cookies</title>
    <style>
        body {
            background-color: forestgreen;
            color: white;
            font: normal 18px Arial;
            font-weight: bold;
        }

        #formLogin {
            text-align: center;
            margin: auto;
            width: 500px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
            <div id="formLogin">
                <h1>Login com Cookies</h1>
                <div>
                    <p>Login: </p>
                    <asp:TextBox ID="textLogin" placeholder="Digite seu Usuário" runat="server"></asp:TextBox>
                </div>
                <div>
                    <p>Senha: </p>
                    <asp:TextBox ID="textSenha" placeholder="Digite sua Senha" runat="server" TextMode="Password"></asp:TextBox>
                </div>
                <br />
                <asp:Button ID="buttonLogin" Style="color: forestgreen; font-weight: bold" runat="server" Text="Acessar" OnClick="buttonLogin_Click" />
            </div>
    </form>
</body>
</html>
