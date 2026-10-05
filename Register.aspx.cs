using System;
using System.Data.SqlClient;
using System.Web.UI;
using System.Xml.Linq;

namespace E_Commerce_Platform_for_Spices
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                string name = txtName.Text.Trim();
                string mobile = txtMobile.Text.Trim();
                string email = txtEmail.Text.Trim();
                string password = txtPassword.Text.Trim();


                // Database Connection
                string connectionString =
                    "Data Source=(localdb)\\ProjectModels;Initial Catalog=\"E-Commerce Platform For Spices\";Trusted_Connection=True;";

                SqlConnection connection = new SqlConnection(connectionString);
                string query = "INSERT INTO Users (FullName, Mobile, Email, Password) VALUES ('" + name + "', '" + mobile + "', '" + email + "', '" + password + "')";
                SqlCommand command = new SqlCommand(query, connection);
                connection.Open();
                command.ExecuteNonQuery();
                connection.Close();
                Response.Write("<script>alert('Registration Successful!');  window.location='Login.aspx';</script>");


                //string connectionString = "Data Source=(localdb)\\ProjectModels;Initial Catalog=UserManagement;Trusted_Connection=True;";
                //SqlConnection connection = new SqlConnection(connectionString);
                //string query = "insert into insert (Name,Branch,Sem,City,Gender) Values ('" + Name.Text + "', '" + Branch.Text + "', '" + Sem.Text + "', '" + City.Text + "', '" + Gender.Text + "')";
                //SqlCommand command = new SqlCommand(query, connection);
                //connection.Open();
                //command.ExecuteNonQuery();
                //connection.Close();

            }
        }
    }
}