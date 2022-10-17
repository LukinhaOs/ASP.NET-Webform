<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="wfViewCostumers.aspx.cs" Inherits="DataBase__noção_.wfViewCostumers" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div id="header">
            <h1>List View</h1>
        </div>
        <div id="conteudo">

            <asp:ListView ID="ListView1" runat="server" DataKeyNames="Id" DataSourceID="DataSourceData" InsertItemPosition="LastItem">
                <AlternatingItemTemplate>
                    <tr style="background-color: #FFFFFF;color: #284775;">
                        <td>
                            <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Excluir" />
                            <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Editar" />
                        </td>
                        <td>
                            <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
                        </td>
                        <td>
                            <asp:Label ID="NomeLabel" runat="server" Text='<%# Eval("Nome") %>' />
                        </td>
                        <td>
                            <asp:Label ID="IdadeLabel" runat="server" Text='<%# Eval("Idade") %>' />
                        </td>
                        <td>
                            <asp:Label ID="EmailLabel" runat="server" Text='<%# Eval("Email") %>' />
                        </td>
                        <td>
                            <asp:Label ID="NacionalidadeLabel" runat="server" Text='<%# Eval("Nacionalidade") %>' />
                        </td>
                        <td>
                            <asp:Label ID="OcupaçãoLabel" runat="server" Text='<%# Eval("Ocupação") %>' />
                        </td>
                    </tr>
                </AlternatingItemTemplate>
                <EditItemTemplate>
                    <tr style="background-color: #999999;">
                        <td>
                            <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Atualizar" />
                            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancelar" />
                        </td>
                        <td>
                            <asp:Label ID="IdLabel1" runat="server" Text='<%# Eval("Id") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="NomeTextBox" runat="server" Text='<%# Bind("Nome") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="IdadeTextBox" runat="server" Text='<%# Bind("Idade") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="NacionalidadeTextBox" runat="server" Text='<%# Bind("Nacionalidade") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="OcupaçãoTextBox" runat="server" Text='<%# Bind("Ocupação") %>' />
                        </td>
                    </tr>
                </EditItemTemplate>
                <EmptyDataTemplate>
                    <table runat="server" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
                        <tr>
                            <td>Nenhum dado foi retornado.</td>
                        </tr>
                    </table>
                </EmptyDataTemplate>
                <InsertItemTemplate>
                    <tr style="">
                        <td>
                            <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Inserir" />
                            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Limpar" />
                        </td>
                        <td>&nbsp;</td>
                        <td>
                            <asp:TextBox ID="NomeTextBox" runat="server" Text='<%# Bind("Nome") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="IdadeTextBox" runat="server" Text='<%# Bind("Idade") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="NacionalidadeTextBox" runat="server" Text='<%# Bind("Nacionalidade") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="OcupaçãoTextBox" runat="server" Text='<%# Bind("Ocupação") %>' />
                        </td>
                    </tr>
                </InsertItemTemplate>
                <ItemTemplate>
                    <tr style="background-color: #E0FFFF;color: #333333;">
                        <td>
                            <asp:Button ID="DeleteButton" runat="server" CommandName="Delet" Text="Excluir" />
                            <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Editar" />
                        </td>
                        <td>
                            <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
                        </td>
                        <td>
                            <asp:Label ID="NomeLabel" runat="server" Text='<%# Eval("Nome") %>' />
                        </td>
                        <td>
                            <asp:Label ID="IdadeLabel" runat="server" Text='<%# Eval("Idade") %>' />
                        </td>
                        <td>
                            <asp:Label ID="EmailLabel" runat="server" Text='<%# Eval("Email") %>' />
                        </td>
                        <td>
                            <asp:Label ID="NacionalidadeLabel" runat="server" Text='<%# Eval("Nacionalidade") %>' />
                        </td>
                        <td>
                            <asp:Label ID="OcupaçãoLabel" runat="server" Text='<%# Eval("Ocupação") %>' />
                        </td>
                    </tr>
                </ItemTemplate>
                <LayoutTemplate>
                    <table runat="server">
                        <tr runat="server">
                            <td runat="server">
                                <table id="itemPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                                    <tr runat="server" style="background-color: #E0FFFF;color: #333333;">
                                        <th runat="server"></th>
                                        <th runat="server">Id</th>
                                        <th runat="server">Nome</th>
                                        <th runat="server">Idade</th>
                                        <th runat="server">Email</th>
                                        <th runat="server">Nacionalidade</th>
                                        <th runat="server">Ocupação</th>
                                    </tr>
                                    <tr id="itemPlaceholder" runat="server">
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr runat="server">
                            <td runat="server" style="text-align: center;background-color: #5D7B9D;font-family: Verdana, Arial, Helvetica, sans-serif;color: #FFFFFF">
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
                    <tr style="background-color: #E2DED6;font-weight: bold;color: #333333;">
                        <td>
                            <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Excluir" />
                            <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Editar" />
                        </td>
                        <td>
                            <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
                        </td>
                        <td>
                            <asp:Label ID="NomeLabel" runat="server" Text='<%# Eval("Nome") %>' />
                        </td>
                        <td>
                            <asp:Label ID="IdadeLabel" runat="server" Text='<%# Eval("Idade") %>' />
                        </td>
                        <td>
                            <asp:Label ID="EmailLabel" runat="server" Text='<%# Eval("Email") %>' />
                        </td>
                        <td>
                            <asp:Label ID="NacionalidadeLabel" runat="server" Text='<%# Eval("Nacionalidade") %>' />
                        </td>
                        <td>
                            <asp:Label ID="OcupaçãoLabel" runat="server" Text='<%# Eval("Ocupação") %>' />
                        </td>
                    </tr>
                </SelectedItemTemplate>
            </asp:ListView>

            <asp:SqlDataSource ID="DataSourceData" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [CostumerDados] WHERE [Id] = @Id" InsertCommand="INSERT INTO [CostumerDados] ([Nome], [Idade], [Email], [Nacionalidade], [Ocupação]) VALUES (@Nome, @Idade, @Email, @Nacionalidade, @Ocupação)" SelectCommand="SELECT [Id], [Nome], [Idade], [Email], [Nacionalidade], [Ocupação] FROM [CostumerDados]" UpdateCommand="UPDATE [CostumerDados] SET [Nome] = @Nome, [Idade] = @Idade, [Email] = @Email, [Nacionalidade] = @Nacionalidade, [Ocupação] = @Ocupação WHERE [Id] = @Id">
                <DeleteParameters>
                    <asp:Parameter Name="Id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Nome" Type="String" />
                    <asp:Parameter Name="Idade" Type="String" />
                    <asp:Parameter Name="Email" Type="String" />
                    <asp:Parameter Name="Nacionalidade" Type="String" />
                    <asp:Parameter Name="Ocupação" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Nome" Type="String" />
                    <asp:Parameter Name="Idade" Type="String" />
                    <asp:Parameter Name="Email" Type="String" />
                    <asp:Parameter Name="Nacionalidade" Type="String" />
                    <asp:Parameter Name="Ocupação" Type="String" />
                    <asp:Parameter Name="Id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSourceAgenda" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [CostumerDados] WHERE [Id] = @Id" InsertCommand="INSERT INTO [CostumerDados] ([Nome], [Email]) VALUES (@Nome, @Email)" SelectCommand="SELECT [Nome], [Id], [Email] FROM [CostumerDados]" UpdateCommand="UPDATE [CostumerDados] SET [Nome] = @Nome, [Email] = @Email WHERE [Id] = @Id">
                <DeleteParameters>
                    <asp:Parameter Name="Id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Nome" Type="String" />
                    <asp:Parameter Name="Email" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Nome" Type="String" />
                    <asp:Parameter Name="Email" Type="String" />
                    <asp:Parameter Name="Id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>

        </div>

        <div>
            <h1>Details View</h1>
        </div>
        <div>

            <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" AutoGenerateRows="False" CellPadding="4" DataKeyNames="Id" DataSourceID="SqlDateDetails" ForeColor="#333333" GridLines="None" Height="50px" PageIndex="1" Width="325px">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
                <EditRowStyle BackColor="#999999" />
                <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" />
                <Fields>
                    <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                    <asp:BoundField DataField="Nome" HeaderText="Nome" SortExpression="Nome" />
                    <asp:BoundField DataField="Idade" HeaderText="Idade" SortExpression="Idade" />
                    <asp:BoundField DataField="Nacionalidade" HeaderText="Nacionalidade" SortExpression="Nacionalidade" />
                    <asp:BoundField DataField="Ocupação" HeaderText="Ocupação" SortExpression="Ocupação" />
                    <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
                </Fields>
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            </asp:DetailsView>
            <asp:SqlDataSource ID="SqlDateDetails" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [CostumerDados] WHERE [Id] = @Id" InsertCommand="INSERT INTO [CostumerDados] ([Nome], [Idade], [Nacionalidade], [Ocupação], [Email]) VALUES (@Nome, @Idade, @Nacionalidade, @Ocupação, @Email)" SelectCommand="SELECT [Id], [Nome], [Idade], [Nacionalidade], [Ocupação], [Email] FROM [CostumerDados]" UpdateCommand="UPDATE [CostumerDados] SET [Nome] = @Nome, [Idade] = @Idade, [Nacionalidade] = @Nacionalidade, [Ocupação] = @Ocupação, [Email] = @Email WHERE [Id] = @Id">
                <DeleteParameters>
                    <asp:Parameter Name="Id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Nome" Type="String" />
                    <asp:Parameter Name="Idade" Type="String" />
                    <asp:Parameter Name="Nacionalidade" Type="String" />
                    <asp:Parameter Name="Ocupação" Type="String" />
                    <asp:Parameter Name="Email" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Nome" Type="String" />
                    <asp:Parameter Name="Idade" Type="String" />
                    <asp:Parameter Name="Nacionalidade" Type="String" />
                    <asp:Parameter Name="Ocupação" Type="String" />
                    <asp:Parameter Name="Email" Type="String" />
                    <asp:Parameter Name="Id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <br />
        </div>

        <div>
            <h1>Data Grid</h1>
        </div>
        <div>

            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" DataKeyNames="Id" DataSourceID="DataSourceData" GridLines="Horizontal" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="1042px">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                    <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                    <asp:BoundField DataField="Nome" HeaderText="Nome" SortExpression="Nome" />
                    <asp:BoundField DataField="Idade" HeaderText="Idade" SortExpression="Idade" />
                    <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                    <asp:BoundField DataField="Nacionalidade" HeaderText="Nacionalidade" SortExpression="Nacionalidade" />
                    <asp:BoundField DataField="Ocupação" HeaderText="Ocupação" SortExpression="Ocupação" />
                </Columns>
                <FooterStyle BackColor="White" ForeColor="#333333" />
                <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="White" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F7F7F7" />
                <SortedAscendingHeaderStyle BackColor="#487575" />
                <SortedDescendingCellStyle BackColor="#E5E5E5" />
                <SortedDescendingHeaderStyle BackColor="#275353" />
            </asp:GridView>

        </div>
    </form>
</body>
</html>
