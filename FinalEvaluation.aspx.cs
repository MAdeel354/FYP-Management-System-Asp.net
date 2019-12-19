using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using iTextSharp;
using iTextSharp.text.pdf;
using iTextSharp.text.html.simpleparser;
using iTextSharp.text;

namespace SE_Projec
{
    public partial class FinalEvaluation : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-3RBHRKA\SQLEXPRESS;Initial Catalog=SELAB;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (con.State == ConnectionState.Open)
            {
                con.Close();

            }
            con.Open();
        }

        protected void Evaluate_Click(object sender, EventArgs e)
        {
            
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "insert into finalEvaluation values('" +DropDownList1.SelectedValue+ "','" + TextBox1.Text + "','" + TextBox2.Text + "')";
            cmd.ExecuteNonQuery();
            DropDownList1.ClearSelection();
            TextBox1.Text = "";
            TextBox2.Text = "";
            display(); 
        }

        public void display()
        {
            //groupLoad();

            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            //cmd.CommandText = "select * from finalEvaluation";
            cmd.CommandText = "select * from finalEvaluation where Project = '" + DropDownList1.SelectedValue + "'";
            cmd.ExecuteNonQuery();
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();

        }

        protected void Print_Click(object sender, EventArgs e)
        {
         
                PdfPTable tbl = new PdfPTable(GridView1.HeaderRow.Cells.Count);

                foreach (TableCell tableCell in GridView1.HeaderRow.Cells)
                {
                    PdfPCell pdf = new PdfPCell(new iTextSharp.text.Phrase(tableCell.Text));
                    tbl.AddCell(pdf);
                }

                foreach (GridViewRow gridView in GridView1.Rows)
                {
                    foreach (TableCell tablecell in gridView.Cells)
                    {
                        PdfPCell cell = new PdfPCell(new iTextSharp.text.Phrase(tablecell.Text));
                        tbl.AddCell(cell);
                    }
                }
                Document pdfdocument = new Document(PageSize.A4, 10f, 10f, 10f, 10f);
                PdfWriter.GetInstance(pdfdocument, Response.OutputStream);
                pdfdocument.Open();
                pdfdocument.Add(tbl);
                pdfdocument.Close();

                Response.ContentType = "application/pdf";
                Response.AppendHeader("content-disposition", "attachment;filename = Report.pdf");
                Response.Write(pdfdocument);
                Response.Flush();
                Response.End();
        }

        
    }
}