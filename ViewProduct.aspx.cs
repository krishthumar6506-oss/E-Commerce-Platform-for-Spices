using System;
using System.Web.UI;
using System.Web.UI.HtmlControls;

namespace E_Commerce_Platform_for_Spices
{
    public partial class ViewProduct : System.Web.UI.Page
    {
        // Product data (in a real project this would come from database)
        private static readonly string[,] Products = new string[,]
        {
            // id, name, category, categoryLabel, image, price, desc, tagline, source, grade, weight, badge
            { "1", "Rai Kuria (Mustard Split Seeds)", "seeds", "PREMIUM SEEDS",
              "Images/Rai-Kuria.png", "499",
              "Bold, aromatic split mustard seeds for tempering, pickles, spice blends, and traditional Indian cooking. Hygienically packed for lasting freshness and authentic flavor.",
              "Superior Oil Content | Hand-Selected Selection", "Single Origin", "Premium A++", "1 kg ret of 500", "Premium Seeds" },
            { "2", "Kashmiri Chili Powder", "spices", "SPICES",
              "Images/Coriader.png", "349",
              "Vibrant red color with a mild heat. Ground from premium stemless Kashmiri chilies, this powder adds beautiful color without excessive heat.",
              "Vibrant Color | Mild Heat", "Kashmir Valley", "Premium A+", "500 g ret of 349", "Spices" },
            { "3", "Turmeric Powder (Haldi)", "spices", "SPICES",
              "Images/Dhana-Kuria.png", "299",
              "High curcumin content turmeric powder, sourced directly from trusted farmers. Rich golden color and strong aroma ideal for all Indian cooking.",
              "High Curcumin | Rich Aroma", "Single Origin", "Premium A++", "500 g ret of 299", "Spices" },
            { "4", "Methi Kuria", "seeds", "PREMIUM SEEDS",
              "Images/Methi-Kuria.png", "399",
              "Premium fenugreek splits with a slightly bitter, rich aroma. Ideal for tadka, spice blends, and medicinal use. Hygienically processed and packed.",
              "Bitter-Rich Aroma | Medicinal Grade", "Single Origin", "Premium A++", "1 kg ret of 399", "Premium Seeds" },
            { "5", "Dhana Kuria", "seeds", "PREMIUM SEEDS",
              "Images/Dhana-Kuria.png", "279",
              "Aromatic split coriander seeds bursting with citrusy fragrance. Perfect for seasoning, pickling, and culinary use.",
              "Citrusy Fragrance | Perfect for Seasoning", "Single Origin", "Premium A+", "1 kg ret of 279", "Premium Seeds" },
            { "6", "Dhana Dal", "pulses", "PULSES",
              "Images/Dhana-Dal.png", "249",
              "Crispy roasted coriander dal, a beloved snack and mouth freshener across Gujarat. Made with traditional roasting methods for superior taste.",
              "Crispy Roasted | Traditional Recipe", "Gujarat Farms", "Standard Grade", "500 g ret of 249", "Pulses" },
            { "7", "Fennel Seeds (Saunf)", "seeds", "PREMIUM SEEDS",
              "Images/Fennel-Seeds.png", "329",
              "Sweet, anise-flavoured fennel seeds. Excellent for digestion, breath freshening, and culinary use in curries, breads, and teas.",
              "Sweet Anise Flavor | Digestive", "Single Origin", "Premium A+", "500 g ret of 329", "Premium Seeds" },
            { "8", "Coriander Powder", "masala", "MASALA",
              "Images/Coriader.png", "219",
              "Freshly milled coriander powder with warm, citrusy notes. A kitchen essential for curries, marinades, and spice rubs.",
              "Warm Citrusy | Kitchen Essential", "Single Origin", "Premium A+", "500 g ret of 219", "Masala" },
            { "9", "Methi (Fenugreek Seeds)", "seeds", "PREMIUM SEEDS",
              "Images/Methi-Kuria.png", "289",
              "Whole fenugreek seeds, rich in nutrients and fibre. Essential for pickles, curry bases, ayurvedic preparations, and hair care.",
              "Nutrient-Rich | Ayurvedic Grade", "Single Origin", "Premium A++", "500 g ret of 289", "Premium Seeds" },
        };

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string idParam = Request.QueryString["id"];
                int productId = 1;

                if (!string.IsNullOrEmpty(idParam) && int.TryParse(idParam, out int parsedId)
                    && parsedId >= 1 && parsedId <= Products.GetLength(0))
                {
                    productId = parsedId;
                }

                int idx = productId - 1;

                // Set page title
                Page.Title = Products[idx, 1] + " - Shree Ram Gruh Udhyog";

                // Set server controls
                lblBreadcrumbName.InnerText = Products[idx, 1];
                lblBadge.InnerText = Products[idx, 11];
                imgProduct.Src = Products[idx, 4];
                imgProduct.Alt = Products[idx, 1];
                lblWeightBox.Text = Products[idx, 10];
                lblCategory.InnerText = Products[idx, 3];
                lblProductName.InnerText = Products[idx, 1];
                lblTagline.InnerText = Products[idx, 7];
                lblDesc.InnerText = Products[idx, 6];
                lblSource.InnerText = Products[idx, 8];
                lblGrade.InnerText = Products[idx, 9];
                lblPrice.InnerText = "\u20B9" + Products[idx, 5];

                // Store in session for payment page
                Session["ProductId"] = productId;
                Session["ProductName"] = Products[idx, 1];
                Session["ProductPrice"] = Products[idx, 5];
                Session["ProductImage"] = Products[idx, 4];
                Session["ProductWeight"] = Products[idx, 10];
            }
        }
    }
}
