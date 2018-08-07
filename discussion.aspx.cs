using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            string username = Session["name"].ToString();
            
            Response.Redirect("message1.aspx");
        }
        catch (NullReferenceException)
        {
            string url = HttpContext.Current.Request.Url.AbsoluteUri + "#login_form";
            Response.Redirect(url);
        }

        
    }
}