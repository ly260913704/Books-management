<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="change.aspx.cs" Inherits="function_change" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="Label1" runat="server" Text="查询类型"></asp:Label>
    <asp:DropDownList ID="DropDownList1" runat="server">
        <asp:ListItem Value="id">书号</asp:ListItem>
        <asp:ListItem Value="name">书名</asp:ListItem>
        <asp:ListItem Value="author">作者</asp:ListItem>
    </asp:DropDownList>
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="查询" />
<asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
    <Columns>
        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
        <asp:BoundField DataField="id" HeaderText="书号" ReadOnly="True" SortExpression="id" />
        <asp:BoundField DataField="name" HeaderText="书名" SortExpression="name" />
        <asp:BoundField DataField="type" HeaderText="种类" SortExpression="type" />
        <asp:BoundField DataField="publication" HeaderText="出版日期" SortExpression="publication" />
        <asp:BoundField DataField="number" HeaderText="数量" SortExpression="number" />
        <asp:BoundField DataField="author" HeaderText="作者" SortExpression="author" />
    </Columns>
</asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:bookAdmin %>" DeleteCommand="DELETE FROM [book] WHERE [id] = @original_id AND [name] = @original_name AND [type] = @original_type AND [publication] = @original_publication AND [number] = @original_number" InsertCommand="INSERT INTO [book] ([id], [name], [type], [publication], [number]) VALUES (@id, @name, @type, @publication, @number)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT id, name, type, publication, number, author FROM book" UpdateCommand="UPDATE [book] SET [name] = @name, [type] = @type, [publication] = @publication, [number] = @number WHERE [id] = @original_id AND [name] = @original_name AND [type] = @original_type AND [publication] = @original_publication AND [number] = @original_number">
    <DeleteParameters>
        <asp:Parameter Name="original_id" Type="String" />
        <asp:Parameter Name="original_name" Type="String" />
        <asp:Parameter Name="original_type" Type="String" />
        <asp:Parameter Name="original_publication" Type="String" />
        <asp:Parameter Name="original_number" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="id" Type="String" />
        <asp:Parameter Name="name" Type="String" />
        <asp:Parameter Name="type" Type="String" />
        <asp:Parameter Name="publication" Type="String" />
        <asp:Parameter Name="number" Type="Int32" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="name" Type="String" />
        <asp:Parameter Name="type" Type="String" />
        <asp:Parameter Name="publication" Type="String" />
        <asp:Parameter Name="number" Type="Int32" />
        <asp:Parameter Name="original_id" Type="String" />
        <asp:Parameter Name="original_name" Type="String" />
        <asp:Parameter Name="original_type" Type="String" />
        <asp:Parameter Name="original_publication" Type="String" />
        <asp:Parameter Name="original_number" Type="Int32" />
    </UpdateParameters>
</asp:SqlDataSource>
</asp:Content>

