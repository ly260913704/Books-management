<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="chgnotice.aspx.cs" Inherits="function_chgnotice" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="title" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="title" HeaderText="title" ReadOnly="True" SortExpression="title" />
            <asp:BoundField DataField="words" HeaderText="words" SortExpression="words" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:bookAdmin %>" DeleteCommand="DELETE FROM [notice] WHERE [title] = @original_title AND (([words] = @original_words) OR ([words] IS NULL AND @original_words IS NULL))" InsertCommand="INSERT INTO [notice] ([title], [words]) VALUES (@title, @words)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [notice]" UpdateCommand="UPDATE [notice] SET [words] = @words WHERE [title] = @original_title AND (([words] = @original_words) OR ([words] IS NULL AND @original_words IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_title" Type="String" />
            <asp:Parameter Name="original_words" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="title" Type="String" />
            <asp:Parameter Name="words" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="words" Type="String" />
            <asp:Parameter Name="original_title" Type="String" />
            <asp:Parameter Name="original_words" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>

