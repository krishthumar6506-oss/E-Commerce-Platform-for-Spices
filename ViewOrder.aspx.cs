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

            // Payment method
            lblViewPayment.InnerText = Session["OrderPaymentMethod"]?.ToString() ?? "COD";
        }
    }
}
