using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MCQSet : System.Web.UI.Page
{
  
    
    protected void Page_Load(object sender, EventArgs e)
    {
       
        if (!IsPostBack)
        {
            
          
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        ViewState["count"] = Convert.ToInt32(ViewState["count"]) + 1;
        QNO.Text = ViewState["count"].ToString();
        TextBox1.Text = ViewState["count"].ToString();

        SqlDataSource5.Insert();
        TBQuestion.Text = "";
        TBAnswer.Text = "";
        TBOption1.Text = "";
        TBOption2.Text = "";
        TBOption3.Text = "";
        TBOption4.Text = "";
      
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = MultiView1.ActiveViewIndex + 1;
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = MultiView1.ActiveViewIndex - 1;
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = MultiView1.ActiveViewIndex + 1;
    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = MultiView1.ActiveViewIndex - 1;
    }

    protected void setB_Click(object sender, EventArgs e)
    {
        Response.Write("<script>alert('Your data are successfully submitted')</script>");
        Response.Write("<script>window.location.href='AddSubject.aspx';</script>");
    }
}