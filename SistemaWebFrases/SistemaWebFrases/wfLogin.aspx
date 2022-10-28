<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="wfLogin.aspx.cs" Inherits="SistemaWebFrases.wfLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Login</title>
    <link rel="stylesheet" href="CSS/web_all.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div id="loginPreenchimento">
            <div id="loginConteudo">
                <div id="logo">
                    <img src="Imagens/Sistema/webFrases_logo.png" style="height: 170px; width: 210px; position: relative; right: 140px;" />
                    <div id="tituloLogo">
                        <h1 style="font-size: 22px; margin-left: -140px; margin-right: -140px; margin-top: 60px">Sistema Web Back-End Frases Famosas</h1>
                    </div>
                </div>
                <div id="login">
                    <div id="emailDiv">
                        <p style="text-align: left;">E-mail :</p>
                    <asp:TextBox ID="boxLoginEmail" placeholder="Informe o seu e-mail" Style="margin-left: 4px;" runat="server"></asp:TextBox>
                    </div>
                    <div id="senhaDiv">
                        <p style="text-align: left;">Senha :</p>
                    <asp:TextBox ID="boxLoginSenha" placeholder="Informe a sua senha" Style="margin-left: 5px;" runat="server" TextMode="Password"></asp:TextBox>
                    </div>
                    <div id="buttonDiv">
                        <asp:Button ID="loginButton" Style="width: 200px; height: 27px; margin-left: 7px; cursor: pointer;" runat="server" Text="Fazer Login" OnClick="loginButton_Click" />
                    </div>
                    <div id="mensagemDiv">
                        <asp:Label ID="loginLabel" CssClass="loginLabel" runat="server" Text=""></asp:Label>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
