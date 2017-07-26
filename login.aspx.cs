using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;

public partial class login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {//点击按钮，执行以下代码
        String id = this.TextBox1.Text; //TextBox1输入的为用户账号
        String code = this.TextBox2.Text;//TextBox2输入的为账号密码
        Session["id"] = TextBox1.Text.ToString().Trim();//设置Seesion中id的值为TextBox1输入的账号
        int num;
        //应用程序根目录下的文件中数据库语句
        String strConnectionString = ConfigurationManager.ConnectionStrings["bookAdmin"].ConnectionString;
        //建立一个数据库连接对象
        SqlConnection connection = new SqlConnection(strConnectionString);
        //对输入账户类型判断
        if (DropDownList1.SelectedItem.Text == "管理员")
        {//如果为管理员类型
            // 创建Sql语句，在admUser表中搜索与输入账户密码相同的数据
            String sql = String.Format("select id,code from [admUser] where id= {0} and code={1}", id, code);
            connection.Open();//开始连接
            //创建操作对象command,并执行
            SqlCommand command = new SqlCommand(sql, connection);
            //返回值赋值num
            num = Convert.ToInt32(command.ExecuteScalar());
            if (num > 0)//判断用户名密码是否正确
                Response.Redirect("function/adminHome.aspx");//正确进入管理员主页
            else
            {
                Response.Write("<script>alert('账号或密码错误！');</script>");//提示密码或账号错误
            }

        }
        else if (DropDownList1.SelectedItem.Text == "学生")
        {
            //学生登录，建立sql语句在stuUser表中搜索账号密码
            String sql = String.Format("select id,code from [stuUser] where id= {0} and code={1}", id, code);
            connection.Open();//打开连接
            //创建Sql执行语句，并执行
            SqlCommand command = new SqlCommand(sql, connection);
            //返回值num
            num = Convert.ToInt32(command.ExecuteScalar());
            if (num > 0)//账号密码正确
                //进入学生主页
                Response.Redirect("Home.aspx");

            {
                //否则提示账号或密码错误
                Response.Write("<script>alert('账号或密码错误！');</script>");
            }
           

        }
    }
}
