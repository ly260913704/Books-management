<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="mystu_book.aspx.cs" Inherits="function_mystu_book" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="Label1" runat="server" Text="用户名："></asp:Label>
<asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:bookAdmin %>" SelectCommand="SELECT * FROM [stu_book]"></asp:SqlDataSource>
<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="sidbid" DataSourceID="SqlDataSource1">
    <Columns>
        <asp:BoundField DataField="sidbid" HeaderText="编号" ReadOnly="True" SortExpression="sidbid" />
        <asp:BoundField DataField="sid" HeaderText="学生账号" SortExpression="sid" />
        <asp:BoundField DataField="bid" HeaderText="书号" SortExpression="bid" />
        <asp:BoundField DataField="borrowTime" HeaderText="借书时间" SortExpression="borrowTime" />
        <asp:BoundField DataField="returnTime" HeaderText="还书时间" SortExpression="returnTime" />
    </Columns>
</asp:GridView>
</asp:Content>

