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
    public partial class Project_Assign : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-3RBHRKA\SQLEXPRESS;Initial Catalog=SELAB;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (con.State == ConnectionState.Open)
            {
                con.Close();

            }
            con.Open();
            //display();
        }

        protected void Assign_Click(object sender, EventArgs e)
        {
            string student = "";
            string advisor = "";
            //string project = "";
            for (int i = 0; i < CheckBoxList1.Items.Count; i++)
            {
                if (CheckBoxList1.Items[i].Selected)
                {
                    if (student == "")
                    {
                        student = CheckBoxList1.Items[i].Text;
                    }
                    else
                    {
                        student += "," + CheckBoxList1.Items[i].Text;
                    }
                }

            }

            for (int i = 0; i < CheckBoxList2.Items.Count; i++)
            {
                if (CheckBoxList2.Items[i].Selected)
                {

                    if (advisor == "")
                    {
                        advisor = CheckBoxList2.Items[i].Text;
                    }
                    else
                    {
                        advisor += "," + CheckBoxList2.Items[i].Text;
                    }
                }
            }

           /* for (int i = 0; i < RadioButtonList1.Items.Counts; i++)
            {
                if (RadioButtonList1.Items[i].Selected)
                {
                    if (project == "")
                    {
                        project = RadioButtonList1.Items[i].Text;
                    }
                    else
                    {
                        project += "," + RadioButtonList1.Items[i].Text;
                    }
                }
            }*/
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "insert into deliever values('" + student + "','" + advisor + "','" + RadioButtonList1.SelectedValue + "')";
            cmd.ExecuteNonQuery();
            RadioButtonList1.ClearSelection();
            display();

        }
        public void display()
        {
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "select * from deliever";
            cmd.ExecuteNonQuery();
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();

        }

        protected void Next_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/FinalEvaluation.aspx");
        }

        protected void CheckBoxList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Back_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/FinalEvaluation.aspx");
        }
    }
}