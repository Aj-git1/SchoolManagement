using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SD_School_Bareilly_UP
{
    public partial class AdminHome : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            

        }
        protected void Logout_Btn(object sender, EventArgs e)
        {
            Response.Redirect("Homepage.aspx");
        }
        protected void Teacherdetails_btn(object sender, EventArgs e)
        {
            Response.Redirect("Teachers.aspx");
        }
        protected void Studentdetails_btn(object sender, EventArgs e)
        {
            Response.Redirect("Students.aspx");
        }
        protected void Classesdetails_btn(object sender, EventArgs e)
        {
            Response.Redirect("Classes.aspx");

        }
    }
}