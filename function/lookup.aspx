<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="lookup.aspx.cs" Inherits="function_lookup" %>

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
<asp:Button ID="Button1" runat="server" Text="查询" OnClick="Button1_Click" style="width: 50px; height: 27px;" />
<br />
<br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1" AllowPaging="True">
        <Columns>
            <asp:BoundField DataField="id" HeaderText="书号" ReadOnly="True" SortExpression="id" />
            <asp:BoundField DataField="name" HeaderText="姓名" SortExpression="name" />
            <asp:BoundField DataField="type" HeaderText="种类" SortExpression="type" />
            <asp:BoundField DataField="publication" HeaderText="出版日期" SortExpression="publication" />
            <asp:BoundField DataField="number" HeaderText="数量" SortExpression="number" />
            <asp:BoundField DataField="author" HeaderText="作者" SortExpression="author" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:bookAdmin %>" SelectCommand="SELECT * FROM [book]"></asp:SqlDataSource>
</asp:Content>

