<%@ Page Title="My Order - Shree Ram Gruh Udhyog"
    Language="C#"
    MasterPageFile="~/Site1.Master"
    AutoEventWireup="true"
    CodeBehind="ViewOrder.aspx.cs"
    Inherits="E_Commerce_Platform_for_Spices.ViewOrder" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="CSS/ViewOrder.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <!-- ===== ORDER HERO ===== -->
    <section class="order-hero">
        <div class="container">
            <div class="order-hero-inner">
                <div class="order-success-icon">
                    <i class="fa-solid fa-circle-check"></i>
                </div>
                <div>
                    <h1 class="order-hero-title">Order Confirmed!</h1>
                    <p class="order-hero-subtitle">
                        Thank you for your order. We'll process it and ship it to you shortly.
                    </p>
                </div>
            </div>
        </div>
    </section>

    <!-- ===== ORDER CONTENT ===== -->
    <section class="view-order-section">
        <div class="container">

            <!-- Order Number Banner -->
            <div class="order-number-banner">
                <i class="fa-solid fa-receipt"></i>
                <span>Order Number: <strong id="lblOrderNumber" runat="server">SRGU20260101000000</strong></span>
                <span class="order-date-label" id="lblOrderDate" runat="server">Placed on: 01 Jan 2026</span>
            </div>

            <div class="view-order-grid">

                <!-- LEFT: ORDER DETAILS -->
                <div class="view-order-left">

                    <!-- Product Section -->
                    <div class="order-detail-card">
                        <h2 class="order-card-title"><i class="fa-solid fa-box"></i> Ordered Product</h2>
                        <div class="ordered-product-row">
                            <img src="Images/Rai-Kuria.png" alt="Product"
                                class="ordered-product-img" id="imgViewOrderProduct" runat="server" />
                            <div class="ordered-product-info">
                                <span class="ordered-product-name" id="lblViewOrderName" runat="server">
                                    Rai Kuria (Mustard Split Seeds)
                                </span>
                                <span class="ordered-product-weight" id="lblViewOrderWeight" runat="server">
                                    1 kg
                                </span>
                                <div class="ordered-price-row">
                                    <span class="ordered-price" id="lblViewOrderPrice" runat="server">&#x20B9;499.00</span>
                                    <span class="ordered-shipping">+ FREE Shipping</span>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- Shipping Details -->
                    <div class="order-detail-card mt-3">
                        <h2 class="order-card-title"><i class="fa-solid fa-truck"></i> Shipping Details</h2>
                        <div class="shipping-detail-grid">
                            <div class="shipping-detail-item">
                                <span class="sd-label">Name</span>
                                <span class="sd-value" id="lblViewName" runat="server">—</span>
                            </div>
                            <div class="shipping-detail-item">
                                <span class="sd-label">Mobile</span>
                                <span class="sd-value" id="lblViewMobile" runat="server">—</span>
                            </div>
                            <div class="shipping-detail-item">
                                <span class="sd-label">Email</span>
                                <span class="sd-value" id="lblViewEmail" runat="server">—</span>
                            </div>
                            <div class="shipping-detail-item full-col">
                                <span class="sd-label">Address</span>
                                <span class="sd-value" id="lblViewAddress" runat="server">—</span>
                            </div>
                        </div>
                    </div>

                </div>

                <!-- RIGHT: STATUS + SUMMARY -->
                <div class="view-order-right">

                    <!-- Order Status -->
                    <div class="order-detail-card">
                        <h2 class="order-card-title"><i class="fa-solid fa-timeline"></i> Order Status</h2>
                        <div class="status-tracker">
                            <div class="status-step active" id="stepPlaced">
                                <div class="step-icon"><i class="fa-solid fa-circle-check"></i></div>
                                <div class="step-info">
                                    <span class="step-title">Order Placed</span>
                                    <span class="step-desc" id="lblViewOrderDate" runat="server">Just now</span>
                                </div>
                            </div>
                            <div class="status-connector"></div>
                            <div class="status-step" id="stepProcessing">
                                <div class="step-icon pending"><i class="fa-solid fa-gear"></i></div>
                                <div class="step-info">
                                    <span class="step-title">Processing</span>
                                    <span class="step-desc">Being prepared</span>
                                </div>
                            </div>
                            <div class="status-connector"></div>
                            <div class="status-step" id="stepShipped">
                                <div class="step-icon pending"><i class="fa-solid fa-truck"></i></div>
                                <div class="step-info">
                                    <span class="step-title">Shipped</span>
                                    <span class="step-desc">On the way</span>
                                </div>
                            </div>
                            <div class="status-connector"></div>
                            <div class="status-step" id="stepDelivered">
                                <div class="step-icon pending"><i class="fa-solid fa-house-circle-check"></i></div>
                                <div class="step-info">
                                    <span class="step-title">Delivered</span>
                                    <span class="step-desc">Est. 3-5 days</span>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- Payment Summary -->
                    <div class="order-detail-card mt-3">
                        <h2 class="order-card-title"><i class="fa-solid fa-wallet"></i> Payment Summary</h2>
                        <div class="payment-summary-row">
                            <span>Payment Method</span>
                            <span class="pm-value" id="lblViewPayment" runat="server">COD</span>
                        </div>
                        <div class="payment-summary-row">
                            <span>Subtotal</span>
                            <span id="lblViewSubtotal" runat="server">&#x20B9;499.00</span>
                        </div>
                        <div class="payment-summary-row">
                            <span>Shipping</span>
                            <span class="free-tag">FREE</span>
                        </div>
                        <div class="payment-summary-divider"></div>
                        <div class="payment-summary-row total-row">
                            <span>Total</span>
                            <span class="total-amount" id="lblViewTotal" runat="server">&#x20B9;499.00</span>
                        </div>
                    </div>

                    <!-- Action Buttons -->
                    <div class="order-action-btns">
                        <a href="Products.aspx" class="btn-continue-shop" id="btnContinueShop">
                            <i class="fa-solid fa-bag-shopping"></i> Continue Shopping
                        </a>
                        <a href="Contact.aspx" class="btn-contact-us" id="btnContactUs">
                            <i class="fa-solid fa-headset"></i> Need Help?
                        </a>
                    </div>

                </div>

            </div>

        </div>
    </section>

</asp:Content>
