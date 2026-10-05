using System;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace E_Commerce_Platform_for_Spices
{
    public partial class Contact : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }


        // =====================================================
        // MESSAGE VALIDATION
        // =====================================================

        protected void cvMessage_ServerValidate(
            object source,
            ServerValidateEventArgs args)
        {

        }


        // =====================================================
        // SEND MESSAGE
        // =====================================================

        protected void btnSendMessage_Click(object sender, EventArgs e)
        {
            string email = txtContactEmail.Text.Trim();
            string type = ddlInquiryType.Text.Trim();
            string message = txtMessage.Text.Trim();

            String connectionString = "Data Source=(localdb)\\ProjectModels;Initial Catalog=\"E-Commerce Platform For Spices\";Trusted_Connection=True;";
            SqlConnection connection = new SqlConnection(connectionString);
            String query = "INSERT INTO Inquiry VALUES ('" + email + "' , '" + type + "' , '" + message + "') ";
            SqlCommand cmd = new SqlCommand(query, connection);
            connection.Open();
            cmd.ExecuteNonQuery();
            connection.Close();
            Response.Write("<script>" + "alert('Your inquiry has been sent successfully.');" +
                "window.location='Contact.aspx';" + "</script>"
            );
        }
    }
}