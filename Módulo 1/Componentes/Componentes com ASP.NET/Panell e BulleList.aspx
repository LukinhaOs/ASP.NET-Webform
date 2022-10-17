<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Panell e BulleList.aspx.cs" Inherits="Componentes_com_ASP.NET.Panell_e_BulleList" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Panell e BulleList</title>
    <style>
        body{
            background-color:lightgray;
            color: darkslategray;
            font: 18px Arial;
        }


        #conteudo{
            background-color: white;
            padding: 20px;
            border-radius: 8px;
            margin-right: 50%;
            text-decoration: none;
            color: darkslategray;
            font-weight: bold;
        }

        #numPI, #numFat {
            background-color: lightgray;
            padding: 20px;
            border-radius: 8px;
        }

        #dadosusuario1, #button1, #num1, #num2, #button2{
            border-radius: 8px;
            border: none;
            padding: 6px;
        }

        #info1, #info2 {
            padding: 6px;
            background-color: limegreen;
            color: white;
            border-radius: 8px;
        }

    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div id="conteudo">
            
            <asp:BulletedList ID="bdlist" runat="server" BulletStyle="CustomImage" Font-Bold="True" OnClick="list_Click" DisplayMode="LinkButton">
                <asp:ListItem>Par ou Impar</asp:ListItem>
                <asp:ListItem>Multiplicação</asp:ListItem>
            </asp:BulletedList>
            
            <asp:Panel ID="numPI" runat="server" Visible="False">
            Números Pares e Ímpares:<br /> 
            <asp:TextBox ID="dadosusuario1" runat="server"></asp:TextBox>
            <asp:Button ID="button1" runat="server" Text="Conferir número" OnClick="button1_Click" />
            <br /><br />
            <asp:Label ID="info1" runat="server" Text="Resultado..."></asp:Label>
            </asp:Panel>

            <asp:Panel ID="numFat" runat="server" Visible="False">
            Multiplicação:<br />
            <asp:TextBox ID="num1" runat="server"></asp:TextBox> X 
            <asp:TextBox ID="num2" runat="server"></asp:TextBox>
            <asp:Button ID="button2" runat="server" Text="Conferir resultado" OnClick="button2_Click" />
            <br /><br />
            <asp:Label ID="info2" runat="server" Text="Resultado..."></asp:Label>   
            </asp:Panel>
        </div>
    </form>
</body>
</html>
