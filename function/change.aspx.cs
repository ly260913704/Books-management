using System;
using System.Web.UI;
//修改
public partial class function_change : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        //创建sql变量并赋值
        string sql = "SELECT * FROM [book]";
        if (TextBox1.Text.Trim().Length != 0)//判断TextBox1是否为空
        {
            //sql查询种类为TexBox1值
            sql = sql + "WHERE " + DropDownList1.SelectedValue + "='" + TextBox1.Text + "'";
        }
        SqlDataSource1.SelectCommand = sql;
        SqlDataSource1.Select(DataSourceSelectArguments.Empty);
    }



    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}