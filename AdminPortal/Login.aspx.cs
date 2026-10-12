using System;

namespace E_Commerce_Platform_for_Spices.AdminPortal
{
    public partial class Login : System.Web.UI.Page
    {
        protected void SignInButton_Click(object sender, EventArgs e)
        {
            Page.Validate();
            if (!Page.IsValid)
            {
                return;
            }

            // Prototype behavior: connect this to the project's real authentication before production use.
            Response.Redirect("Dashboard.aspx", false);
            Context.ApplicationInstance.CompleteRequest();
        }

        protected void ForgotPasswordButton_Click(object sender, EventArgs e)
        {
            FormMessage.Text = "Contact your portal administrator to reset your password.";
            FormMessage.CssClass = "form-message is-visible";
        }
    }
}
