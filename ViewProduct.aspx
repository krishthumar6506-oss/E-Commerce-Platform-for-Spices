<%@ Page Title="Product Details - Shree Ram Gruh Udhyog"
    Language="C#"
    MasterPageFile="~/Site1.Master"
    AutoEventWireup="true"
    CodeBehind="ViewProduct.aspx.cs"
    Inherits="E_Commerce_Platform_for_Spices.ViewProduct" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="CSS/ViewProduct.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <!-- ===== PRODUCT DETAIL SECTION ===== -->
    <section class="product-detail-section">
        <div class="container">

            <!-- Breadcrumb -->
            <nav class="product-breadcrumb" aria-label="breadcrumb">
                <a href="Home.aspx"><i class="fa-solid fa-house"></i> Home</a>
                <span class="bc-sep"><i class="fa-solid fa-chevron-right"></i></span>
                <a href="Products.aspx">Products</a>
                <span class="bc-sep"><i class="fa-solid fa-chevron-right"></i></span>
                <span id="lblBreadcrumbName" runat="server">Product</span>
            </nav>

            <div class="product-detail-grid">

                <!-- LEFT: IMAGE -->
                <div class="product-detail-left">
                    <div class="product-img-card">
                        <span class="product-detail-badge" id="lblBadge" runat="server">Premium Seeds</span>
                        <img src="Images/Rai-Kuria.png" alt="Product Image" class="product-detail-img" id="imgProduct" runat="server" />
                    </div>
                    <div class="product-weight-box">
                        <asp:Label ID="lblWeightBox" runat="server" Text="1 kg ret of 500"></asp:Label>
                    </div>
                </div>

                <!-- RIGHT: INFO -->
                <div class="product-detail-right">
                    <span class="product-detail-category" id="lblCategory" runat="server">PREMIUM SEEDS</span>
                    <h1 class="product-detail-name" id="lblProductName" runat="server">Rai Kuria (Mustard Split Seeds)</h1>
                    <p class="product-detail-tagline" id="lblTagline" runat="server">Superior Oil Content &nbsp;|&nbsp; Hand-Selected Selection</p>

                    <p class="product-detail-desc" id="lblDesc" runat="server">
                        Bold, aromatic split mustard seeds for tempering, pickles, spice blends, and traditional Indian cooking.
                        Hygienically packed for lasting freshness and authentic flavor. Premium-quality split mustard seeds
                        with a bold, pungent flavor and rich aroma.
                    </p>

                    <!-- Attributes -->
                    <div class="product-attributes">
                        <div class="product-attr-item">
                            <img src="Images/Logo.png" alt="Source" class="attr-icon" />
                            <div>
                                <span class="attr-label">SOURCE</span>
                                <span class="attr-val" id="lblSource" runat="server">Single Origin</span>
                            </div>
                        </div>
                        <div class="product-attr-item">
                            <img src="Images/Logo.png" alt="Grade" class="attr-icon" />
                            <div>
                                <span class="attr-label">GRADE</span>
                                <span class="attr-val" id="lblGrade" runat="server">Premium A++</span>
                            </div>
                        </div>
                    </div>

                    <!-- Price -->
                    <div class="product-price-row">
                        <span class="product-detail-price" id="lblPrice" runat="server">&#x20B9;499</span>
                        <span class="product-detail-per">/ 1 kg</span>
                    </div>

                    <!-- Buy Button -->
                    <% if (Session["UserId"] != null) { %>
                        <a href="#" class="btn-buy-now" id="btnBuyNow" onclick="handleBuyNow(); return false;">
                            <i class="fa-solid fa-cart-shopping"></i> Buy Now
                        </a>
                    <% } else { %>
                        <div class="login-to-buy-wrap">
                            <a href='<%= "Login.aspx?returnUrl=" + Server.UrlEncode(Request.RawUrl) %>' class="btn-buy-now btn-login-required" id="btnLoginToBuy">
                                <i class="fa-solid fa-lock"></i> Login to Purchase
                            </a>
                            <span class="login-hint-text">
                                <i class="fa-solid fa-shield-halved"></i> You must be logged in to order this product
                            </span>
                        </div>
                    <% } %>

                    <!-- Trust Badges -->
                    <div class="trust-badges">
                        <span class="trust-badge"><i class="fa-solid fa-shield-halved"></i> 100% Pure</span>
                        <span class="trust-badge"><i class="fa-solid fa-truck-fast"></i> Free Delivery</span>
                        <span class="trust-badge"><i class="fa-solid fa-rotate-left"></i> Easy Returns</span>
                    </div>
                </div>
            </div>

            <!-- ===== RELATED PRODUCTS ===== -->
            <div class="related-section">
                <h2 class="related-title">You May Also Like</h2>
                <div class="related-grid">
                    <a href="ViewProduct.aspx?id=4" class="related-card" id="relMethi">
                        <img src="Images/Methi-Kuria.png" alt="Methi Kuria" />
                        <span>Methi Kuria</span>
                    </a>
                    <a href="ViewProduct.aspx?id=5" class="related-card" id="relDhana">
                        <img src="Images/Dhana-Kuria.png" alt="Dhana Kuria" />
                        <span>Dhana Kuria</span>
                    </a>
                    <a href="ViewProduct.aspx?id=6" class="related-card" id="relDhanaDal">
                        <img src="Images/Dhana-Dal.png" alt="Dhana Dal" />
                        <span>Dhana Dal</span>
                    </a>
                    <a href="ViewProduct.aspx?id=7" class="related-card" id="relFennel">
                        <img src="Images/Fennel-Seeds.png" alt="Fennel Seeds" />
                        <span>Fennel Seeds</span>
                    </a>
                </div>
            </div>

        </div>
    </section>

    <script>
        function handleBuyNow() {
            var isLoggedIn = <%= (Session["UserId"] != null).ToString().ToLower() %>;
            var productId = getUrlParam('id') || '1';
            if (!isLoggedIn) {
                window.location.href = 'Login.aspx?returnUrl=' + encodeURIComponent('Payment.aspx?id=' + productId);
                return;
            }
            window.location.href = 'Payment.aspx?id=' + productId;
        }

        function getUrlParam(name) {
            var results = new RegExp('[?&]' + name + '=([^&#]*)').exec(window.location.href);
            return results ? decodeURIComponent(results[1]) : null;
        }
    </script>

</asp:Content>
