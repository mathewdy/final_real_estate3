using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace final_real_estate3.Admin
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["conn"].ConnectionString;
        DateTime date_time = DateTime.Now;
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        //check if unit exists

        bool check_unit_if_exists()
        {

            try
            {


                SqlConnection conn = new SqlConnection(strcon);
                if(conn.State == ConnectionState.Closed)
                {
                    conn.Open();
                }


                //to be continued

                SqlCommand cmd = new SqlCommand("SELECT * FROM units WHERE model='"+model.Text.Trim()+"'" +
                    " AND type='"+type.Text.Trim()+"'", conn);
                SqlDataAdapter dataAdapter = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                dataAdapter.Fill(dt);

                if(dt.Rows.Count >= 1)
                {
                    return true;
                }
                else
                {
                    return false;
                }



            }catch(Exception ex)
            {
                Response.Write("<script>alert('"+ex.Message+"') </script>");
            }

            return false;
        }


        void add_unit()
        {
            //add data for unit

            try
            {
                SqlConnection conn = new SqlConnection(strcon);
                if (conn.State == ConnectionState.Closed)
                {
                    conn.Open();
                }

                if (FileUpload1.HasFile)
                {
                    string filename = FileUpload1.PostedFile.FileName;
                    string filepath = "Images/" + FileUpload1.FileName;
                    FileUpload1.PostedFile.SaveAs(Server.MapPath("~/Images/") + filename);


                    SqlCommand cmd = new SqlCommand("INSERT INTO units VALUES ('" + model.Text.Trim() + "', '" + type.Text.Trim() + "'," +
                        " '" + total_price_contract.Text.Trim() + "', '" + reservation_fee.Text.Trim() + "', '" + net_equity.Text.Trim() + "', " +
                        "'" + option_equity.Text.Trim() + "', " +
                        "'" + bank_financing.Text.Trim() + "', '" + filepath + "', '" + date_time.ToString() + "', '" + date_time.ToString() + "')", conn);

                    cmd.ExecuteNonQuery();
                    conn.Close();
                    Response.Write("<script>alert('Data inserted'); </script>");
                    Response.Write("<script>window.location.href='Units.aspx' </script>");
                }

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "') </script>");
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            //gagawa naman ako dito ng validation

            if (check_unit_if_exists())
            {
                Response.Write("<script>alert('Unit already added') </script>");
            }
            else {
                add_unit();
            }
           
        }
    }
}