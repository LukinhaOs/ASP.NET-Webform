<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="página2.aspx.cs" Inherits="Página_Web_Básico_ASP.NET.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>

    <style>

        body{
            font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
            background-color:lightslategray;
            color: white;
            text-align: center;
            margin-top: 22%
        }

        a{
            text-decoration: none;
            color: white;
            font-weight: bold;
        }

    </style>

    <title>Página com ASP.NET</title>

</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Você acabou de acessar a página :D</h1>
        </div>
        <a href="Página_Base_ASP_NET.aspx">Voltar ?</a>
    </form>
</body>
</html>
