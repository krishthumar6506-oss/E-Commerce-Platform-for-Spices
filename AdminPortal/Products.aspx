<%@ Page Language="C#" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta name="theme-color" content="#f8f7f6" />
    <title>@ViewData["Title"]</title>
    <link rel="stylesheet" href="Content/admin.css" />
</head>
<body class="dashboard-body products-page">
    <div class="dashboard-layout">
        <aside class="sidebar" aria-label="Main navigation">
            <a class="sidebar-brand" href="Dashboard.aspx" aria-label="Shree Ram Admin Console home">
                <img src="Images/brand-mark.png" alt="" />
                <span class="sidebar-brand-copy"><strong>Shree<br />Ram</strong><small>Admin Console</small></span>
            </a>

            <nav class="side-nav">
                <a class="nav-item" href="Dashboard.aspx">
                    <svg viewBox="0 0 24 24" aria-hidden="true"><rect x="4" y="4" width="6" height="6" rx="1"/><rect x="14" y="4" width="6" height="6" rx="1"/><rect x="4" y="14" width="6" height="6" rx="1"/><rect x="14" y="14" width="6" height="6" rx="1"/></svg>
                    <span>Dashboard</span>
                </a>
                <a class="nav-item" href="Users.aspx">
                    <svg viewBox="0 0 24 24" aria-hidden="true"><circle cx="9" cy="8" r="3"/><path d="M3.5 19v-1.5a5.5 5.5 0 0 1 11 0V19Zm12-8.5a3 3 0 1 0 0-5.9m1.5 9a4.5 4.5 0 0 1 3.5 4.4V19h-4"/></svg>
                    <span>Users</span>
                </a>
                <a class="nav-item active" href="Products.aspx" aria-current="page">
                    <svg viewBox="0 0 24 24" aria-hidden="true"><rect x="5" y="4" width="14" height="16" rx="1.5"/><path d="M9 8h6m-6 4h6m-6 4h4"/></svg>
                    <span>Products</span>
                </a>
                <a class="nav-item" href="Orders.aspx">
                    <svg viewBox="0 0 24 24" aria-hidden="true"><path d="M4 5h2l2.2 10.2a2 2 0 0 0 2 1.6h7.5a2 2 0 0 0 1.9-1.4L21 9H7"/><circle cx="10" cy="20" r="1"/><circle cx="18" cy="20" r="1"/></svg>
                    <span>Orders</span>
                </a>
                <a class="nav-item" href="#inquiries">
                    <svg viewBox="0 0 24 24" aria-hidden="true"><circle cx="12" cy="12" r="9"/><path d="M9.8 9a2.3 2.3 0 1 1 3.9 1.7c-1 .9-1.7 1.2-1.7 2.8m0 3h.01"/></svg>
                    <span>Inquiries</span>
                </a>
                <a class="nav-item" href="#settings">
                    <svg viewBox="0 0 24 24" aria-hidden="true"><path d="M12 8.5a3.5 3.5 0 1 0 0 7 3.5 3.5 0 0 0 0-7Z"/><path d="m19 13.5 1.2 1-.9 1.6-1.5-.4a7 7 0 0 1-1.4 1l-.2 1.6h-1.9l-.6-1.4a7 7 0 0 1-1.7 0l-.7 1.4h-1.8l-.3-1.6a7 7 0 0 1-1.4-1l-1.5.4-.9-1.6 1.2-1a7 7 0 0 1 0-1.7l-1.2-1 .9-1.6 1.5.4a7 7 0 0 1 1.4-1l.3-1.6h1.8l.7 1.4a7 7 0 0 1 1.7 0l.6-1.4h1.9l.2 1.6a7 7 0 0 1 1.4 1l1.5-.4.9 1.6-1.2 1a7 7 0 0 1 0 1.7Z"/></svg>
                    <span>Settings</span>
                </a>
            </nav>

            <a class="logout-link" href="Login.aspx" aria-label="Log out">
                <svg viewBox="0 0 24 24" aria-hidden="true"><path d="M10 5H5v14h5m4-4 4-3-4-3m4 3H9"/></svg>
                <span>Logout</span>
            </a>
        </aside>

        <div class="dashboard-main">
            <header class="dashboard-topbar">
                <a href="Dashboard.aspx" class="company-name">Shree Ram Gruh Udhyog</a>
                <button class="profile-button" type="button" aria-label="Admin profile">
                    <svg viewBox="0 0 24 24" aria-hidden="true"><circle cx="12" cy="8" r="3"/><path d="M6.5 19a5.5 5.5 0 0 1 11 0"/></svg>
                </button>
            </header>

            <main class="dashboard-content">
                <section class="product-heading">
                    <div class="overview-heading">
                        <h1>Products</h1>
                        <p>Manage your product catalog</p>
                    </div>
                    <button class="add-product-button" type="button">
                        <svg viewBox="0 0 24 24" aria-hidden="true"><path d="M12 5v14M5 12h14"/></svg>
                        <span>New Product</span>
                    </button>
                </section>

                <section class="products-table-panel" aria-label="Product catalog">
                    <div class="table-scroll">
                        <table class="products-table">
                            <thead>
                                <tr><th scope="col">Name of Product</th><th scope="col">Description</th><th scope="col">Price</th><th scope="col">Image</th></tr>
                            </thead>
                            <tbody>
                                <tr><td>Rai Kuria</td><td class="product-description">Bold, aromatic split mustard<br />seeds for tempering......</td><td class="product-price">₹1000</td><td><img class="product-photo" src="Images/product-reference.png" alt="Rai Kuria product packet" /></td></tr>
                                <tr><td>Dhana Dal</td><td class="product-description">Bold, aromatic split mustard<br />seeds for tempering......</td><td class="product-price">₹1000</td><td><img class="product-photo" src="Images/product-reference.png" alt="Dhana Dal product packet" /></td></tr>
                                <tr><td>Methi Kuria</td><td class="product-description">Bold, aromatic split mustard<br />seeds for tempering......</td><td class="product-price">₹1000</td><td><img class="product-photo" src="Images/product-reference.png" alt="Methi Kuria product packet" /></td></tr>
                                <tr><td>Dhana Kuria</td><td class="product-description">Bold, aromatic split mustard<br />seeds for tempering......</td><td class="product-price">₹1000</td><td><img class="product-photo" src="Images/product-reference.png" alt="Dhana Kuria product packet" /></td></tr>
                            </tbody>
                        </table>
                    </div>
                </section>
            </main>
        </div>
    </div>
</body>
</html>

