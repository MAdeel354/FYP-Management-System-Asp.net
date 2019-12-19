using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SE_Projec
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Student_Click(object sender, EventArgs e)
        {

            Response.Redirect("~/Student.aspx");
        }

        protected void Advisor_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Advisor.aspx");
        }

        protected void Project_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Projects.aspx");
        }

        protected void Group_assign_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Project_Assign.aspx");
        }

        protected void evaluation_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/FinalEvaluation.aspx");
        }
    }
}