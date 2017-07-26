using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
//我的借书信息
public partial class function_mystu_book : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["id"] != null)
        {
            Label2.Text = Session["id"].ToString();//用户名Lable2的值为id

        }
        //创建sql变量
        string sql = "SELECT * FROM [stu_book]";
        sql = sql + "WHERE sid='" + Label2.Text + "'";

        SqlDataSource1.SelectCommand = sql;
        SqlDataSource1.Select(DataSourceSelectArguments.Empty);
    }
}