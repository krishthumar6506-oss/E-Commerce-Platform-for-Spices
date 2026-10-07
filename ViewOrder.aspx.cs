using System;
using System.Web.UI.HtmlControls;

namespace E_Commerce_Platform_for_Spices
{
    public partial class ViewOrder : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadOrderFromSession();
            }
        }

        private void LoadOrderFromSession()
        {
            // Order info
            string orderNumber = Session["OrderNumber"]?.ToString() ?? "SRGU20260101000000";
            string orderDate = Session["OrderDate"]?.ToString() ?? DateTime.Now.ToString("dd MMM yyyy, hh:mm tt");

            lblOrderNumber.InnerText = orderNumber;
            lblOrderDate.InnerText = "Placed on: " + orderDate;
            lblViewOrderDate.InnerText = orderDate;

            // Product info
            string productName = Session["ProductName"]?.ToString() ?? "Rai Kuria (Mustard Split Seeds)";
            string productPrice = Session["ProductPrice"]?.ToString() ?? "499";
            string productImage = Session["ProductImage"]?.ToString() ?? "Images/Rai-Kuria.png";
            string productWeight = Session["ProductWeight"]?.ToString() ?? "1 kg";

            imgViewOrderProduct.Src = productImage;
            imgViewOrderProduct.Alt = productName;
            lblViewOrderName.InnerText = productName;
            lblViewOrderWeight.InnerText = productWeight;

            decimal price = 0;
            decimal.TryParse(productPrice, out price);
            lblViewOrderPrice.InnerText = "\u20B9" + price.ToString("F2");
            lblViewSubtotal.InnerText = "\u20B9" + price.ToString("F2");
            lblViewTotal.InnerText = "\u20B9" + price.ToString("F2");

            // Shipping info
            lblViewName.InnerText = Session["OrderName"]?.ToString() ?? "—";
            lblViewMobile.InnerText = Session["OrderMobile"]?.ToString() ?? "—";
            lblViewEmail.InnerText = Session["OrderEmail"]?.ToString() ?? "—";
            lblViewAddress.InnerText = Session["OrderAddress"]?.ToString() ?? "—";

            // Payment method
            lblViewPayment.InnerText = Session["OrderPaymentMethod"]?.ToString() ?? "COD";
        }
    }
}
