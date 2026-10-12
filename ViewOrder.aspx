<%@ Page Title="My Order - Shree Ram Gruh Udhyog"
    Language="C#"
    MasterPageFile="~/Site1.Master"
    AutoEventWireup="true"
    CodeBehind="ViewOrder.aspx.cs"
    Inherits="E_Commerce_Platform_for_Spices.ViewOrder" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <link href="CSS/ViewOrder.css" rel="stylesheet" />

    <link rel="stylesheet"
        href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" />

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <!-- ORDER CONFIRMATION HERO -->
    <section class="order-hero">

        <div class="container">

            <div class="order-hero-inner">

                <div class="order-success-icon">
                    <i class="fa-solid fa-circle-check"></i>
                </div>

                <div>
                    <h1 class="order-hero-title">
                        Order Confirmed!
                    </h1>

                    <p class="order-hero-subtitle">
                        Thank you for your order. We'll process it and ship it
                        to you shortly.
                    </p>
                </div>

            </div>

        </div>

    </section>

    <!-- ORDER DETAILS SECTION -->
    <section class="view-order-section">

        <div class="container">

            <div class="view-order-grid">

                <!-- LEFT COLUMN -->
                <div class="view-order-left">

                    <!-- ORDERED PRODUCT -->
                    <div class="order-detail-card">

                        <h2 class="order-card-title">
                            <i class="fa-solid fa-box"></i>
                            Ordered Product
                        </h2>

                        <div class="ordered-product-row">

                            <img
                                src="Images/Rai-Kuria.png"
                                alt="Rai Kuria"
                                class="ordered-product-img"
                                id="imgViewOrderProduct"
                                runat="server" />

                            <div class="ordered-product-info">

                                <span
                                    class="ordered-product-name"
                                    id="lblViewOrderName"
                                    runat="server">
                                    Rai Kuria (Mustard Split Seeds)
                                </span>

                                <span
                                    class="ordered-product-weight"
                                    id="lblViewOrderWeight"
                                    runat="server">
                                    1 kg
                                </span>

                                <div class="ordered-price-row">

                                    <span
                                        class="ordered-price"
                                        id="lblViewOrderPrice"
                                        runat="server">
                                        &#8377;499.00
                                    </span>

                                    <span class="ordered-shipping">
                                        + FREE Shipping
                                    </span>

                                </div>

                            </div>

                        </div>

                    </div>

                    <!-- PAYMENT SUMMARY -->
                    <div class="order-detail-card mt-3">

                        <h2 class="order-card-title">
                            <i class="fa-solid fa-wallet"></i>
                            Payment Summary
                        </h2>

                        <div class="payment-summary-row">

                            <span>Payment Method</span>

                            <span
                                class="pm-value"
                                id="lblViewPayment"
                                runat="server">
                                COD
                            </span>

                        </div>

                        <div class="payment-summary-row">

                            <span>Subtotal</span>

                            <span id="lblViewSubtotal" runat="server">
                                &#8377;499.00
                            </span>

                        </div>

                        <div class="payment-summary-row">

                            <span>Shipping</span>

                            <span class="free-tag">
                                FREE
                            </span>

                        </div>

                        <div class="payment-summary-divider"></div>

                        <div class="payment-summary-row total-row">

                            <span>Total</span>

                            <span
                                class="total-amount"
                                id="lblViewTotal"
                                runat="server">
                                &#8377;499.00
                            </span>

                        </div>

                    </div>

                    <!-- CONTINUE SHOPPING BUTTON -->
                    <div class="order-action-btns">

                        <a href="Products.aspx"
                           class="btn-continue-shop"
                           id="btnContinueShop">

                            <i class="fa-solid fa-bag-shopping"></i>
                            Continue Shopping

                        </a>

                    </div>

                </div>

                <!-- RIGHT COLUMN -->
                <div class="view-order-right">
                    <!-- Available for additional order information -->
                </div>

            </div>

        </div>

    </section>

</asp:Content>