using System;
using System.Web.UI;
using System.Web.UI.HtmlControls;

namespace E_Commerce_Platform_for_Spices
{
    public partial class Payment : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Unauthenticated users cannot access checkout or order
            if (Session["UserId"] == null)
            {
                string returnUrl = Request.RawUrl;
                Response.Redirect("Login.aspx?returnUrl=" + Server.UrlEncode(returnUrl));
                return;
            }

            if (!IsPostBack)
            {
                if (Session["UserName"] != null)
                {
                    txtFullName.Text = Session["UserName"].ToString();
                }
                LoadProductFromSession();
            }
        }

        private void LoadProductFromSession()
        {
            // Get product info from session (set by ViewProduct page)
            string productName = Session["ProductName"]?.ToString() ?? "Rai Kuria (Mustard Split Seeds)";
            string productPrice = Session["ProductPrice"]?.ToString() ?? "499";
            string productImage = Session["ProductImage"]?.ToString() ?? "Images/Rai-Kuria.png";
            string productWeight = Session["ProductWeight"]?.ToString() ?? "1 kg";

            // Set order summary
            imgOrderProduct.Src = productImage;
            imgOrderProduct.Alt = productName;
            lblOrderName.InnerText = productName;
            lblOrderWeight.InnerText = "Weight: " + productWeight;

            decimal price = 0;
            decimal.TryParse(productPrice, out price);

            lblSubtotal.InnerText = "\u20B9" + price.ToString("F2");
            lblTotal.InnerText = "\u20B9" + price.ToString("F2"); // Free shipping
        }

        protected void btnPlaceOrder_Click(object sender, EventArgs e)
        {
            // Double check user is authenticated
            if (Session["UserId"] == null)
            {
                Response.Redirect("Login.aspx");
                return;
            }

            if (Page.IsValid)
            {
                // Store order details in session
                Session["OrderName"] = txtFullName.Text.Trim();
                Session["OrderMobile"] = txtMobile.Text.Trim();
                Session["OrderEmail"] = txtEmail.Text.Trim();
                Session["OrderAddress"] = txtAddress.Text.Trim();
                Session["OrderPaymentMethod"] = hdnPaymentMethod.Value;
                Session["OrderStatus"] = "Pending";
                Session["OrderDate"] = DateTime.Now.ToString("dd MMM yyyy, hh:mm tt");

                // Generate a simple order number
                Session["OrderNumber"] = "SRGU" + DateTime.Now.ToString("yyyyMMddHHmmss");

                // Redirect to ViewOrder page
                Response.Redirect("ViewOrder.aspx");
            }
        }
    }
}
