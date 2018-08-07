using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class profile : System.Web.UI.Page
{
    string constr = ConfigurationManager.ConnectionStrings["DB"].ConnectionString;
    string id="";
    protected void Page_Load(object sender, EventArgs e)
    {
        id = Session["user"].ToString();
        SqlConnection con = new SqlConnection(constr);
     
        con.Open();
        String query7 = " SELECT * from profiles where emailid = @id";
        SqlCommand cmd = new SqlCommand(query7, con);
        cmd.Parameters.Add(new SqlParameter("@id", id));
        SqlDataReader dr = cmd.ExecuteReader();

        dr.Read();
        {
            Label1.Text = dr[2].ToString() + "  " + dr[3].ToString();
            //pass = dr[1].ToString();
            //name = dr[2].ToString();
        }
        con.Close();
     
    }
}