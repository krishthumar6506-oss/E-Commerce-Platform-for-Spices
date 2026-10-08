<%@ Page Title="Secure Checkout - Shree Ram Gruh Udhyog"
    Language="C#"
    MasterPageFile="~/Site1.Master"
    AutoEventWireup="true"
    CodeBehind="Payment.aspx.cs"
    Inherits="E_Commerce_Platform_for_Spices.Payment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="CSS/Payment.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <!-- ===== CHECKOUT HERO ===== -->
    <section class="checkout-hero">
        <div class="container">
            <h1 class="checkout-title">Secure Checkout</h1>
            <p class="checkout-subtitle">Finish your order of authentic heritage spices.</p>
        </div>
    </section>

    <!-- ===== CHECKOUT BODY ===== -->
    <section class="checkout-section">
        <div class="container">
            <div class="checkout-grid">

                <!-- ===== LEFT: FORM ===== -->
                <div class="checkout-form-col">

                    <!-- Shipping Info -->
                    <div class="checkout-card">
                        <h2 class="checkout-card-title">
                            <i class="fa-solid fa-truck"></i> Shipping Information
                        </h2>

                        <div class="form-group-row">
                            <div class="form-group full-width">
                                <label for="txtFullName">FULL NAME</label>
                                <asp:TextBox ID="txtFullName" runat="server" CssClass="checkout-input"
                                    placeholder="Shree Sai" MaxLength="100"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfvName" runat="server"
                                    ControlToValidate="txtFullName"
                                    ErrorMessage="Full name is required."
                                    CssClass="field-error" Display="Dynamic"
                                    ValidationGroup="CheckoutGroup"></asp:RequiredFieldValidator>
                            </div>
                        </div>

                        <div class="form-group-row two-col">
                            <div class="form-group">
                                <label for="txtMobile">MOBILE NUMBER</label>
                                <asp:TextBox ID="txtMobile" runat="server" CssClass="checkout-input"
                                    placeholder="+91 98765 43210" MaxLength="15"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfvMobile" runat="server"
                                    ControlToValidate="txtMobile"
                                    ErrorMessage="Mobile number is required."
                                    CssClass="field-error" Display="Dynamic"
                                    ValidationGroup="CheckoutGroup"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="revMobile" runat="server"
                                    ControlToValidate="txtMobile"
                                    ErrorMessage="Enter a valid 10-digit mobile number."
                                    CssClass="field-error" Display="Dynamic"
                                    ValidationExpression="^(\+91[\-\s]?)?[6-9]\d{9}$"
                                    ValidationGroup="CheckoutGroup"></asp:RegularExpressionValidator>
                            </div>
                            <div class="form-group">
                                <label for="txtEmail">EMAIL ADDRESS</label>
                                <asp:TextBox ID="txtEmail" runat="server" CssClass="checkout-input"
                                    TextMode="Email" placeholder="shree@gmail.com" MaxLength="100"></asp:TextBox>
                                <asp:RegularExpressionValidator ID="revEmail" runat="server"
                                    ControlToValidate="txtEmail"
                                    ErrorMessage="Enter a valid email address."
                                    CssClass="field-error" Display="Dynamic"
                                    ValidationExpression="^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$"
                                    ValidationGroup="CheckoutGroup"></asp:RegularExpressionValidator>
                            </div>
                        </div>

                        <div class="form-group-row">
                            <div class="form-group full-width">
                                <label for="txtAddress">SHIPPING ADDRESS</label>
                                <asp:TextBox ID="txtAddress" runat="server" CssClass="checkout-textarea"
                                    TextMode="MultiLine" Rows="3"
                                    placeholder="Street name, Landmark, City, State, PIN"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfvAddress" runat="server"
                                    ControlToValidate="txtAddress"
                                    ErrorMessage="Shipping address is required."
                                    CssClass="field-error" Display="Dynamic"
                                    ValidationGroup="CheckoutGroup"></asp:RequiredFieldValidator>
                            </div>
                        </div>
                    </div>

                    <!-- Payment Method -->
                    <div class="checkout-card mt-4">
                        <h2 class="checkout-card-title">
                            <i class="fa-solid fa-wallet"></i> Payment Method
                        </h2>

                        <div class="payment-methods">
                            <label class="payment-method-item active" id="lblCOD">
                                <input type="radio" name="paymentMethod" value="COD" checked="checked" id="rdoCOD"
                                    onclick="selectPayment(this)" />
                                <i class="fa-solid fa-money-bill-wave"></i>
                                <span>COD ( Cast On Delivery )</span>
                                <i class="fa-solid fa-circle-check method-check"></i>
                            </label>

                            <label class="payment-method-item" id="lblUPI">
                                <input type="radio" name="paymentMethod" value="UPI" id="rdoUPI"
                                    onclick="selectPayment(this)" />
                                <i class="fa-solid fa-mobile-screen-button"></i>
                                <span>UPI Payment</span>
                                <i class="fa-solid fa-circle-check method-check"></i>
                            </label>

                            <label class="payment-method-item" id="lblCard">
                                <input type="radio" name="paymentMethod" value="Card" id="rdoCard"
                                    onclick="selectPayment(this)" />
                                <i class="fa-solid fa-credit-card"></i>
                                <span>Credit / Debit Card</span>
                                <i class="fa-solid fa-circle-check method-check"></i>
                            </label>
                        </div>

                        <!-- Hidden field for payment method -->
                        <asp:HiddenField ID="hdnPaymentMethod" runat="server" Value="COD" />
                    </div>

                </div>

                <!-- ===== RIGHT: ORDER SUMMARY ===== -->
                <div class="order-summary-col">
                    <div class="order-summary-card">
                        <h2 class="order-summary-title">Our Order</h2>

                        <!-- Product Row -->
                        <div class="order-product-row">
                            <img src="Images/Rai-Kuria.png" alt="Product" class="order-product-img"
                                id="imgOrderProduct" runat="server" />
                            <div class="order-product-info">
                                <span class="order-product-name" id="lblOrderName" runat="server">Rai Kuria (Mustard Split Seeds)</span>
                                <span class="order-product-weight" id="lblOrderWeight" runat="server">Weight: 1Kg</span>
                            </div>
                        </div>

                        <div class="order-divider"></div>

                        <!-- Price Breakdown -->
                        <div class="order-price-row">
                            <span>Subtotal</span>
                            <span id="lblSubtotal" runat="server">&#x20B9;499.00</span>
                        </div>
                        <div class="order-price-row">
                            <span>Shipping</span>
                            <span class="free-shipping">FREE</span>
                        </div>

                        <div class="order-divider"></div>

                        <div class="order-total-row">
                            <span>TOTAL AMOUNT</span>
                            <span class="order-total-amount" id="lblTotal" runat="server">&#x20B9;499.00</span>
                        </div>

                        <!-- Place Order Button -->
                        <asp:Button ID="btnPlaceOrder" runat="server" Text="PLACE ORDER NOW"
                            CssClass="btn-place-order"
                            OnClick="btnPlaceOrder_Click"
                            ValidationGroup="CheckoutGroup" />

                        <!-- Trust Badges -->
                        <div class="order-trust-badges">
                            <span><i class="fa-solid fa-shield-halved"></i> Secure</span>
                            <span><i class="fa-solid fa-rotate-left"></i> Easy Returns</span>
                            <span><i class="fa-solid fa-headset"></i> 24/7 Support</span>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </section>

    <!-- Success Modal -->
    <div class="success-overlay" id="successOverlay" style="display:none;">
        <div class="success-modal">
            <div class="success-icon">
                <i class="fa-solid fa-circle-check"></i>
            </div>
            <h2>Order Placed!</h2>
            <p>Your order has been successfully placed. We will contact you shortly.</p>
            <a href="ViewOrder.aspx" class="btn-view-order" id="btnGoViewOrder">View My Order</a>
            <a href="Products.aspx" class="btn-continue-shopping" id="btnContinueShopping">Continue Shopping</a>
        </div>
    </div>

    <script>
        function selectPayment(radio) {
            document.querySelectorAll('.payment-method-item').forEach(function (el) {
                el.classList.remove('active');
            });
            radio.parentElement.classList.add('active');
            document.getElementById('<%= hdnPaymentMethod.ClientID %>').value = radio.value;
        }
    </script>

</asp:Content>
