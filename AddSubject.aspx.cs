using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class AddSubject : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindBrandsRptr();
          //  bindSemister();
            // bindCourse();
        }
       
    }
    protected void btnAdd_Click(object sender, EventArgs e)
    {
        SqlDataSource3.Insert();
        Response.Write("<script>alert('Your data are successfully submitted')</script>");
        Response.Write("<script>window.location.href='AddSubject.aspx';</script>");
    }
   private void BindBrandsRptr()
    {
        String CS = ConfigurationManager.ConnectionStrings["your-database-connection-string"].ConnectionString;
        using (SqlConnection con = new SqlConnection(CS))
        {
            using (SqlCommand cmd = new SqlCommand("select A.*,B.*,C.* from Subjects A inner join CourseDetail B on B.courseID=A.Co_Id inner join Semister C on C.SemisterID=A.Sem_Id ", con))
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

   /* private void bindSemister()
    {
        String CS = ConfigurationManager.ConnectionStrings["your-database-connection-string"].ConnectionString;
        using (SqlConnection con = new SqlConnection(CS))
        {
            SqlCommand cmd = new SqlCommand("select A.*,B.* from Semister A inner join CourseDetail B on B.courseID=A.CourseID", con);
            con.Open();
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);

            if (dt.Rows.Count != 0)
            {
                ddlSemister.DataSource = dt;
                ddlSemister.DataTextField = "Semister";
                ddlSemister.DataValueField = "SemisterID";
                ddlSemister.DataBind();
                ddlSemister.Items.Insert(0, new ListItem("-Select-", "0"));
            }
        }
    } */

  /*  private void bindCourse()
    {
        String CS = ConfigurationManager.ConnectionStrings["your-database-connection-string"].ConnectionString;
        using (SqlConnection con = new SqlConnection(CS))
        {
            SqlCommand cmd = new SqlCommand("select * from CourseDetail", con);
            con.Open();
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);

            if (dt.Rows.Count != 0)
            {
                ddlCourse.DataSource = dt;
                ddlCourse.DataTextField = "courseName";
                ddlCourse.DataValueField = "courseID";
                ddlCourse.DataBind();
                ddlCourse.Items.Insert(0, new ListItem("-Select-", "0"));
            }
        }
    } */

    protected void ddlCourse_SelectedIndexChanged(object sender, EventArgs e)
    {
        Response.Write("<script>window.location.href='AddSubject.aspx';</script>");
    }
}