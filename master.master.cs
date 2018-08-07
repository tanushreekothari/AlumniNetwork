using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class master : System.Web.UI.MasterPage
{
    //string constr = ConfigurationManager.ConnectionStrings["DB"].ConnectionString;
    string constr = "Data Source=vegetablefirst.db.9933629.hostedresource.com; Initial Catalog=vegetablefirst; User ID=vegetablefirst; Password=##;";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user"] != null)
        {

            Panel1.Visible = false;
            Panel2.Visible = true;
            
           LinkButton1.Text ="Hello, "+ (Session["name"].ToString()).ToUpper();

        }
        else
        {

        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        try
        {
            string id = login.Text;
            string password = password1.Text;
            string pass, name;

            SqlConnection con = new SqlConnection(constr);
            DataSet ds = new DataSet();
            con.Open();
            String query7 = " SELECT * from profiles where emailid = @id";
            SqlCommand cmd = new SqlCommand(query7, con);
            cmd.Parameters.Add(new SqlParameter("@id", id));
            SqlDataReader dr = cmd.ExecuteReader();

            dr.Read();
            {
                pass = dr[1].ToString();
                name = dr[2].ToString();
            }
            con.Close();
            if (pass == password)
            {
                Session["user"] = id;
                Session["name"] = name;
                Response.Redirect(Request.RawUrl);

            }
            else
            {
                password1.Text = "";
                Label12.Visible = true;
                Label12.Text = "*Password is incorrect";
            }

        }
        catch (InvalidOperationException)
        {
            login.Text = "";
            password1.Text = "";
            Label12.Visible = true;
            Label12.Text = "*Invalid User Id/Password";
        }

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        try
        {
            string first_name = firstname.Text;
            string last_name = lastname.Text;
            string emailid = email.Text;
            string mobile = mobileno.Text;
            string password = password2.Text;
            string city = "";
            string relation_st = "";
            string dob = "";
            string batch = "";
            string status = "";
            string photo = "";

            string query = "insert into profiles values('" + emailid + "','" + password + "','" + first_name + "','" + last_name + "','" + city + "','" + mobile + "','" + relation_st + "','" + dob + "','" + batch + "','" + status + "','" + photo + "')";
            int inserted1 = 0;

            SqlConnection con = new SqlConnection(constr);
            con.Open();
            SqlCommand cmd = new SqlCommand(query, con);
            inserted1 = cmd.ExecuteNonQuery();
            con.Close();
            Session["user"] = emailid;
            Session["name"] = first_name;

            Response.Redirect(Request.RawUrl);
        }
        catch (SqlException)
        {
            /*Label13.Text = "User is already Register";
            TextBox6.Text = "";
            TextBox7.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
            TextBox8.Text = "";*/
        }

    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Session.Clear();
        Response.Redirect("index.aspx");
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("profile.aspx");
    }
}
