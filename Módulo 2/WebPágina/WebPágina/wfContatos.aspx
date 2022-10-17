<%@ Page Title="Contatos" Language="C#" MasterPageFile="~/wfPaginaMestre.Master" AutoEventWireup="true" CodeBehind="wfContatos.aspx.cs" Inherits="WebPágina.wfContatos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        #contatoMensagem {
            font-weight: bold;
            color: slategrey;
            margin-top: 10px;
            background-color: gold;
            border-radius: 8px;
            height: 20px;
            margin-left: 350px;
            margin-right: 350px;
            padding: 10px;
        }
    </style>

    <h4>Lista de Contatos</h4>

    <div id="dadosContatos">
        <div style="padding: 5px;">
            Nome:
                <asp:TextBox ID="TextContatoNome" runat="server"></asp:TextBox>
        </div>
        <div style="margin-left: 2px; padding: 5px;">
            Email:
                <asp:TextBox ID="TextContatoEmail" runat="server"></asp:TextBox>
        </div>
        <div style="margin-right: 8px; padding: 5px; margin-bottom: 5px;">
            Celular:
                <asp:TextBox ID="TextContatoCelular" runat="server"></asp:TextBox>
        </div>
        <div style="margin-top: 24px;">
            <asp:Button ID="buttonContatos" runat="server" Text="Inserir Dados" OnClick="buttonContatos_Click" />
        </div>
    </div>

    <div id="paginaContatos">
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="Id" DataSourceID="SqlDataSourceContatos">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="Nome" HeaderText="Nome" SortExpression="Nome" />
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                <asp:BoundField DataField="Celular" HeaderText="Celular" SortExpression="Celular" />
            </Columns>
            <FooterStyle BackColor="White" ForeColor="#000066" />
            <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
            <RowStyle ForeColor="#000066" />
            <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#007DBB" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#00547E" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSourceContatos" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [DataContato] WHERE [Id] = @Id" InsertCommand="INSERT INTO [DataContato] ([Nome], [Email], [Celular]) VALUES (@Nome, @Email, @Celular)" SelectCommand="SELECT [Id], [Nome], [Email], [Celular] FROM [DataContato]" UpdateCommand="UPDATE [DataContato] SET [Nome] = @Nome, [Email] = @Email, [Celular] = @Celular WHERE [Id] = @Id">
            <DeleteParameters>
                <asp:Parameter Name="Id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Nome" Type="String" />
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter Name="Celular" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Nome" Type="String" />
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter Name="Celular" Type="String" />
                <asp:Parameter Name="Id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </div>

    <div id="contatoMensagem">
        <asp:Label ID="contatoError" runat="server" Text="Antes de Clicar em 'Inserir Dados' preencha os campos acima."></asp:Label>
    </div>
</asp:Content>
