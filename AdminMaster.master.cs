using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.Web.Security;

public partial class AdminMaster : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        String CS = ConfigurationManager.ConnectionStrings["ConnectionString2"].ConnectionString;
        using (SqlConnection con = new SqlConnection(CS))
        {
            SqlCommand cmd = new SqlCommand("select * from User_Registration where User_Name='" + exampleInputEmail2.Text + "' and Password='" + exampleInputPassword2.Text + "'", con);
            con.Open();
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);

            if (dt.Rows.Count != 0)
            {
                Session["username"] = exampleInputEmail2.Text;
                Response.Write("<script>alert('You are success-fully Loged-in')</script>");
                Response.Write("<script>window.location.href='UserProfile.aspx';</script>");
               // Response.Redirect("~/UserProfile.aspx");
            }
            else
            {
                Label1.Text = "Invalid user name or password";
            }
        }
    }
}

