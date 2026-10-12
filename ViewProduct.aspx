<%@ Page Title="Product Details - Shree Ram Gruh Udhyog"
    Language="C#"
    MasterPageFile="~/Site1.Master"
    AutoEventWireup="true"
    CodeBehind="ViewProduct.aspx.cs"
    Inherits="E_Commerce_Platform_for_Spices.ViewProduct" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <link href="CSS/ViewProduct.css" rel="stylesheet" />

    <link rel="stylesheet"
          href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" />

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <!-- PRODUCT DETAIL SECTION -->
    <section class="product-detail-section">

        <div class="container">

            <!-- Breadcrumb -->
           

            <div class="product-detail-grid">

                <!-- LEFT: PRODUCT IMAGE -->
                <div class="product-detail-left">

                    <div class="product-img-card">

                        <span class="product-detail-badge"
                              id="lblBadge"
                              runat="server">
                            Premium Seeds
                        </span>

                        <img src="Images/Rai-Kuria.png"
                             alt="Rai Kuria Product"
                             class="product-detail-img"
                             id="imgProduct"
                             runat="server" />

                    </div>

                </div>

                <!-- RIGHT: PRODUCT INFORMATION -->
                <div class="product-detail-right">

                    <!-- Category -->
                    <span class="product-detail-category"
                          id="lblCategory"
                          runat="server">
                        PREMIUM SEEDS
                    </span>

                    <!-- Product Name -->
                    <h1 class="product-detail-name"
                        id="lblProductName"
                        runat="server">
                        Rai Kuria (Mustard Split Seeds)
                    </h1>

                    <!-- Tagline -->
                    <p class="product-detail-tagline"
                       id="lblTagline"
                       runat="server">
                        Superior Oil Content | Hand-Selected Quality
                    </p>

                    <!-- Description -->
                    <p class="product-detail-desc"
                       id="lblDesc"
                       runat="server">
                        Bold, aromatic split mustard seeds for tempering,
                        pickles, spice blends, and traditional Indian cooking.
                        Hygienically packed for lasting freshness and authentic
                        flavor. Premium-quality split mustard seeds with a
                        bold, pungent flavor and rich aroma.
                    </p>

                    <!-- PRODUCT ATTRIBUTES -->
                    <div class="product-attributes">

                        <!-- Source -->
                        <div class="product-attr-item">

                            <img src="Images/Logo.png"
                                 alt="Product Source"
                                 class="attr-icon" />

                            <div>
                                <span class="attr-label">SOURCE</span>

                                <span class="attr-val"
                                      id="lblSource"
                                      runat="server">
                                    Single Origin
                                </span>
                            </div>

                        </div>

                        <!-- Grade -->
                        <div class="product-attr-item">

                            <img src="Images/Logo.png"
                                 alt="Product Grade"
                                 class="attr-icon" />

                            <div>
                                <span class="attr-label">GRADE</span>

                                <span class="attr-val"
                                      id="lblGrade"
                                      runat="server">
                                    Premium A++
                                </span>
                            </div>

                        </div>

                    </div>

                    <!-- PRODUCT PRICE -->
                    <div class="product-price-row">

                        <span class="product-detail-price"
                              id="lblPrice"
                              runat="server">
                            &#8377;499
                        </span>

                        <span class="product-detail-per">
                            / 1 kg
                        </span>

                    </div>

                    <!-- BUY NOW BUTTON -->
                    <a href="Payment.aspx" class="btn-buy-now" id="btnBuyNow">

                        <i class="fa-solid fa-cart-shopping"></i>
                        Buy Now

                    </a>

                    <!-- TRUST BADGES -->
                    <div class="trust-badges">

                        <span class="trust-badge">
                            <i class="fa-solid fa-shield-halved"></i>
                            100% Pure
                        </span>

                        <span class="trust-badge">
                            <i class="fa-solid fa-truck-fast"></i>
                            Free Delivery
                        </span>

                        <span class="trust-badge">
                            <i class="fa-solid fa-rotate-left"></i>
                            Easy Returns
                        </span>

                    </div>

                </div>

            </div>

    </section>

</asp:Content>