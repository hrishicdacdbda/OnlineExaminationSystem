using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;
public partial class UserProfile : System.Web.UI.Page
{
    string strConnString = ConfigurationManager.ConnectionStrings["ConnectionString2"].ConnectionString;
    string strConnStringA = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
    string str;
    SqlCommand com;
    string strA;
    SqlCommand comA;
   
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["username"] != null)
        {

            SqlConnection con = new SqlConnection(strConnString);
            con.Open();
            str = "select * from  User_Registration where User_Name='" + Session["username"].ToString() + "'";
            com = new SqlCommand(str, con);
            SqlDataReader reader = com.ExecuteReader();

            reader.Read();
            Label5.Text = reader["Age"].ToString();
            Label1.Text = reader["First_Name"].ToString();
            Label2.Text = reader["Middle_Name"].ToString();
            Label3.Text = reader["Last_Name"].ToString();
            Label4.Text = reader["Mobile_Number"].ToString();
            mail.Text = reader["Email"].ToString();
            Addresses.Text = reader["Address"].ToString();
            Image1.ImageUrl = "Handler.ashx?imgid=" + reader["User_Id"].ToString();
            // Label2.Text = "Login success ,Welcome " + Session["username"].ToString() + "";
            reader.Close();
            SqlDataReader reader1 = com.ExecuteReader();
            reader1.Read();
            Label6.Text = reader1["First_Name"].ToString();
            Label7.Text = reader1["Last_Name"].ToString();
            reader1.Close();

            str = "select * from  UserStates where UserName='" + Session["username"].ToString() + "'";
            com = new SqlCommand(str, con);
            SqlDataReader reader2 = com.ExecuteReader();
            reader2.Read();
            TextBox1.Text = reader2["Country"].ToString();
            TextBox2.Text = reader2["State"].ToString();
            TextBox3.Text = reader2["City"].ToString();
            reader2.Close();


         
           
           
           
          
           
        }
        else
        {
            Response.Redirect("Home.aspx");
            /*ScriptManager.RegisterStartupScript(this, this.GetType(),
"alert",
"alert('User details saved sucessfully');window.location ='Home.aspx';",
true);*/
        }
        SqlConnection conA = new SqlConnection(strConnStringA);
        conA.Open();
        strA = "select * from  Countries where id='" + TextBox1.Text + "'";
        comA = new SqlCommand(strA, conA);
        SqlDataReader reader3 = comA.ExecuteReader();
        reader3.Read();
        Label10.Text = reader3["name"].ToString();
        reader3.Close();

        strA = "select * from  states where id='" + TextBox2.Text + "'";
        comA = new SqlCommand(strA, conA);
        SqlDataReader reader4 = comA.ExecuteReader();
        reader4.Read();
        Label9.Text = reader4["name"].ToString();
        reader4.Close();

        strA = "select * from  cities where id='" + TextBox3.Text + "'";
        comA = new SqlCommand(strA, conA);
        SqlDataReader reader5 = comA.ExecuteReader();
        reader5.Read();
        Label8.Text = reader5["name"].ToString();
        reader5.Close();
       
    }
}