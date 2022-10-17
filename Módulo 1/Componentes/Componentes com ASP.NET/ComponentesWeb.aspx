<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ComponentesWeb.aspx.cs" Inherits="Componentes_com_ASP.NET.ComponentesWeb" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Componentes com ASP.NET - parte 1</title>
    <style type="text/css">
        body{
            background-color: cornflowerblue;
            color: white;
            font-family:'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }
        .info1 {
           border-radius: 15px;
           background-color: slategrey;
           color: white;
        }       
        .auto-style1 {
            height: 33px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <h1>Componentes com o ASP.NET & C#</h1>
        <div>
           
            <table style="width:100%;">
                <tr>
                    <td class="auto-style1" id="infodetalhes">Detalhes dos itens</td>
                    <td class="auto-style1" id="infodados">Dados</td>
                    <td class="auto-style1" id="click"></td>
                </tr>
                <tr>
                    <td class="auto-style13">
                        <asp:TextBox ID="info1" runat="server" Width="354px"></asp:TextBox>
                    </td>
                    <td class="auto-style14">
                        <asp:TextBox ID="info2" runat="server" Width="408px" CssClass="auto-style1"></asp:TextBox>
                    </td>
                    <td class="auto-style8">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style13">
                        <asp:ListBox ID="dadosinfo" runat="server" Width="368px">
                        </asp:ListBox>
                    </td>
                    <td class="auto-style14">
                        Opções<br />
                        <asp:Button ID="button" runat="server" Text="Inserir" OnClick="button_Click" />
                        <asp:Button ID="button2" runat="server" CssClass="auto-style1" Text="Selecionar Conteudo" OnClick="button2_Click" />
                    </td>
                    <td class="auto-style11">
                        &nbsp;</td>
                </tr>
            </table>
           
        </div>
                        <asp:DropDownList ID="listdetalhes" runat="server" Width="371px" Height="19px">
                        </asp:DropDownList>
    </form>
</body>
</html>
