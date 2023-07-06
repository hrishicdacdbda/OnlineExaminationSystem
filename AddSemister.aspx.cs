using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class AddSemester : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        ddlCategory.Items.Add(new ListItem("---Select---", "0"));
        if (!IsPostBack)
        {
            BindBrandsRptr();
        }
    }
    protected void btnAdd_Click(object sender, EventArgs e)
    {
       SqlDataSource2. Insert();
       Response.Write("<script>alert('Your data are successfully submitted')</script>");
       Response.Write("<script>window.location.href='AddSemister.aspx';</script>");
    }

    private void BindBrandsRptr()
    {
        String CS = ConfigurationManager.ConnectionStrings["your-database-connection-string"].ConnectionString;
        using (SqlConnection con = new SqlConnection(CS))
        {
            using (SqlCommand cmd = new SqlCommand("select A.*,B.* from Semister A inner join CourseDetail B on B.courseID=A.Course_ID", con))
            {
                using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                {
                    DataTable dtBrands = new DataTable();
                    sda.Fill(dtBrands);
                    rptrCategory.DataSource = dtBrands;
                    rptrCategory.DataBind();
                }

            }
        }
    }
}