using System;
using System.Web.UI;

namespace E_Commerce_Platform_for_Spices
{
    public partial class Payment : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Default customer and product details
                txtFullName.Text = "";

                imgOrderProduct.Src = "Images/Rai-Kuria.png";
                imgOrderProduct.Alt = "Rai Kuria (Mustard Split Seeds)";

                lblOrderName.InnerText = "Rai Kuria (Mustard Split Seeds)";
                lblOrderWeight.InnerText = "Weight: 1 kg";

                lblSubtotal.InnerText = "\u20B9499.00";
                lblTotal.InnerText = "\u20B9499.00";

                hdnPaymentMethod.Value = "COD";
            }
        }

        protected void btnPlaceOrder_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                // Generate order details without using Session
                string orderNumber =
                    "SRGU" + DateTime.Now.ToString("yyyyMMddHHmmss");

                // Send order details to ViewOrder page through URL
                string url = "ViewOrder.aspx"
                    + "?orderNumber=" + Server.UrlEncode(orderNumber)
                    + "&name=" + Server.UrlEncode(txtFullName.Text.Trim())
                    + "&mobile=" + Server.UrlEncode(txtMobile.Text.Trim())
                    + "&email=" + Server.UrlEncode(txtEmail.Text.Trim())
                    + "&address=" + Server.UrlEncode(txtAddress.Text.Trim())
                    + "&payment=" + Server.UrlEncode(hdnPaymentMethod.Value);

                Response.Redirect(url, false);
                Context.ApplicationInstance.CompleteRequest();
            }
        }
    }
}