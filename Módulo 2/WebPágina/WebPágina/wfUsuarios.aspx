<%@ Page Title="Dados de Usuários" Language="C#" MasterPageFile="~/wfPaginaMestre.Master" AutoEventWireup="true" CodeBehind="wfUsuarios.aspx.cs" Inherits="WebPágina.wfUsuarios" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h4>Lista de Dados dos Usuários</h4>
    <div id="paginaUsuarios">
        <asp:ListView ID="ListView1" runat="server" DataKeyNames="Email" DataSourceID="SqlDataSourceDadosUsuarios" InsertItemPosition="LastItem">
            <AlternatingItemTemplate>
                <tr style="background-color: white;">
                    <td>
                        <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Excluir" Style="font-weight: bold;" />
                        <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Editar" Style="font-weight: bold;" />
                    </td>
                    <td>
                        <asp:Label ID="EmailLabel" runat="server" Text='<%# Eval("Email") %>' />
                    </td>
                    <td>
                        <asp:Label ID="NomeLabel" runat="server" Text='<%# Eval("Nome") %>' />
                    </td>
                    <td>
                        <asp:Label ID="SenhaLabel" runat="server" Text='<%# Eval("Senha") %>' />
                    </td>
                </tr>
            </AlternatingItemTemplate>
            <EditItemTemplate>
                <tr style="">
                    <td>
                        <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Atualizar" Style="font-weight: bold;" />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancelar" Style="font-weight: bold;" />
                    </td>
                    <td>
                        <asp:Label ID="EmailLabel1" runat="server" Text='<%# Eval("Email") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="NomeTextBox" runat="server" Text='<%# Bind("Nome") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="SenhaTextBox" runat="server" Text='<%# Bind("Senha") %>' />
                    </td>
                </tr>
            </EditItemTemplate>
            <EmptyDataTemplate>
                <table runat="server" style="">
                    <tr>
                        <td>Nenhum dado foi retornado.</td>
                    </tr>
                </table>
            </EmptyDataTemplate>
            <InsertItemTemplate>
                <tr style="color: white;">
                    <td>
                        <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Inserir" Style="font-weight: bold;" />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Limpar" Style="font-weight: bold;" />
                    </td>
                    <td>
                        <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="NomeTextBox" runat="server" Text='<%# Bind("Nome") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="SenhaTextBox" runat="server" Text='<%# Bind("Senha") %>' />
                    </td>
                </tr>
            </InsertItemTemplate>
            <ItemTemplate>
                <tr style="color: white; font-weight: bold;">
                    <td>
                        <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Excluir" Style="font-weight: bold;" />
                        <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Editar" Style="font-weight: bold;" />
                    </td>
                    <td>
                        <asp:Label ID="EmailLabel" runat="server" Text='<%# Eval("Email") %>' />
                    </td>
                    <td>
                        <asp:Label ID="NomeLabel" runat="server" Text='<%# Eval("Nome") %>' />
                    </td>
                    <td>
                        <asp:Label ID="SenhaLabel" runat="server" Text='<%# Eval("Senha") %>' />
                    </td>
                </tr>
            </ItemTemplate>
            <LayoutTemplate>
                <table runat="server">
                    <tr runat="server">
                        <td runat="server">
                            <table id="itemPlaceholderContainer" runat="server" border="0" style="">
                                <tr runat="server" style="">
                                    <th runat="server"></th>
                                    <th runat="server">Email</th>
                                    <th runat="server">Nome</th>
                                    <th runat="server">Senha</th>
                                </tr>
                                <tr id="itemPlaceholder" runat="server">
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr runat="server">
                        <td runat="server" style="">
                            <asp:DataPager ID="DataPager1" runat="server">
                                <Fields>
                                    <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True" />
                                </Fields>
                            </asp:DataPager>
                        </td>
                    </tr>
                </table>
            </LayoutTemplate>
            <SelectedItemTemplate>
                <tr style="">
                    <td>
                        <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Excluir" Style="font-weight: bold;" />
                        <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Editar" Style="font-weight: bold;" />
                    </td>
                    <td>
                        <asp:Label ID="EmailLabel" runat="server" Text='<%# Eval("Email") %>' />
                    </td>
                    <td>
                        <asp:Label ID="NomeLabel" runat="server" Text='<%# Eval("Nome") %>' />
                    </td>
                    <td>
                        <asp:Label ID="SenhaLabel" runat="server" Text='<%# Eval("Senha") %>' />
                    </td>
                </tr>
            </SelectedItemTemplate>
        </asp:ListView>
        <asp:SqlDataSource ID="SqlDataSourceDadosUsuarios" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [DataUsuario] WHERE [Email] = @Email" InsertCommand="INSERT INTO [DataUsuario] ([Email], [Nome], [Senha]) VALUES (@Email, @Nome, @Senha)" SelectCommand="SELECT [Email], [Nome], [Senha] FROM [DataUsuario]" UpdateCommand="UPDATE [DataUsuario] SET [Nome] = @Nome, [Senha] = @Senha WHERE [Email] = @Email" OnInserted="SqlDataSourceDadosUsuarios_Inserted">
            <DeleteParameters>
                <asp:Parameter Name="Email" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter Name="Nome" Type="String" />
                <asp:Parameter Name="Senha" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Nome" Type="String" />
                <asp:Parameter Name="Senha" Type="String" />
                <asp:Parameter Name="Email" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </div>
    <div style="margin-top: 10px; padding: 5px; background-color: lightskyblue; text-align: center; margin-right: 350px; margin-left: 350px; border-radius: 8px; color: white; font-weight: bold;">
        <asp:Label ID="LMsg" runat="server"></asp:Label>
    </div>

</asp:Content>

