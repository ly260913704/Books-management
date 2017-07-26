using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.SqlClient;
using System.Configuration;
//还书
public partial class function_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }
    protected void Button1_Click1(object sender, EventArgs e)
    {
        //还书查询与TextBox1中值相同的内容
        string sql = "SELECT * FROM [stu_book]";
        sql = sql + "WHERE sid='" + TextBox1.Text + "'";
       
        SqlDataSource1.SelectCommand = sql;
        SqlDataSource1.Select(DataSourceSelectArguments.Empty);
    }
}