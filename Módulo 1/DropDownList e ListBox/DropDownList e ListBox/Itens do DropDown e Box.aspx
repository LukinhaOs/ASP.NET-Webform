<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Itens do DropDown e Box.aspx.cs" Inherits="DropDownList_e_ListBox.Itens_do_DropDown_e_Box" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <style>
        body {
            text-align: center;
            background-color: seagreen;
            color: white;
            font: normal 21px Arial;
        }

        div{
            display: inline-block;
            padding: 15px;

        }

        #textbox1, #textbox2, #itens, #itens2, #itens3, #itens4 {
            margin-top: 10px;
            padding: 5px;
            border-radius: 8px;
            width: 300px;
            border: none;
            color: seagreen;
            font-weight: bold;
        }

        #button1, #button2 {
            margin-top: 10px;
            padding: 5px;
            border-radius: 7px;
            color: seagreen;
            font-weight: bold;
            border: none;
        }

        #itens2 {
            margin-top: 10px;
        }

        #itens3 {
            margin-top: 40px;
        }

        #dados{
            margin-top: 10px;
            background-color: white;
            margin-top: 10px;
        }

        #conteudo {
            color: white;
            background-color: sienna;
        }

        #dados {
            color: seagreen;
        }

        #dados, #conteudo {
            border-radius: 8px;
            width: 500px;
            font-weight:bold;
        }

        #info2{
            margin-top: 20px;
            background-color: seagreen;
            color: white;
            border-radius: 8px;
            font-weight: bold;
        }
        </style>
    <title>DropDownLost & ListBox </title>
</head>
<body style="height: 240px">
    <form id="form1" runat="server" class="auto-style1">
        <h1>DropDownList & ListBox</h1>
        <div id="conteudo">

            <div id="conteudo1">
                <strong>Informe o nome do seu site<br /></strong> 

                <asp:TextBox ID="textbox1" runat="server"></asp:TextBox> 
                <asp:Button ID="button1" runat="server" Text="Inserir nome" OnClick="button1_Click" />

            </div>
            <div id="conteudo2">
                <strong>Informe o endereço do seu site, www<br /></strong>
                <asp:TextBox ID="textbox2" runat="server"></asp:TextBox> 
                <asp:Button ID="button2" runat="server" Text="Inserir site" OnClick="button2_Click" />
            </div>
        </div><br />
        <div id="dados">
            <div id="info1">
            Nome: 
            <asp:ListBox ID="itens" runat="server" Height="29px"></asp:ListBox><br />
            Endereço: 
            <asp:ListBox ID="itens2" runat="server" Height="29px"></asp:ListBox><br />
            <asp:Button ID="button3" runat="server" Text="Armazenar site acima" OnClick="button3_Click" /><br />
            </div>
        <div id="info2">
            Itens Armazenados
            <asp:DropDownList ID="itens3" runat="server"></asp:DropDownList><br />
            <asp:DropDownList ID="itens4" runat="server"></asp:DropDownList>
        </div>
        </div>
    </form>
</body>
</html>
