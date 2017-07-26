<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="stuinformation.aspx.cs" Inherits="function_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style2 {
            height: 30px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <table class="auto-style1">
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="用户名："></asp:Label>
                    <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    &nbsp;</td>
            </tr>
        </table>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:bookAdmin %>" SelectCommand="SELECT * FROM [stuUser]" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [stuUser] WHERE [id] = @original_id AND [name] = @original_name AND [code] = @original_code AND (([email] = @original_email) OR ([email] IS NULL AND @original_email IS NULL)) AND (([phone] = @original_phone) OR ([phone] IS NULL AND @original_phone IS NULL))" InsertCommand="INSERT INTO [stuUser] ([id], [name], [code], [email], [phone]) VALUES (@id, @name, @code, @email, @phone)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [stuUser] SET [name] = @name, [code] = @code, [email] = @email, [phone] = @phone WHERE [id] = @original_id AND [name] = @original_name AND [code] = @original_code AND (([email] = @original_email) OR ([email] IS NULL AND @original_email IS NULL)) AND (([phone] = @original_phone) OR ([phone] IS NULL AND @original_phone IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_id" Type="String" />
                <asp:Parameter Name="original_name" Type="String" />
                <asp:Parameter Name="original_code" Type="String" />
                <asp:Parameter Name="original_email" Type="String" />
                <asp:Parameter Name="original_phone" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="id" Type="String" />
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter Name="code" Type="String" />
                <asp:Parameter Name="email" Type="String" />
                <asp:Parameter Name="phone" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter Name="code" Type="String" />
                <asp:Parameter Name="email" Type="String" />
                <asp:Parameter Name="phone" Type="String" />
                <asp:Parameter Name="original_id" Type="String" />
                <asp:Parameter Name="original_name" Type="String" />
                <asp:Parameter Name="original_code" Type="String" />
                <asp:Parameter Name="original_email" Type="String" />
                <asp:Parameter Name="original_phone" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:CommandField ShowEditButton="True" />
                <asp:BoundField DataField="id" HeaderText="学号" ReadOnly="True" SortExpression="id" />
                <asp:BoundField DataField="name" HeaderText="姓名" SortExpression="name" />
                <asp:BoundField DataField="code" HeaderText="密码" SortExpression="code" />
                <asp:BoundField DataField="email" HeaderText="邮箱" SortExpression="email" />
                <asp:BoundField DataField="phone" HeaderText="电话" SortExpression="phone" />
            </Columns>
        </asp:GridView>
    </p>
</asp:Content>

