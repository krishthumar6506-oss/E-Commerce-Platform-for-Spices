<%@ Page Title="Home"
    Language="C#"
    MasterPageFile="~/Site1.Master"
    AutoEventWireup="true"
    CodeBehind="Home.aspx.cs"
    Inherits="E_Commerce_Platform_for_Spices.Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <link href="CSS/Home.css" rel="stylesheet" />
    <link rel="stylesheet"
        href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" />

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<div class="container my-5">

    <div class="main-box">

        <!-- Welcome Section -->

        <div class="row align-items-center">

            <div class="col-lg-5">
                <img src="Images/homepage.png" class="img-fluid about-img" />
            </div>

            <div class="col-lg-7">

                <h5 class="title">Welcome To</h5>

                <h2 class="company">Shree Ram Gruh Udhyog</h2>

                <p class="text-muted">
                    Shree Ram Gruh Udhyog is recognized as one of the leading manufacturers,
                    exporters and suppliers of premium-quality spices and pulses.
                </p>

                <p class="text-muted">
                    Our products are carefully processed using modern technology,
                    ensuring purity and freshness.
                </p>

                <div class="row mt-4">

                    <div class="col-6">
                        <h2 class="green">100%</h2>
                        <span>NATURAL INGREDIENTS</span>
                    </div>

                    <div class="col-6">
                        <h2 class="green">ISO</h2>
                        <span>CERTIFIED FACILITY</span>
                    </div>

                </div>

            </div>

        </div>

        <!-- Core Values -->

        <div class="text-center mt-5">

            <h2>Core Values</h2>

            <p class="text-muted">
                When people work together, they can create something greater.
            </p>

        </div>

        <div class="row mt-4">

            <div class="col-md-4 mb-4">

                <div class="value-card">

                    <div class="icon green-bg">
                        <i class="fa-solid fa-seedling"></i>
                    </div>

                    <h5>Food Grade Manufacturing Facility</h5>

                    <p>All machines are made of stainless steel ensuring quality.</p>

                </div>

            </div>

            <div class="col-md-4 mb-4">

                <div class="value-card">

                    <div class="icon orange-bg">
                        <i class="fa-solid fa-flask"></i>
                    </div>

                    <h5>In-House Modern Laboratory</h5>

                    <p>Equipped with modern instruments for testing.</p>

                </div>

            </div>

            <div class="col-md-4 mb-4">

                <div class="value-card">

                    <div class="icon red-bg">
                        <i class="fa-solid fa-gears"></i>
                    </div>

                    <h5>Fully Automated Plant</h5>

                    <p>Latest technology with automated production.</p>

                </div>

            </div>

        </div>

        <!-- Premium Collections -->

        <div class="text-center mt-5">

            <h2>Premium Collections</h2>

            <p class="text-muted">Discover our premium range.</p>

        </div>

        <div class="row mt-4">

            <div class="col-lg-8">

                <img src="Images/Dhana-Dal.png"
                    class="img-fluid product-big" />

            </div>

            <div class="col-lg-4">

                <img src="Images/Dhana-Kuria.png"
                    class="img-fluid product-small mb-3" />

                <img src="Images/Rai-Kuria.png"
                    class="img-fluid product-small" />

            </div>
            
                <div class="view-products">

                    <a href="Products.aspx" class="view-button">
                        View all our Products
                    </a>

                </div>

        </div>



    </div>

</div>

</asp:Content>