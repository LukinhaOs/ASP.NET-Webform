<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Página 2 com JS.aspx.cs" Inherits="JavaScript_com_ASP.NET.Página_2_com_JS" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Click for Up or Down</title>
    <style>
        body{
            background-color: lightskyblue;
            text-align: center;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }

        #hyperLink1, #hyperLink2 {
            font-weight: bold;
            cursor: pointer;
            text-decoration: none;
        }

        #hyperLink3 {
        background-color: white;
        padding: 16px;
        border-radius: 8px;
        color: dodgerblue;
        text-decoration: none;
        }

    </style>


    <script type="text/javascript">
        var tamanho = 14;
        function AumentarFonte() {
            tamanho += 1;
            document.getElementById("paragrafo1").style.fontSize = tamanho + "px";
            document.getElementById("paragrafo2").style.fontSize = tamanho + "px";
        }

        function DiminuirFonte() {
            tamanho -= 1;
            document.getElementById("paragrafo1").style.fontSize = tamanho + "px";
            document.getElementById("paragrafo2").style.fontSize = tamanho + "px";
        }
    </script>

</head>
<body>
    <form id="form1" runat="server">
        <h1> Aumentar e diminuir fonte</h1>

        <div>
            <p id="paragrafo1">Exemplo de Texto com o Java Script de Botões que aumentam e diminuem a fonte.</p>
            <p id="paragrafo2">Os botês são representados pelo sinal de "+" e "-".</p>
        </div>

        <asp:HyperLink ID="hyperLink1" runat="server" onClick="AumentarFonte()">Aumentar Fonte ++++</asp:HyperLink><br />
        <asp:HyperLink ID="hyperLink2" runat="server" onClick="DiminuirFonte()">Diminuir Fonte ----</asp:HyperLink><br /><br />
        <asp:HyperLink ID="hyperLink3" runat="server" NavigateUrl="~/IndexWebForm.aspx">-- Volar --</asp:HyperLink>
    </form>
</body>
</html>
