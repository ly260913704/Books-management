using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
//学生借书信息
public partial class function_stu_bookinformation : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        //创建sql变量，在stu_book表中查询
        string sql = "SELECT * FROM [stu_book]";
        if (TextBox1.Text.Trim().Length != 0)
        {
            //查询种类等于TextBox1中输入的值
            sql = sql + "WHERE sid='" + TextBox1.Text + "'";
        }
        SqlDataSource1.SelectCommand = sql;
        SqlDataSource1.Select(DataSourceSelectArguments.Empty);
    }
}