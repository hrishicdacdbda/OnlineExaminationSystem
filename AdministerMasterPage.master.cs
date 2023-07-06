using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdministerMasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["AdminName"] != null)
        {
        }
        else
        {
            Response.Redirect("~/Login2.aspx");

        }

    }
    protected void BtAdminLogout_Click(object sender, EventArgs e)
    {
        Session["AdminName"] = null;
        Response.Redirect("~/Home.aspx");
    }
}
