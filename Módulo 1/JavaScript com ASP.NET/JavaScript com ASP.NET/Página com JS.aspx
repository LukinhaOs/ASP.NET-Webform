<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Página com JS.aspx.cs" Inherits="JavaScript_com_ASP.NET.Página_com_JS" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>ASP.NET com JS</title>
    <style>
        body {
            text-align: center;
            background-color: cornflowerblue;
            font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
            font-weight: bold;
        }

        #hyperLink1 {
            background-color: white;
            padding: 16px;
            border-radius: 8px;
            color: dodgerblue;
            text-decoration: none;
        }
    </style>

    <script>type="text/javascript"</script>
</head>
<body>
    <form id="form1" runat="server">
        <script>
            function Mensagem() {
                alert('Olá mundo!');
            }
        </script>
        <div>
            <asp:Image ID="image1" runat="server" AlternateText="Imagem do Sonic Pixelado" Height="500px" ImageUrl="~/imagens/img1.png" Width="400px" onMouseOver="Mensagem()"/>
        </div><br />
        <asp:HyperLink ID="hyperLink1" runat="server" NavigateUrl="~/IndexWebForm.aspx">-- Voltar --</asp:HyperLink>
    </form>
</body>
</html>
