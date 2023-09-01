using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace projAssignment
{
    public partial class Jobs : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadYears();
                LoadMonths();
                Page.MaintainScrollPositionOnPostBack = true;
            }

            
        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            txtForename.Text = "";
            txtSurname.Text = "";
            txtEmail.Text = "";
            txtDOB.Text = "";
            rblGender.ClearSelection();
            txtPhone.Text = "";
            txtPostcode.Text = "";
            ddlJobs.ClearSelection();
            lstJobs.ClearSelection();
            lstJobs.Items.Clear();
            FileUpload1.Attributes.Clear();
        }

        protected void btnApply_Click(object sender, EventArgs e)
        {
            if(ddlJobs.SelectedIndex >=0 && lstJobs.SelectedIndex > 0)
            {
                Response.Redirect("AppliedJob.aspx");
            }
            else
            {
                lblOutput.Text = "No Selected Value";
                
            }
        }

        

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            DateTime dt = Calendar1.SelectedDate;
            var oldEnough = DateTime.Now;
            var age = oldEnough.AddYears(-18);
            if (dt <= age)
            {
                txtDOB.Text = dt.ToString("dd/MM/yyyy");
            }
            
        }

        protected void rblGender_SelectedIndexChanged(object sender, EventArgs e)
        {
            
            int selectedValue = Convert.ToInt32(rblGender.SelectedValue);

          //  lblOutput.Text = rblGender.SelectedValue.ToString();
            if (selectedValue == 1)
            {
                this.imgGender.ImageUrl = "~/images/male.jpeg";
            }
            else if (selectedValue == 2)
            {
                this.imgGender.ImageUrl = "~/images/female.jpeg";
            }
            else if (selectedValue == 3)
            {
                this.imgGender.ImageUrl = "~/images/otherGender.jpeg";
            }
            else
            {
                this.imgGender.ImageUrl = "images/genderOption.jpeg";
            }
        }

        protected void ddlJobs_SelectedIndexChanged(object sender, EventArgs e)
        {
            lstJobs.Items.Clear();

            switch(ddlJobs.SelectedValue)
            {
                case "Manager Positions":
                    lstJobs.Items.Add("Jobs Available....");
                    lstJobs.Items.Add("Finance Manager");
                    break;
                case "Floor Positions":
                    lstJobs.Items.Add("Jobs Available....");
                    lstJobs.Items.Add("Cleaner");
                    lstJobs.Items.Add("Shelve Packing");
                    break;
                case "Store Room Positions":
                    lstJobs.Items.Add("Jobs Avilable....");
                    lstJobs.Items.Add("Fork Lift Driver");
                    lstJobs.Items.Add("Stock Counter");
                    break;
                default:
                    break;
            }
        }

        private void LoadMonths()
        {
            DataSet dsMonths = new DataSet();
            dsMonths.ReadXml(Server.MapPath("~/Data/Months.xml"));

            DropDownList2.DataTextField = "Name";
            DropDownList2.DataValueField = "Number";

            DropDownList2.DataSource = dsMonths;
            DropDownList2.DataBind();
        }

        private void LoadYears()
        {
            DataSet dsYears = new DataSet();
            dsYears.ReadXml(Server.MapPath("~/Data/Years.xml"));

            DropDownList1.DataTextField = "Number";
            DropDownList1.DataValueField = "Number";

            DropDownList1.DataSource = dsYears;
            DropDownList1.DataBind();
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            int year = Convert.ToInt16(DropDownList1.SelectedValue);
            int month = Convert.ToInt16(DropDownList2.SelectedValue);
            Calendar1.VisibleDate = new DateTime(year, month, 1);
            Calendar1.SelectedDate = new DateTime(year, month, 1);
        }

        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {
            int year = Convert.ToInt16(DropDownList1.SelectedValue);
            int month = Convert.ToInt16(DropDownList2.SelectedValue);
            Calendar1.VisibleDate = new DateTime(year, month, 1);
            Calendar1.SelectedDate = new DateTime(year, month, 1);
        }

        
    }
}