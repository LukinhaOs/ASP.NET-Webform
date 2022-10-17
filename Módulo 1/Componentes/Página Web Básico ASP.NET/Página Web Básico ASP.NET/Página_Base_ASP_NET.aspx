<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Página_Base_ASP_NET.aspx.cs" Inherits="Página_Web_Básico_ASP.NET.Página_Base_ASP_NET" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link rel="stylesheet" href="">
    <title>Página com ASP.NET</title>
    <style type="text/css">
        #Text1 {
            width: 396px;
        }
        #button {
            margin-left: 12px;
            border-radius: 8px;
            padding: 10px;
            color: lightslategray;


            }
        #message {
            width: 351px;
            background-color: lightsteelblue;
            padding: 8px;
            border-radius: 10px; 
            font-weight: bold;
        }
        #Texto {
            width: 378px;
        }

        #txtbox{
            padding: 8px;
            border-radius: 10px;
        }

        body{
            font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
            background-color:lightslategray;
            color: white;
        }

        a{
            text-decoration: none;
            color: white;
            font-weight: bold;
        }
    </style>



</head>
<body>
    <form id="form1" runat="server">
        <h1>Página Básica com ASP.NET</h1>
        <div>
            <p>Digite uma mensagem para exibi-lá logo abaixo :)</p>
            
            <asp:TextBox ID="txtbox" runat="server" Width="462px"></asp:TextBox>
                
            <asp:Button ID="button" runat="server" Text="Verificar" Width="134px" OnClick="Button1_Click" />
            <br />
            <br />
            <asp:Label ID="message" runat="server" Text="Estou esperando a mensagem... O.O"></asp:Label>
            <br />
            <br />
            <a href="página2.aspx">Acesse outra página</a>
        </div>
    </form>
</body>
</html>
