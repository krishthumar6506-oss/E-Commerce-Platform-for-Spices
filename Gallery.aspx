<%@ Page Title="Gallery"
    Language="C#"
    MasterPageFile="~/Site1.Master"
    AutoEventWireup="true"
    CodeBehind="Gallery.aspx.cs"
    Inherits="E_Commerce_Platform_for_Spices.Gallery" %>

<asp:Content ID="Content1"
    ContentPlaceHolderID="MainContent"
    runat="server">

    <!-- GALLERY CSS -->
    <link href="CSS/Gallery.css" rel="stylesheet" />

    <!-- GALLERY SECTION -->
    <section class="gallery-section">

        <div class="gallery-container">

            <!-- HEADING -->
            <div class="gallery-heading">
                <br /><br />
                <h1>Our Visual Journey</h1>

                <p>
                    Explore the craftsmanship, dedication, and vibrant environments
                    that define Artisanal Provisions. From raw ingredients to final
                    product, see the quality in every step.
                </p>
                <br /><br />
            </div>


            <!-- FILTER BUTTONS -->
            <div class="gallery-filters">

                <button type="button"
                        class="gallery-filter active"
                        data-filter="all">
                    All
                </button>

                <button type="button"
                        class="gallery-filter"
                        data-filter="factory">
                    Factory
                </button>

                <button type="button"
                        class="gallery-filter"
                        data-filter="products">
                    Products
                </button>

                <button type="button"
                        class="gallery-filter"
                        data-filter="machinery">
                    Machinery
                </button>

            </div>
            <br />

            <!-- GALLERY GRID -->
            <div class="gallery-grid">


                <!-- IMAGE 1 -->
                <div class="gallery-item"
                     data-category="factory">

                    <img src="Images/Factory.jpg"
                         alt="Factory"
                         class="gallery-image" />

                </div>


                <!-- IMAGE 2 -->
                <div class="gallery-item"
                     data-category="products">

                    <img src="Images/Rai-Kuria.png"
                         alt="Products"
                         class="gallery-image" />

                </div>


                <!-- IMAGE 3 -->
                <div class="gallery-item"
                     data-category="machinery">

                    <img src="Images/Machinery.jpg"
                         alt="Machinery"
                         class="gallery-image" />

                </div>


                <!-- IMAGE 4 -->
                <div class="gallery-item"
                     data-category="products">

                    <img src="Images/Methi-Kuria.png"
                         alt="Spice Products"
                         class="gallery-image" />

                </div>


                <!-- IMAGE 5 -->
                <div class="gallery-item"
                     data-category="factory">

                    <img src="Images/Factory1.jpg"
                         alt="Factory Environment"
                         class="gallery-image" />

                </div>


                <!-- IMAGE 6 -->
                <div class="gallery-item"
                     data-category="products">

                    <img src="Images/Dhana-Kuria.png"
                         alt="Spice Collection"
                         class="gallery-image" />

                </div>


            </div>

        </div>

    </section>


    <!-- GALLERY FILTER JAVASCRIPT -->
    <script>

document.addEventListener("DOMContentLoaded", function () {

    const buttons =
        document.querySelectorAll(".gallery-filter");

    const items =
        document.querySelectorAll(".gallery-item");


    buttons.forEach(function (button) {

        button.addEventListener("click", function () {

            const filter =
                this.getAttribute("data-filter");


            /* ACTIVE BUTTON */

            buttons.forEach(function (btn) {
                btn.classList.remove("active");
            });

            this.classList.add("active");


            /* FILTER IMAGES */

            items.forEach(function (item) {

                const category =
                    item.getAttribute("data-category");


                if (filter === "all" ||
                    category === filter) {

                    item.style.display = "block";

                }
                else {

                    item.style.display = "none";

                }

            });

        });

    });

});

</script>

</asp:Content>