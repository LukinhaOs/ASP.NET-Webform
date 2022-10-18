<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="wfPaginaRecebe.aspx.cs" Inherits="Post_e_Get.wfPaginaRecebe" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Página que Recebe dados</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>
                Calculo do Salário Mínimo
            </h1>
        </div>
        <asp:PlaceHolder ID="PlaceHolder1" runat="server"></asp:PlaceHolder>
        <asp:Button ID="Button1" runat="server" Text="Voltar" PostBackUrl="~/wfPaginaEnvio.aspx" />
    </form>
</body>
</html>
