<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="wbValida.aspx.cs" Inherits="ValidaCampos.wbValida" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Validação de Campos com JavaScript</title>

    <script type="text/javascript">
        var nome = document.getElementById("lbNome")

        var mensagem1 = document.getElementById("message1")
        var mensagem2 = document.getElementById("message2")

        function action() {
            if (document.form1.nome.value == "") {
                mensagem1.innerHTML = "Tudo certo!";
            }
            else {
                mensagem1.innerHTML = "Tudo certo!";
            }
        }
    </script>

</head>
<body>
    <form id="form1" runat="server">
        <div id="conteudo">
            <h1>Validação de Campos</h1>
            <asp:Label ID="tbNome" runat="server" Text="Digite o seu Nome: "></asp:Label><asp:TextBox ID="lbNome" runat="server"></asp:TextBox><input type="button" name="btValida" value="Confirmar" onclick="action()"/>
            <div id="message1">

            </div>
            <asp:Label ID="tbSenha" runat="server" Text="Digite a sua Senha: "></asp:Label><asp:TextBox ID="lbSenha" runat="server"></asp:TextBox><br/>
            <div id="message2">

            </div>
        </div>
    </form>
</body>
</html>
