using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace final_real_estate3.Users
{
    public partial class WebForm1 : System.Web.UI.Page
    {

        string strcon = ConfigurationManager.ConnectionStrings["conn"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            // log in button ito
            try
            {
                SqlConnection conn = new SqlConnection(strcon);
                if(conn.State == ConnectionState.Closed)
                {
                    conn.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT * FROM users WHERE email = '"+Email.Text.Trim()+"'" +
                    "AND password= '"+Password.Text.Trim()+"'", conn);
                SqlDataReader dataReader = cmd.ExecuteReader();
                if (dataReader.HasRows)
                {
                    while (dataReader.Read())
                    {
                        Session["Email"] = Email.Text.Trim();
                        Response.Redirect("Home.aspx");

                    }
                }
                else
                {
                    Response.Write("<script>alert('User not found'); </script>");
                }

            }catch(Exception ex)
            {

                Response.Write("<script>alert('"+ex.Message+"'); </script>");
            }
        }
    }
}