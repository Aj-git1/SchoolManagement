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
    public partial class Classes : System.Web.UI.Page
    {
        DataAccess da = new DataAccess();
        static String Id = "";

        protected void Logout_Btn4(object sender, EventArgs e)
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
            dt = da.ExecuteStoredProc("SPClass_Data");
            grdExistingData.DataSource = dt;
            grdExistingData.DataBind();
        }



        protected void grdExistingData_SelectedIndexChanged(object sender, EventArgs e)
        {
            Id = ((Label)grdExistingData.SelectedRow.FindControl("grdlblId")).Text.ToString();
            Class.Text = ((Label)grdExistingData.SelectedRow.FindControl("grdlblclass")).Text.ToString();
            Fees.Text = ((Label)grdExistingData.SelectedRow.FindControl("grdlblfees")).Text.ToString();

            btnSave.Text = "Update";
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            //lblMsg.Text = "";
            //lblMsg.Visible = false;
            Hashtable ht = new Hashtable();
            ht.Add("@Id", Id);
            ht.Add("@Class", Class.Text);
            ht.Add("@Fees", Fees.Text);
            //ht.Add("@DOJ", DOJ.Text);
            //ht.Add("@Salary", Salary.Text);
            ht.Add("@Action", btnSave.Text);
            DataTable dt = da.ExecuteStoredProc("SPClass_Data", ht);
            grdExistingData.DataSource = dt;
            grdExistingData.DataBind();

            //lblMsg.Text = "Data Updated Successfulyy";
            //lblMsg.Visible = true;

            Id = Class.Text = Fees.Text = "";
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
            DataTable dt = da.ExecuteStoredProc("SPClass_Data", ht);
            grdExistingData.DataSource = dt;
            grdExistingData.DataBind();

            //lblMsg.Text = "Data Deleted Successfulyy";
            //lblMsg.Visible = true;

        }

        protected void btnInsert_Click(object sender, EventArgs e)
        {
            Hashtable ht = new Hashtable();
            //ht.Add("@Id", Id);
            ht.Add("@Class", Class.Text);
            ht.Add("@Fees", Fees.Text);
            //ht.Add("@DOJ", DOJ.Text);
            //ht.Add("@Salary", Salary.Text);
            ht.Add("@Action", "insert");
            DataTable dt = da.ExecuteStoredProc("SPClass_Data", ht);
            grdExistingData.DataSource = dt;
            grdExistingData.DataBind();

            Id = Class.Text = Fees.Text = "";
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

        public void condition1()
        {
            //txtcondtion.Text = "[" + "Abc" + "," + "HEllo" + "]";
            string str = "\"Hello\"";
            txtcondtion.Text = str;
        }
    }
}