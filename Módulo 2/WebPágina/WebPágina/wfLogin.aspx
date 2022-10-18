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
            display: flex;
            color: white;
            font-weight: bold;
            margin-top: 10px;
            background-color: midnightblue;
            height: auto;
            border-radius: 8px;
            margin-left: 550px;
            margin-right: 550px;
            padding: 30px;
        }

        #loginMensagem {
            position: relative;
            padding: 10px;
            border-radius: 8px;
            background-color: midnightblue;
            margin-left: 550px;
            margin-right: 550px;
        }

        #labelMensagem {
            color: white;
            font-weight: bold;
        }

        #boxLogin, #boxSenha, #buttonLogin {
            margin-top: 7px;
            color: midnightblue;
            text-align: center;
            width: 170px;
            padding: 4px;
            border-radius: 8px;
            border: none;
            margin-right: 50px;
        }

        #infoLogin, #dadoLogin {
            display: flex;
            flex-direction: column;
            width: 200px;
            margin: 5px;
        }

        #login, #senha {
            border-radius: 8px;
            width: 120px;
            position: relative;
            margin-top: 8px;
            left: 25px;
        }
    </style>

</head>
<body>
    <form id="form1" runat="server">
        <h1>WebPage & Banco de Dados</h1>
        <div id="paginaLogin">
            <div id="infoLogin">
                <div id="login">
                    Login:
                </div>
                <div id="senha">
                    Senha:
                </div>
            </div>
            <div id="dadoLogin">
                <asp:TextBox ID="boxLogin" runat="server" placeholder="Digite o seu e-mail"></asp:TextBox>
                <asp:TextBox ID="boxSenha" runat="server" placeholder="Digite a sua senha" TextMode="Password"></asp:TextBox>
                <asp:Button ID="buttonLogin" Style="cursor: pointer; position: relative; left: 4px; margin-top: 20px;" runat="server" Text="Acessar" OnClick="buttonLogin_Click" />
            </div>
        </div>
        <div id="loginMensagem" style="margin-top: 30px;">
            <asp:Label ID="labelMensagem" runat="server" Text=""></asp:Label>
        </div>

        <footer>
            <h4>&Copy; | WebForm Development by Lucas</h4>
        </footer>
    </form>
</body>
</html>
