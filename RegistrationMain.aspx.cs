using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class RegistrationMain : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlDataSource5.Insert();
        SqlDataSource6.Insert();
        SqlDataSource7.Insert();
       // Response.Write("<script>alert('Your data are successfully submitted')</script>");
        //Response.Write("<script>window.location.href='RegistrationMain.aspx';</script>");
    }
 
}