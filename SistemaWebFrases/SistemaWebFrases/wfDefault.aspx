<%@ Page Title="Home" Language="C#" MasterPageFile="~/WebBakcend.Master" AutoEventWireup="true" CodeBehind="wfDefault.aspx.cs" Inherits="SistemaWebFrases.wfDefault" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="homeDefault">
        Seja Muito Bem Vindo(a) : <asp:Label ID="homeNomeLabel" runat="server" Text="Label"></asp:Label>
        E-mail :   <asp:Label ID="homeEmailLabel" runat="server" Text="Label"></asp:Label>
    </div>
    <div id="conteudoDefault">
        <h1>Sistema Back-End construído com banco de dados SQL e programação CSharp. Elementos introduzidos, ASP.NET (WebForms), juntamente com HTML X & CSS.</h1>
        <h1>O site permite inserir frases famosas de autores que trabalham com a música ou qualquer outro segmento na qual a frase percorreu ao mundo (mundialmente conhecida). 
            Sistema simples mas que é possível de categorizar e especificar o nome do autor, frase e tipo. Os dados são inseridos em tabelas conectadas ao Banco de dados Local.
        </h1>
    </div>    
</asp:Content>
