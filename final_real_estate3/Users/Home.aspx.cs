using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace final_real_estate3.Users
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["conn"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["Email"] != null)
            {
                Email.Text = Session["Email"].ToString();
            }
            else
            {
                Response.Redirect("Login.aspx");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session.RemoveAll();
            Response.Redirect("Login.aspx");
        }
    }
}