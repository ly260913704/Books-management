using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
//管理员信息
public partial class function_information2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //如果Session.id不为空
        if (Session["id"] != null)
        {
            //Lable值为Session的id值
            Label2.Text = Session["id"].ToString();

        }
        //创建sql语句，在admUser表里查询与id相同的用户信息
        string sql = "SELECT * FROM [admUser]";
        sql = sql + "WHERE id='" + Label2.Text + "'";
        //sqlDatasource1.执行查询语句
        SqlDataSource1.SelectCommand = sql;
       
    }
}