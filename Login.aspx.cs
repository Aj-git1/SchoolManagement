using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SD_School_Bareilly_UP
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string cs = ConfigurationManager.ConnectionStrings["DB"].ConnectionString;
            string username = txtUsername.Text.Trim();
            string password = txtPassword.Text.Trim();
            string query = "SELECT Id FROM adminlog WHERE Username=@Username AND Password=@Password";

            using (SqlConnection conn = new SqlConnection(cs))
            {
                conn.Open();

                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@Username", username);
                    cmd.Parameters.AddWithValue("@Password", password);

                    object result = cmd.ExecuteScalar();

                    if (result != null)
                    {
                        int userId = (int)result;
                        Session["UserId"] = userId;
                        Response.Redirect("AdminHome.aspx");
                    }
                    else
                    {
                        Response.Write("Invalid username or password.");
                    }
                }
            }
        }
    }
}