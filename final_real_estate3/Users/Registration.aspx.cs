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
    public partial class WebForm3 : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["conn"].ConnectionString;

        DateTime date01 = DateTime.Now;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //registration button
            if (check_member_exists())
            {
                Response.Write("<script>alert('User already registered'); </script>");
            }
            else
            {
                register_user();
            }

           
        }

        bool check_member_exists()
        {
            try
            {
                SqlConnection conn = new SqlConnection(strcon);
                if(conn.State == ConnectionState.Closed)
                {
                    conn.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT * FROM users WHERE email = '"+email.Text.Trim()+"'" +
                    "AND password = '"+password.Text.Trim()+"'",conn);
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

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "') </script>");
            }
            return false;
        }

        void register_user()
        {
            try
            {


                string owned = string.Empty;
                if (RadioOwned.Checked)
                {
                    owned = "Owned";
                }
                else
                {
                    owned = "Rented";
                }


                string gender = string.Empty;

                if (RadioButton1.Checked)
                {
                    gender = "Male";
                }
                else
                {
                    gender = "Female";
                }


                SqlConnection conn = new SqlConnection(strcon);
                if (conn.State == ConnectionState.Closed)
                {
                    conn.Open();
                }

                SqlCommand cmd = new SqlCommand("INSERT INTO users (first_name,middle_name,last_name,residence_address," +
                    "permanent_address,provincial_address,birthdate,age,civil_status,citizenship,name_of_spouse,name_of_father," +
                    "name_of_mother,number_of_dependents,owned,contact_number,gender,nature_of_work," +
                    "name_of_employer_business,work_address," +
                    "telephone,position_in_company,salary_per_month,other_regular_allowance,email,password," +
                    "date_time_created,date_time_updated) VALUES " +
                    "(@first_name,@middle_name,@last_name,@residence_address,@permanent_address,@provincial_address," +
                    "@birthdate,@age,@civil_status,@citizenship,@name_of_spouse,@name_of_father,@name_of_mother," +
                    "@number_of_dependents,@owned,@contact_number,@gender,@nature_of_work,@name_of_employer_business," +
                    "@work_address,@telephone,@position_in_company,@salary_per_month,@other_regular_allowance," +
                    "@email,@password,@date_time_created,@date_time_updated)", conn);

                cmd.Parameters.AddWithValue("@first_name", first_name.Text.Trim());
                cmd.Parameters.AddWithValue("@middle_name", middle_name.Text.Trim());
                cmd.Parameters.AddWithValue("@last_name", last_name.Text.Trim());
                cmd.Parameters.AddWithValue("@residence_address", residence_address.Text.Trim());
                cmd.Parameters.AddWithValue("@permanent_address", permanent_address.Text.Trim());
                cmd.Parameters.AddWithValue("@provincial_address", provincial_address.Text.Trim());
                cmd.Parameters.AddWithValue("@birthdate", birthdate.Text.Trim());
                cmd.Parameters.AddWithValue("@age", age.Text.Trim());
                cmd.Parameters.AddWithValue("@civil_status", DropDownList1.SelectedItem.Value.Trim());
                cmd.Parameters.AddWithValue("@citizenship", citizenship.Text.Trim());
                cmd.Parameters.AddWithValue("@name_of_spouse", name_of_spouse.Text.Trim());
                cmd.Parameters.AddWithValue("@name_of_father", name_of_father.Text.Trim());
                cmd.Parameters.AddWithValue("@name_of_mother", name_of_mother.Text.Trim());
                cmd.Parameters.AddWithValue("@number_of_dependents", number_of_dependents.Text.Trim());
                cmd.Parameters.AddWithValue("@owned", owned.Trim());
                cmd.Parameters.AddWithValue("@contact_number", contact_number.Text.Trim());
                cmd.Parameters.AddWithValue("@gender", gender.Trim());
                cmd.Parameters.AddWithValue("@nature_of_work", DropDownList2.SelectedItem.Value.Trim());
                cmd.Parameters.AddWithValue("@name_of_employer_business", name_of_employer_business.Text.Trim());
                cmd.Parameters.AddWithValue("@work_address", work_address.Text.Trim());
                cmd.Parameters.AddWithValue("@telephone", telephone.Text.Trim());
                cmd.Parameters.AddWithValue("@position_in_company", position_in_company.Text.Trim());
                cmd.Parameters.AddWithValue("@salary_per_month", salary_per_month.Text.Trim());
                cmd.Parameters.AddWithValue("@other_regular_allowance", other_regular_allowance.Text.Trim());
                cmd.Parameters.AddWithValue("@email", email.Text.Trim());
                cmd.Parameters.AddWithValue("@password", password.Text.Trim());
                cmd.Parameters.AddWithValue("@date_time_created", date01.ToString());
                cmd.Parameters.AddWithValue("@date_time_updated", date01.ToString());

                cmd.ExecuteNonQuery();
                conn.Close();
                Response.Write("<script>alert('Registration Successful'); </script>");
                // gagawa ng login page dito
                Response.Redirect("Login.aspx");
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "') </script>");
            }
        }


    }
}