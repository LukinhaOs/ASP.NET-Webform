<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="IndexWebForm.aspx.cs" Inherits="JavaScript_com_ASP.NET.IndexWebForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Página Incial</title>
    <style>
        body{
            color: white;
            background-color: gold;
            text-align: center;
            font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
        }
        #telaMenu {
            border-radius: 8px;
            margin-right: 200px;
            margin-left: 200px;
            margin-top: 10%;
            padding: 40px;
            background-color: orange;
        }

        #hyperLink1, #hyperLink2 {
            padding: 16px;
            margin: 20px;
            background-color: white;
            border-radius: 8px;
            color: orange;
            font-weight: bold;
            text-decoration: none;
        }

    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Acessando páginas externas com ASP.NET</h1>
            <div id="telaMenu">
                <asp:HyperLink ID="hyperLink1" runat="server" NavigateURL="~/Página com JS.aspx">Acessar página 2</asp:HyperLink>
                <asp:HyperLink ID="hyperLink2" runat="server" NavigateUrl="~/Página 2 com JS.aspx">Acessar página 3</asp:HyperLink>
            </div>
        </div>
    </form>
</body>
</html>
