using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
//查找
public partial class function_lookup : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        //创建sql变量，在book表中查询
        string sql = "SELECT * FROM [book]";
        if (TextBox1.Text.Trim().Length != 0)
        {
            //查询种类等于TextBox1中输入的值
            sql =sql + "WHERE " + DropDownList1.SelectedValue + "='" + TextBox1.Text + "'";
        }
        SqlDataSource1.SelectCommand =sql;
        SqlDataSource1.Select(DataSourceSelectArguments.Empty);
    }
}