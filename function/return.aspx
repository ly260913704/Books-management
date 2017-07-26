<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="return.aspx.cs" Inherits="function_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="Label1" runat="server" Text="还书学生账号："></asp:Label>
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    <asp:Button ID="Button1" runat="server" Text="确定" OnClick="Button1_Click1" />
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="sidbid" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:CommandField ShowEditButton="True" />
            <asp:BoundField DataField="sidbid" HeaderText="编号" ReadOnly="True" SortExpression="sidbid" />
            <asp:BoundField DataField="sid" HeaderText="学生号" SortExpression="sid" />
            <asp:BoundField DataField="bid" HeaderText="书号" SortExpression="bid" />
            <asp:BoundField DataField="borrowTime" HeaderText="结束时间" SortExpression="borrowTime" />
            <asp:BoundField DataField="returnTime" HeaderText="还书时间" SortExpression="returnTime" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:bookAdmin %>" DeleteCommand="DELETE FROM [stu_book] WHERE [sidbid] = @original_sidbid AND [sid] = @original_sid AND [bid] = @original_bid AND (([borrowTime] = @original_borrowTime) OR ([borrowTime] IS NULL AND @original_borrowTime IS NULL)) AND (([returnTime] = @original_returnTime) OR ([returnTime] IS NULL AND @original_returnTime IS NULL))" InsertCommand="INSERT INTO [stu_book] ([sidbid], [sid], [bid], [borrowTime], [returnTime]) VALUES (@sidbid, @sid, @bid, @borrowTime, @returnTime)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [stu_book] WHERE ([sid] = @sid)" UpdateCommand="UPDATE [stu_book] SET [sid] = @sid, [bid] = @bid, [borrowTime] = @borrowTime, [returnTime] = @returnTime WHERE [sidbid] = @original_sidbid AND [sid] = @original_sid AND [bid] = @original_bid AND (([borrowTime] = @original_borrowTime) OR ([borrowTime] IS NULL AND @original_borrowTime IS NULL)) AND (([returnTime] = @original_returnTime) OR ([returnTime] IS NULL AND @original_returnTime IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_sidbid" Type="String" />
            <asp:Parameter Name="original_sid" Type="String" />
            <asp:Parameter Name="original_bid" Type="String" />
            <asp:Parameter Name="original_borrowTime" Type="String" />
            <asp:Parameter Name="original_returnTime" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="sidbid" Type="String" />
            <asp:Parameter Name="sid" Type="String" />
            <asp:Parameter Name="bid" Type="String" />
            <asp:Parameter Name="borrowTime" Type="String" />
            <asp:Parameter Name="returnTime" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="TextBox1" Name="sid" PropertyName="Text" Type="String" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="sid" Type="String" />
            <asp:Parameter Name="bid" Type="String" />
            <asp:Parameter Name="borrowTime" Type="String" />
            <asp:Parameter Name="returnTime" Type="String" />
            <asp:Parameter Name="original_sidbid" Type="String" />
            <asp:Parameter Name="original_sid" Type="String" />
            <asp:Parameter Name="original_bid" Type="String" />
            <asp:Parameter Name="original_borrowTime" Type="String" />
            <asp:Parameter Name="original_returnTime" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <br />
    </asp:Content>

