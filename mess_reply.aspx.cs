using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;

public partial class _Default : System.Web.UI.Page
{
    string id;
    string username;
    //string constr = ConfigurationManager.ConnectionStrings["DB"].ConnectionString;
    string constr = "Data Source=vegetablefirst.db.9933629.hostedresource.com; Initial Catalog=vegetablefirst; User ID=vegetablefirst; Password=##;";

    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            username = Session["name"].ToString();
            id = Request.QueryString["id"];

            SqlConnection con = new SqlConnection(constr);
            con.Open();
            String query7 = "SELECT * FROM thread where threadid=@id";
            SqlCommand cmd = new SqlCommand(query7, con);
            cmd.Parameters.Add(new SqlParameter("@id", id));
            SqlDataReader dr = cmd.ExecuteReader();
            dr.Read();
            {
                Label1.Text = dr[1].ToString();
                Label2.Text = dr[2].ToString();
                Label3.Text = dr[4].ToString() + "  " + dr[5].ToString();
                Label4.Text = dr[3].ToString();
            }
            con.Close();
        }
        catch (NullReferenceException)
        {
                  string url = HttpContext.Current.Request.Url.AbsoluteUri + "#login_form";
            Response.Redirect(url);            
        }

    }
    protected void Button3_Click(object sender, EventArgs e)
    {

    }
}