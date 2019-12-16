using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
namespace SE_Projec
{
    public partial class Student : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-3RBHRKA\SQLEXPRESS;Initial Catalog=SELAB;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (con.State == ConnectionState.Open)
            {
                con.Close();

            }
            con.Open();
            display();
        }

        protected void Upload_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            //cmd.CommandText = "insert into student(firstName,description) values('" + TextBox1.Text + "','" + TextBox4.Text + "')";

            cmd.CommandText = "insert into student values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text+ "','" + TextBox4.Text + "','" + TextBox5.Text + "')";
            cmd.ExecuteNonQuery();
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
            display();
        }

        protected void Update_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "update student SET Name='" + TextBox1.Text + "',DOB='" + TextBox3.Text + "' where CNIC = '" + TextBox4.Text + "'";

            // cmd.CommandText = "insert into student values('"+TextBox1.Text+"','"+TextBox2.Text+"','"+Convert.ToInt32(TextBox3.Text)+"','"+TextBox4.Text+"')";
            cmd.ExecuteNonQuery();
            display();
        }

        protected void Delete_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "delete from student where CNIC = '" + TextBox4.Text + "'";

            // cmd.CommandText = "insert into student values('"+TextBox1.Text+"','"+TextBox2.Text+"','"+Convert.ToInt32(TextBox3.Text)+"','"+TextBox4.Text+"')";
            cmd.ExecuteNonQuery();
            display();
        }
        public void display()
        {
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "select * from student";
            cmd.ExecuteNonQuery();
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();

        }

        protected void Next_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Advisor.aspx");
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}