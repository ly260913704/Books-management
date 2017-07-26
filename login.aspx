<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 68px;
            width: 23px;
        }
        .auto-style3 {
            height: 68px;
            width: 125px;
        }
        .auto-style6 {
            height: 24px;
        }
        .auto-style7 {
            height: 25px;
        }
    </style>
</head>
<body>

    <form id="form1" runat="server">
    <div>
    
        <table class="auto-style1">
            <tr>
                <td class="auto-style3">
                    <asp:Image ID="Image1" runat="server" ImageUrl="~/picture/hand.png" />
                </td>
                <td class="auto-style2">
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Label ID="Label1" runat="server" Text="用户类型" Width="94px"></asp:Label>
                    <asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem Value="admin">管理员</asp:ListItem>
                        <asp:ListItem Value="student">学生</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            </table>
    
    </div>
        <table class="auto-style1">
            <tr>
                <td>登录</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="用户名："></asp:Label>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="不能为空！"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>&nbsp;&nbsp;
                    <asp:Label ID="Label3" runat="server" Text="密码："></asp:Label>
                    <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="不能为空！"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style7">
                    <asp:CheckBox ID="CheckBox1" runat="server" Text="下次记住我？" />
                </td>
            </tr>
            <tr>
                <td class="auto-style6">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="登录" Width="48px" />
                </td>
            </tr>
        </table>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" DataKeyNames="title">
            <Columns>
                <asp:BoundField DataField="words" HeaderText="公告" SortExpression="words" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:bookAdmin %>" SelectCommand="SELECT [title], [words] FROM [notice]"></asp:SqlDataSource>
    </form>
</body>
</html>
