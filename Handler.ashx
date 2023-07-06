<%@ WebHandler Language="C#" Class="Handler" %>

using System;
using System.Web;

public class Handler : IHttpHandler
{

    public void ProcessRequest(HttpContext context)
    {
        System.Data.SqlClient.SqlDataReader hrk = null;
        System.Data.SqlClient.SqlConnection conn = null;
        System.Data.SqlClient.SqlCommand selcmd = null;
        try
        {

            conn = new System.Data.SqlClient.SqlConnection
            (@"Data Source=(LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\Chessk8ing.mdf;Integrated Security=True");
            selcmd = new System.Data.SqlClient.SqlCommand("select Image from User_Registration where User_Id=" +
            context.Request.QueryString["imgid"], conn);
            conn.Open();
            hrk = selcmd.ExecuteReader();
            while (hrk.Read())
            {
                context.Response.ContentType = "image/jpg";
                context.Response.BinaryWrite((byte[])hrk["Image"]);
            }
            if (hrk != null)
                hrk.Close();

        }
        finally
        {
            if (conn != null)
                conn.Close();
        }
    }


    public bool IsReusable
    {
        get
        {
            return false;
        }
    }

}