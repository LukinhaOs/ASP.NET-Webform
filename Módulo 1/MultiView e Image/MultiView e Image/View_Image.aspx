<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="View_Image.aspx.cs" Inherits="MultiView_e_Image.View_Imamge" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>MultiView & Image</title>
    <style>
        body{
            text-decoration: none;
            text-align:center;
            font-family:'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;
            color: darkcyan;
        }

        p {
            color: darkcyan;
            font-weight: bold;
        }

        #imagebutton1, #imagebutton2 {
            background-color: mediumaquamarine;
            padding: 25px;
            justify-content: space-around;
            border-radius: 25px;
            margin: 20px;
        }

        #LinkButton1, #LinkButton2, #hyperlink1, #hyperlink2 {
            text-decoration: none;
            background-color: mediumaquamarine;
            padding: 8px;
            border-radius: 8px;
            color: white;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">

        l 

        <div>
            
            <h1>MultiView & Imagens</h1>

        <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
            <asp:View ID="View1" runat="server">
                <asp:ImageButton ID="imagebutton1" runat="server" Height="400px" ImageUrl="~/Imagens/img1.png" OnClick="imagebutton1_Click" ToolTip="Clique na imagem para exibir o Título" Width="450px" AlternateText="Imagem do Super Sonic  XD" />
                <asp:ImageButton ID="imagebutton2" runat="server" ImageUrl="~/Imagens/img2.png" ToolTip="Clique na imagem para exibir o Título" OnClick="imagebutton2_Click" AlternateText="Imagem da Pixel Tatto O.O" />
            </asp:View>
            <asp:View ID="View2" runat="server">
                <p>Você acabou de clicar no Sonic :D</p>
                <p>Super Sonic Pixel Art
                </p>
                <asp:HyperLink ID="hyperlink1" runat="server" NavigateUrl="https://www.pixilart.com/draw">Acesse o site Pixel Arts e faça a sua!</asp:HyperLink><br /><br />
                <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Voltar</asp:LinkButton>
            </asp:View>
            <asp:View ID="View3" runat="server">
                    <p>Você acabou de clicar no Tatto :)</p>
                    <p>Pixel Tatto Pixel Art</p>
                    <asp:HyperLink ID="hyperlink2" runat="server" NavigateUrl="https://www.pixilart.com/draw">Acesse o site Pixel Arts e faça a sua!</asp:HyperLink><br /><br />
                    <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton1_Click">Voltar</asp:LinkButton>
            </asp:View>
           </asp:MultiView><br />

           <asp:AdRotator ID="ads" runat="server" AdvertisementFile="~/AdsWebView.xml" ToolTip="Acessar site do Anunciante" Height="400px" Width="450px" />
        </div>
    </form>
</body>
</html>
