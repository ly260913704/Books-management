using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
//添加图书
public partial class function_addBook : System.Web.UI.Page
{
    private SqlDataAdapter da;
    private void bind_gridview()
    {
        try
        {
            DataSet ds = new DataSet("book");
            da.Fill(ds);
            GridView1.DataSource = ds.Tables[0].DefaultView;
            GridView1.DataBind();
        }
        catch (SqlException ex) { Response.Write(ex.Message.ToString()); }
    }


    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            //链接数据库
            String strConnectionString = ConfigurationManager.ConnectionStrings["bookAdmin"].ConnectionString;
            //创建conn
            SqlConnection conn = new SqlConnection(strConnectionString);
            String strSql = "Select * From [book]";
            conn.Open();//链接数据
            da = new SqlDataAdapter(strSql, conn);
            SqlCommandBuilder cb = new SqlCommandBuilder(da);
            bind_gridview();
        }
        catch (SqlException ex)
        { Response.Write(ex.Message.ToString()); }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            DataSet dst = new DataSet();
            da.Fill(dst);
            DataRow dr = dst.Tables[0].NewRow();
            dr["id"] = this.TextBox1.Text;
            dr["name"] = this.TextBox2.Text;
            dr["type"] = this.TextBox3.Text;
            dr["publication"] = this.TextBox4.Text;
            dr["number"] = this.TextBox5.Text;
            dr["author"] = this.TextBox6.Text;
            dst.Tables[0].Rows.Add(dr);
            da.Update(dst); 
            bind_gridview();
        }
        catch (SqlException ex) { Response.Write(ex.Message.ToString()); }
    }
}