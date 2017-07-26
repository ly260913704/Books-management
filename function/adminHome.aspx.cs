using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
//管理员主页
public partial class function_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["id"] != null)//判断id是否为空
        {
            //Label1的值为id
            Label1.Text = Session["id"].ToString();

        }

      
    }
}