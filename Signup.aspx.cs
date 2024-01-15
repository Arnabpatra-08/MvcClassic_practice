using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MvcClassic_practice
{
    public partial class Signup : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        //----------------------------------------------------------------------------------------

        [WebMethod]
        protected void newbtnSignup_Onclick(object sender, EventArgs e)
        {
            string fullName = txtUsername.Text.Trim();
            string email = txtEmail.Text.Trim();
            string mobile = txtMobile.Text.Trim();
            string password = txtPassword.Text.Trim();
            string conpassword = txtConpassword.Text.Trim();

            string connectionString = @"Data Source=DESKTOP-8AR6UBI\SQLEXPRESS;Initial Catalog=user;Integrated Security=True";

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                string query = "INSERT INTO PageLogin (Name, Email, Mobileno, Password, Confirmpassword) VALUES (@Name, @Email, @Mobileno, @Password, @Confirmpassword)";
                SqlCommand command = new SqlCommand(query, connection);
                command.Parameters.AddWithValue("@Name", fullName);
                command.Parameters.AddWithValue("@Email", email);
                command.Parameters.AddWithValue("@Mobileno", mobile);
                command.Parameters.AddWithValue("@Password", password);
                command.Parameters.AddWithValue("@Confirmpassword", conpassword);

                try
                {
                    connection.Open();
                    int rowsAffected = command.ExecuteNonQuery();

                    if (rowsAffected > 0)
                    {
                        // Successful signup
                        Response.Redirect("demo.aspx");
                    }
                    else
                    {
                        // Failed signup
                        Response.Redirect("ErrorPage.aspx");
                    }
                }
                catch (SqlException ex)
                {
                    // Handle SQL exceptions
                    Response.Redirect("ErrorPage.aspx?message=" + ex.Message);
                }
                finally
                {
                    connection.Close();
                }
            }
        }


    }
}