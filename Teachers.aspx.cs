using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace SD_School_Bareilly_UP
{
    public partial class Teachers : System.Web.UI.Page
    {
        DataAccess da = new DataAccess();
        static String Id = "";

        protected void Logout_Btn2(object sender, EventArgs e)
        {
            Response.Redirect("Homepage.aspx");
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GridBind();
            }
        }

        private void GridBind()
        {
            DataTable dt = new DataTable();
            dt = da.ExecuteStoredProc("SPAdmin_Data");
            grdExistingData.DataSource = dt;
            grdExistingData.DataBind();
        }

        

        protected void grdExistingData_SelectedIndexChanged(object sender, EventArgs e)
        {
            Id = ((Label)grdExistingData.SelectedRow.FindControl("grdlblId")).Text.ToString();
            Name.Text = ((Label)grdExistingData.SelectedRow.FindControl("grdlblName")).Text.ToString();
            Qualification.Text = ((Label)grdExistingData.SelectedRow.FindControl("grdlblQualification")).Text.ToString();
            DOJ.Text = ((Label)grdExistingData.SelectedRow.FindControl("grdlblDOJ")).Text.ToString();
            Salary.Text = ((Label)grdExistingData.SelectedRow.FindControl("grdlblSalary")).Text.ToString();
            btnSave.Text = "Update";
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            //lblMsg.Text = "";
            //lblMsg.Visible = false;
            Hashtable ht = new Hashtable();
            ht.Add("@Id", Id);
            ht.Add("@Name", Name.Text);
            ht.Add("@Qualification", Qualification.Text);
            ht.Add("@DOJ", DOJ.Text);
            ht.Add("@Salary", Salary.Text);
            ht.Add("@Action", btnSave.Text);
            DataTable dt = da.ExecuteStoredProc("SPAdmin_Data", ht);
            grdExistingData.DataSource = dt;
            grdExistingData.DataBind();

            //lblMsg.Text = "Data Updated Successfulyy";
            //lblMsg.Visible = true;

            Id = Name.Text = Qualification.Text = Salary.Text = DOJ.Text = "";
            btnSave.Text = "Show Details";

        }

        protected void grdExistingData_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            Id = ((Label)grdExistingData.Rows[e.RowIndex].FindControl("grdlblId")).Text;
            //lblMsg.Text = "";
            //lblMsg.Visible = false;
            Hashtable ht = new Hashtable();
            ht.Add("@Id", Id);
            ht.Add("@Action", "Delete");
            DataTable dt = da.ExecuteStoredProc("SPAdmin_Data", ht);
            grdExistingData.DataSource = dt;
            grdExistingData.DataBind();

            //lblMsg.Text = "Data Deleted Successfulyy";
            //lblMsg.Visible = true;

        }

        protected void btnInsert_Click(object sender, EventArgs e)
        {
            Hashtable ht = new Hashtable();
            //ht.Add("@Id", Id);
            ht.Add("@Name", Name.Text);
            ht.Add("@Qualification", Qualification.Text);
            ht.Add("@DOJ", DOJ.Text);
            ht.Add("@Salary", Salary.Text);
            ht.Add("@Action", "insert");
            DataTable dt = da.ExecuteStoredProc("SPAdmin_Data", ht);
            grdExistingData.DataSource = dt;
            grdExistingData.DataBind();

            Id = Name.Text = Qualification.Text = Salary.Text = DOJ.Text = "";
            btnInsert.Text = "Save";
        }

        //protected void btnShowDetails_Click(object sender, EventArgs e)
        //{
        //    Hashtable ht = new Hashtable();
        //    //ht.Add("@Id", Id);
        //    ht.Add("@Name", Name.Text);
        //    ht.Add("@Qualification", Qualification.Text);
        //    ht.Add("@DOJ", DOJ.Text);
        //    ht.Add("@Salary", Salary.Text);
        //    ht.Add("@Action", "");
        //    DataTable dt = da.ExecuteStoredProc("SPAdmin_Data", ht);
        //    grdExistingData.DataSource = dt;
        //    grdExistingData.DataBind();

        //    Id = Name.Text = Qualification.Text = Salary.Text = DOJ.Text = "";
        //    btnShowDetails.Text = "Show Details";
        //}
    }

   
}