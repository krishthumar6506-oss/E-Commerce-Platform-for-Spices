<%@ Page Title="Our Products - Shree Ram Gruh Udhyog"
    Language="C#"
    MasterPageFile="~/Site1.Master"
    AutoEventWireup="true"
    CodeBehind="Products.aspx.cs"
    Inherits="E_Commerce_Platform_for_Spices.Products" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="CSS/Products.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <!-- ===== HERO SECTION ===== -->
    <section class="products-hero">
        <div class="products-hero-content">
            <span class="products-badge">Premium Quality</span>
            <h1 class="products-title">Our Products</h1>
            <p class="products-subtitle">
                Discover our range of meticulously sourced and processed spices, seeds, and pulses.<br />
                Crafted with tradition, refined for the modern kitchen.
            </p>
        </div>
    </section>

    <!-- ===== FILTER BAR ===== -->
    <section class="filter-section">
        <div class="container">
            <div class="filter-bar">
                <button type="button" class="filter-btn active" data-filter="all" id="btnFilterAll">All Products</button>
                <button type="button" class="filter-btn" data-filter="seeds" id="btnFilterSeeds">Seeds</button>
                <button type="button" class="filter-btn" data-filter="powder" id="btnFilterPowder">Powder</button>
                <button type="button" class="filter-btn" data-filter="spices" id="btnFilterSpices">Spices</button>
                <button type="button" class="filter-btn" data-filter="pulses" id="btnFilterPulses">Pulses</button>
            </div>
        </div>
    </section>

    <!-- ===== PRODUCTS GRID ===== -->
    <section class="products-section">
        <div class="container">
            <div class="products-grid" id="productsGrid">

                <!-- 1. Rai Kuria (Seeds) -->
                <div class="product-card" data-category="seeds spices">
                    <div class="product-card-img-wrap">
                        <span class="product-badge seeds-badge">Seeds</span>
                        <img src="Images/Rai-Kuria.png" alt="Rai Kuria" class="product-card-img" />
                        <div class="product-card-overlay">
                            <a href="ViewProduct.aspx?id=1" class="overlay-btn" id="btnViewRaiKuria">
                                <i class="fa-solid fa-eye"></i> Quick View
                            </a>
                        </div>
                    </div>
                    <div class="product-card-body">
                        <h3 class="product-card-name">Rai Kuria</h3>
                        <p class="product-card-desc">Bold, aromatic split mustard seeds for tempering, pickles, spice blends...</p>
                        <div class="product-card-footer">
                            <span class="product-price">&#x20B9;499 <small>/kg</small></span>
                            <a href="ViewProduct.aspx?id=1" class="btn-view-detail" id="btnDetailRaiKuria">View Details</a>
                        </div>
                    </div>
                </div>

                <!-- 2. Kashmiri Chili Powder (Powder) -->
                <div class="product-card" data-category="powder spices">
                    <div class="product-card-img-wrap">
                        <span class="product-badge powder-badge">Powder</span>
                        <img src="Images/Coriader.png" alt="Kashmiri Chili Powder" class="product-card-img" />
                        <div class="product-card-overlay">
                            <a href="ViewProduct.aspx?id=2" class="overlay-btn" id="btnViewChili">
                                <i class="fa-solid fa-eye"></i> Quick View
                            </a>
                        </div>
                    </div>
                    <div class="product-card-body">
                        <h3 class="product-card-name">Kashmiri Chili Powder</h3>
                        <p class="product-card-desc">Vibrant red color with a mild heat. Ground from premium stemless chilies.</p>
                        <div class="product-card-footer">
                            <span class="product-price">&#x20B9;349 <small>/kg</small></span>
                            <a href="ViewProduct.aspx?id=2" class="btn-view-detail" id="btnDetailChili">View Details</a>
                        </div>
                    </div>
                </div>

                <!-- 3. Turmeric Powder (Powder) -->
                <div class="product-card" data-category="powder spices">
                    <div class="product-card-img-wrap">
                        <span class="product-badge powder-badge">Powder</span>
                        <img src="Images/Dhana-Kuria.png" alt="Turmeric Powder" class="product-card-img" />
                        <div class="product-card-overlay">
                            <a href="ViewProduct.aspx?id=3" class="overlay-btn" id="btnViewTurmeric">
                                <i class="fa-solid fa-eye"></i> Quick View
                            </a>
                        </div>
                    </div>
                    <div class="product-card-body">
                        <h3 class="product-card-name">Turmeric Powder (Haldi)</h3>
                        <p class="product-card-desc">High curcumin content turmeric powder, sourced directly from trusted farmers.</p>
                        <div class="product-card-footer">
                            <span class="product-price">&#x20B9;299 <small>/kg</small></span>
                            <a href="ViewProduct.aspx?id=3" class="btn-view-detail" id="btnDetailTurmeric">View Details</a>
                        </div>
                    </div>
                </div>

                <!-- 4. Methi Kuria (Seeds) -->
                <div class="product-card" data-category="seeds spices">
                    <div class="product-card-img-wrap">
                        <span class="product-badge seeds-badge">Seeds</span>
                        <img src="Images/Methi-Kuria.png" alt="Methi Kuria" class="product-card-img" />
                        <div class="product-card-overlay">
                            <a href="ViewProduct.aspx?id=4" class="overlay-btn" id="btnViewMethi">
                                <i class="fa-solid fa-eye"></i> Quick View
                            </a>
                        </div>
                    </div>
                    <div class="product-card-body">
                        <h3 class="product-card-name">Methi Kuria</h3>
                        <p class="product-card-desc">Premium fenugreek splits with a slightly bitter, rich aroma. Ideal for tadka and spice blends.</p>
                        <div class="product-card-footer">
                            <span class="product-price">&#x20B9;399 <small>/kg</small></span>
                            <a href="ViewProduct.aspx?id=4" class="btn-view-detail" id="btnDetailMethi">View Details</a>
                        </div>
                    </div>
                </div>

                <!-- 5. Dhana Kuria (Seeds) -->
                <div class="product-card" data-category="seeds spices">
                    <div class="product-card-img-wrap">
                        <span class="product-badge seeds-badge">Seeds</span>
                        <img src="Images/Dhana-Kuria.png" alt="Dhana Kuria" class="product-card-img" />
                        <div class="product-card-overlay">
                            <a href="ViewProduct.aspx?id=5" class="overlay-btn" id="btnViewDhanaKuria">
                                <i class="fa-solid fa-eye"></i> Quick View
                            </a>
                        </div>
                    </div>
                    <div class="product-card-body">
                        <h3 class="product-card-name">Dhana Kuria</h3>
                        <p class="product-card-desc">Aromatic split coriander seeds bursting with citrusy fragrance. Perfect for seasoning.</p>
                        <div class="product-card-footer">
                            <span class="product-price">&#x20B9;279 <small>/kg</small></span>
                            <a href="ViewProduct.aspx?id=5" class="btn-view-detail" id="btnDetailDhanaKuria">View Details</a>
                        </div>
                    </div>
                </div>

                <!-- 6. Dhana Dal (Pulses) -->
                <div class="product-card" data-category="pulses">
                    <div class="product-card-img-wrap">
                        <span class="product-badge pulses-badge">Pulses</span>
                        <img src="Images/Dhana-Dal.png" alt="Dhana Dal" class="product-card-img" />
                        <div class="product-card-overlay">
                            <a href="ViewProduct.aspx?id=6" class="overlay-btn" id="btnViewDhanaDal">
                                <i class="fa-solid fa-eye"></i> Quick View
                            </a>
                        </div>
                    </div>
                    <div class="product-card-body">
                        <h3 class="product-card-name">Dhana Dal</h3>
                        <p class="product-card-desc">Crispy roasted coriander dal, a beloved snack and mouth freshener across Gujarat.</p>
                        <div class="product-card-footer">
                            <span class="product-price">&#x20B9;249 <small>/kg</small></span>
                            <a href="ViewProduct.aspx?id=6" class="btn-view-detail" id="btnDetailDhanaDal">View Details</a>
                        </div>
                    </div>
                </div>

                <!-- 7. Fennel Seeds (Seeds) -->
                <div class="product-card" data-category="seeds spices">
                    <div class="product-card-img-wrap">
                        <span class="product-badge seeds-badge">Seeds</span>
                        <img src="Images/Fennel-Seeds.png" alt="Fennel Seeds" class="product-card-img" />
                        <div class="product-card-overlay">
                            <a href="ViewProduct.aspx?id=7" class="overlay-btn" id="btnViewFennel">
                                <i class="fa-solid fa-eye"></i> Quick View
                            </a>
                        </div>
                    </div>
                    <div class="product-card-body">
                        <h3 class="product-card-name">Fennel Seeds (Saunf)</h3>
                        <p class="product-card-desc">Sweet, anise-flavoured fennel seeds. Excellent for digestion and culinary use.</p>
                        <div class="product-card-footer">
                            <span class="product-price">&#x20B9;329 <small>/kg</small></span>
                            <a href="ViewProduct.aspx?id=7" class="btn-view-detail" id="btnDetailFennel">View Details</a>
                        </div>
                    </div>
                </div>

                <!-- 8. Coriander Powder (Powder) -->
                <div class="product-card" data-category="powder spices">
                    <div class="product-card-img-wrap">
                        <span class="product-badge powder-badge">Powder</span>
                        <img src="Images/Coriader.png" alt="Coriander Powder" class="product-card-img" />
                        <div class="product-card-overlay">
                            <a href="ViewProduct.aspx?id=8" class="overlay-btn" id="btnViewCoriander">
                                <i class="fa-solid fa-eye"></i> Quick View
                            </a>
                        </div>
                    </div>
                    <div class="product-card-body">
                        <h3 class="product-card-name">Coriander Powder</h3>
                        <p class="product-card-desc">Freshly milled coriander powder with warm, citrusy notes. Kitchen essential.</p>
                        <div class="product-card-footer">
                            <span class="product-price">&#x20B9;219 <small>/kg</small></span>
                            <a href="ViewProduct.aspx?id=8" class="btn-view-detail" id="btnDetailCoriander">View Details</a>
                        </div>
                    </div>
                </div>

                <!-- 9. Methi Seeds (Seeds) -->
                <div class="product-card" data-category="seeds spices">
                    <div class="product-card-img-wrap">
                        <span class="product-badge seeds-badge">Seeds</span>
                        <img src="Images/Methi-Kuria.png" alt="Methi" class="product-card-img" />
                        <div class="product-card-overlay">
                            <a href="ViewProduct.aspx?id=9" class="overlay-btn" id="btnViewFenugreek">
                                <i class="fa-solid fa-eye"></i> Quick View
                            </a>
                        </div>
                    </div>
                    <div class="product-card-body">
                        <h3 class="product-card-name">Methi (Fenugreek Seeds)</h3>
                        <p class="product-card-desc">Whole fenugreek seeds, rich in nutrients. Essential for pickles, curry bases, and more.</p>
                        <div class="product-card-footer">
                            <span class="product-price">&#x20B9;289 <small>/kg</small></span>
                            <a href="ViewProduct.aspx?id=9" class="btn-view-detail" id="btnDetailFenugreek">View Details</a>
                        </div>
                    </div>
                </div>

            </div>

            <!-- No Results Message -->
            <div class="no-results" id="noResults" style="display:none;">
                <i class="fa-solid fa-box-open"></i>
                <p>No products found in this category.</p>
            </div>

        </div>
    </section>

    <!-- ===== FILTER SCRIPT ===== -->
    <script>
        (function () {
            var filterBtns = document.querySelectorAll('.filter-btn');
            var cards = document.querySelectorAll('.product-card');
            var noResults = document.getElementById('noResults');

            function applyFilter(filter) {
                var visible = 0;
                var filterLower = (filter || 'all').toLowerCase();

                filterBtns.forEach(function (b) {
                    if (b.getAttribute('data-filter').toLowerCase() === filterLower) {
                        b.classList.add('active');
                    } else {
                        b.classList.remove('active');
                    }
                });

                cards.forEach(function (card) {
                    var rawCats = card.getAttribute('data-category') || '';
                    var cats = rawCats.toLowerCase().split(/\s+/);

                    if (filterLower === 'all' || cats.indexOf(filterLower) !== -1) {
                        card.style.display = '';
                        card.style.opacity = '1';
                        visible++;
                    } else {
                        card.style.display = 'none';
                    }
                });

                if (noResults) {
                    noResults.style.display = visible === 0 ? 'flex' : 'none';
                }
            }

            filterBtns.forEach(function (btn) {
                btn.addEventListener('click', function (e) {
                    e.preventDefault();
                    e.stopPropagation();
                    var filter = btn.getAttribute('data-filter') || 'all';
                    applyFilter(filter);
                    return false;
                });
            });

            // Check URL query param if present: e.g. Products.aspx?category=seeds
            try {
                var urlParams = new URLSearchParams(window.location.search);
                var catParam = urlParams.get('category');
                if (catParam) {
                    applyFilter(catParam);
                }
            } catch (err) { }
        })();
    </script>

</asp:Content>
