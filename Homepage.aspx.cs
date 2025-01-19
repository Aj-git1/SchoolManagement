using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SD_School_Bareilly_UP
{
    public partial class Homepage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
        protected void Login_btn(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }

    }
}