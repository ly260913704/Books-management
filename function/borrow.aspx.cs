using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
//借书
public partial class function_borrow : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }

   
    

    protected void Button1_Click(object sender, EventArgs e)
    {
        
        DateTime currentTime = new DateTime();
        //currentTime的值为当前时间
        currentTime = DateTime.Now;
        //借出时间为当前时间,显示为年月日时分
        string borrowTime = currentTime.ToString("f");
        //还书时间为当前时间+30天
        string returnTime = currentTime.AddDays(30).ToString("f");
        //学生账号为TextBox1输入的值
        string sid = TextBox1.Text.Trim();
        //学生借书号为TextBox2输入的值
        string bid = TextBox2.Text.Trim();
        //借书编号为学生号+书号
        string sidbid = sid + bid;
       //链接数据库
        String bookAdminConnectionString = ConfigurationManager.ConnectionStrings["bookAdmin"].ConnectionString;
        SqlConnection connection = new SqlConnection(bookAdminConnectionString);
        connection.Open();//打开链接
        //创建变量sql，sql2，并赋值，sql更新book表中数量-1当id=书号，sql2插入stu_book表中数据
        String sql = String.Format("update [book] set number = number-1 where id ={0}", bid);
        String sql2 = String.Format("insert into [stu_book] values ({0},{1},{2},'{3}','{4}')", sidbid ,sid,bid ,borrowTime,returnTime);
        SqlCommand command = new SqlCommand(sql, connection);
        SqlCommand command2 = new SqlCommand(sql2, connection);
        command.ExecuteNonQuery();
        command2.ExecuteNonQuery();
        connection.Close();
        Response.Write("<script>alert('借书成功');</script>");

    }
}