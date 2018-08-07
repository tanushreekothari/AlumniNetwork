using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

public partial class _Default : System.Web.UI.Page
{
    //string constr = ConfigurationManager.ConnectionStrings["db"].ConnectionString;
    string constr = "Data Source=vegetablefirst.db.9933629.hostedresource.com; Initial Catalog=vegetablefirst; User ID=vegetablefirst; Password=##;";
    string username, email;
    
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            username = Session["name"].ToString();
            email = Session["user"].ToString();

        }
        catch (NullReferenceException)
        {
            string url = HttpContext.Current.Request.Url.AbsoluteUri + "#login_form";
            Response.Redirect(url);            
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        int id = 0;
        string sid;
        try
        {
            SqlConnection con1 = new SqlConnection(constr);
            DataSet ds = new DataSet();
            con1.Open();
            String query7 = "SELECT max(threadid) FROM thread";
            SqlCommand cmd1 = new SqlCommand(query7, con1);
            SqlDataReader dr = cmd1.ExecuteReader();
            dr.Read();
            {
                sid = dr[0].ToString();

            }
            id = Convert.ToInt32(sid);
            id = id + 1;
            con1.Close();
        }
        catch (InvalidOperationException)
        {
            id = 100001;
        }
        catch (FormatException)
        {
            id = 100001;
        }
        /*finally
        {
            con1.Close();
        }*/


        string subject = TextBox1.Text;

        string thread = TextBox2.Text.Replace("\n", "<br/>");
        string pd = DateTime.Now.ToString("dd/MMM/yyyy");
        string pt = DateTime.Now.ToString("HH:mm");
        int inserted1;

        SqlConnection con = new SqlConnection(constr);
        con.Open();
        string QryString = "insert into thread(threadid,emailid,username,sub,thread,postdate,posttime) values(@id,@emailid,@un,@sub,@thread,@pd,@pt)";
        SqlCommand cmd = new SqlCommand(QryString, con);
        cmd.Parameters.Add(new SqlParameter("@id", id));
        cmd.Parameters.Add(new SqlParameter("@un", username));
        cmd.Parameters.Add(new SqlParameter("@emailid", email));
        cmd.Parameters.Add(new SqlParameter("@sub", subject));
        cmd.Parameters.Add(new SqlParameter("@thread", thread));
        cmd.Parameters.Add(new SqlParameter("@pd", pd));
        cmd.Parameters.Add(new SqlParameter("@pt", pt));

        inserted1 = cmd.ExecuteNonQuery();
        con.Close();
         

    }
}