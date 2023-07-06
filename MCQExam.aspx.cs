using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
public partial class MCQExam : System.Web.UI.Page
{
    DataTable dt = new DataTable();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindGrid();
        }
    }
    public void BindGrid()
    {
        String CS = ConfigurationManager.ConnectionStrings["your-database-connection-string"].ConnectionString;
        using (SqlConnection con = new SqlConnection(CS))
        {
            using (SqlCommand cmd = new SqlCommand("select * from mcqQS", con))
            {
                using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                {
                    DataTable dt = new DataTable();
                    sda.Fill(dt);
                    grdquestions.DataSource = dt;
                    grdquestions.DataBind();
                }

            }
        }
    }
    protected void grdquestions_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            RadioButtonList rdlstOptions = (RadioButtonList)e.Row.FindControl("rdlstOptions");
            HiddenField hdnquestionId = (HiddenField)e.Row.FindControl("hdnquestionId");
            if (rdlstOptions != null && hdnquestionId != null)
            {
                DataRow[] result = dt.Select("id=" + (Convert.ToInt32(hdnquestionId.Value)));
                DataView view = new DataView();
                view.Table = dt;
                view.RowFilter = "id=" + (Convert.ToInt32(hdnquestionId.Value));
                if (view.Table.Rows.Count > 0)
                {
                    DataTable dt1 = new DataTable();
                    dt1 = view.ToTable();
                }
            }
        }
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlDataSource1.Insert();
        Response.Write("<script>alert('Your data are successfully submitted')</script>");
        Response.Write("<script>window.location.href='AddExam.aspx';</script>");
    }
}