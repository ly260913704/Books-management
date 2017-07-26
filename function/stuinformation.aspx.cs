using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
//学生个人信息
public partial class function_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["id"] != null)//判断id是否为空
        {
            //Label2的值为id的值
            Label2.Text = Session["id"].ToString();

        }
        //创建sql变量
        string sql = "SELECT * FROM [stuUser]";
        sql = sql + "WHERE id='" + Label2.Text + "'";
        //sqlDataSource1执行sql语句
        SqlDataSource1.SelectCommand = sql;
       
    }

}