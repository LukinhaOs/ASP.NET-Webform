<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Tabuada.aspx.cs" Inherits="Componentes_com_ASP.NET.Tabuada" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Tabuada com componentes ASP.NET</title>
    <style>
        body{
            padding: 30px;
            background-color: steelblue;
            text-align: center;
        }

        .table{
            background-color: white;
        }

        #listaitens , #resultado{
            margin-top: 30px;
            border-radius: 6px;
        }

        h1 {
            margin-top: 30px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <h1>Tabuada</h1><br />
        <div id="conteudo">
            <p>Selecione um número da lista para ver a tabuada</p>
            <asp:DropDownList ID="listaitens" runat="server">
            </asp:DropDownList>
            
            <asp:Button ID="button" runat="server" OnClick="Button1_Click" Text="Button" />
            
            <div id="resultado">
                
                <asp:ListBox ID="listbox" runat="server" Height="199px" Width="319px"></asp:ListBox>
                
            </div>
        </div>
    </form>
</body>
</html>
