<%@ page language="java"
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">

<title>Company Dashboard</title>

<meta name="viewport"
      content="width=device-width, initial-scale=1.0">


<style>

/* =========================
   RESET
========================= */

* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

body {
    font-family: "Segoe UI", Arial, sans-serif;
    background: #f5f7fb;
    color: #1e293b;
}


/* =========================
   SIDEBAR
========================= */

.sidebar {
    position: fixed;
    top: 0;
    left: 0;

    width: 255px;
    height: 100vh;

    background: #111827;
    color: white;

    padding: 25px 15px;

    z-index: 1000;
}


/* LOGO */

.logo {
    display: flex;
    align-items: center;
    gap: 12px;

    padding: 0 10px;
    margin-bottom: 35px;
}

.logo-icon {
    width: 42px;
    height: 42px;

    background: #4f46e5;

    border-radius: 10px;

    display: flex;
    justify-content: center;
    align-items: center;

    font-size: 21px;
}

.logo-text {
    font-size: 20px;
    font-weight: 700;
}

.logo-subtitle {
    font-size: 11px;
    color: #9ca3af;
}


/* MENU TITLE */

.menu-title {
    color: #6b7280;
    font-size: 11px;
    text-transform: uppercase;

    padding: 0 12px;
    margin: 20px 0 10px;

    letter-spacing: 1px;
}


/* MENU */

.menu a {
    display: flex;
    align-items: center;

    gap: 13px;

    padding: 13px 14px;

    margin-bottom: 5px;

    color: #d1d5db;

    text-decoration: none;

    border-radius: 8px;

    font-size: 14px;

    transition: 0.3s;
}

.menu a:hover {
    background: #1f2937;
    color: white;
}

.menu a.active {
    background: #4f46e5;
    color: white;
}

.menu-icon {
    width: 20px;
    text-align: center;
}


/* =========================
   MAIN CONTENT
========================= */

.main {
    margin-left: 255px;
    min-height: 100vh;
}


/* =========================
   TOPBAR
========================= */

.topbar {
    height: 72px;

    background: white;

    border-bottom: 1px solid #e5e7eb;

    display: flex;

    align-items: center;

    justify-content: space-between;

    padding: 0 32px;

    position: sticky;
    top: 0;

    z-index: 900;
}

.page-title {
    font-size: 20px;
    font-weight: 700;
}

.page-subtitle {
    color: #94a3b8;
    font-size: 12px;
    margin-top: 3px;
}


/* PROFILE */

.top-profile {
    display: flex;
    align-items: center;
    gap: 12px;
}

.profile-avatar {
    width: 40px;
    height: 40px;

    background: #4f46e5;

    color: white;

    border-radius: 50%;

    display: flex;
    align-items: center;
    justify-content: center;

    font-weight: bold;
}

.profile-info {
    line-height: 1.3;
}

.profile-name {
    font-size: 14px;
    font-weight: 600;
}

.profile-email {
    font-size: 11px;
    color: #94a3b8;
}


/* =========================
   CONTENT
========================= */

.content {
    padding: 30px;
}


/* =========================
   WELCOME BANNER
========================= */

.welcome {
    background: linear-gradient(
        135deg,
        #4338ca,
        #6366f1,
        #7c3aed
    );

    color: white;

    border-radius: 16px;

    padding: 30px 35px;

    margin-bottom: 25px;

    position: relative;

    overflow: hidden;
}

.welcome::after {
    content: "";

    position: absolute;

    width: 250px;
    height: 250px;

    background: rgba(255,255,255,0.08);

    border-radius: 50%;

    right: -80px;
    top: -100px;
}

.welcome h1 {
    font-size: 28px;
    margin-bottom: 8px;
}

.welcome p {
    font-size: 14px;
    opacity: 0.9;
}


/* =========================
   STAT CARDS
========================= */

.stats {
    display: grid;

    grid-template-columns:
        repeat(4, 1fr);

    gap: 18px;

    margin-bottom: 25px;
}

.stat-card {
    background: white;

    border-radius: 13px;

    padding: 22px;

    border: 1px solid #e5e7eb;

    display: flex;

    justify-content: space-between;

    align-items: center;

    transition: 0.3s;
}

.stat-card:hover {
    transform: translateY(-3px);

    box-shadow:
        0 8px 20px
        rgba(0,0,0,0.07);
}

.stat-title {
    color: #64748b;
    font-size: 13px;

    margin-bottom: 8px;
}

.stat-number {
    font-size: 25px;
    font-weight: 700;
}

.stat-icon {
    width: 48px;
    height: 48px;

    border-radius: 12px;

    display: flex;

    justify-content: center;
    align-items: center;

    font-size: 21px;

    background: #eef2ff;
}


/* =========================
   GRID
========================= */

.dashboard-grid {
    display: grid;

    grid-template-columns:
        2fr 1fr;

    gap: 22px;

    margin-bottom: 25px;
}


/* =========================
   CARD
========================= */

.card {
    background: white;

    border-radius: 13px;

    border: 1px solid #e5e7eb;

    padding: 24px;
}

.card-header {
    display: flex;

    justify-content: space-between;

    align-items: center;

    margin-bottom: 20px;
}

.card-title {
    font-size: 17px;
    font-weight: 700;
}

.card-link {
    color: #4f46e5;

    text-decoration: none;

    font-size: 12px;

    font-weight: 600;
}


/* =========================
   QUICK ACTIONS
========================= */

.actions {
    display: grid;

    grid-template-columns:
        repeat(2, 1fr);

    gap: 12px;
}

.action {
    padding: 17px;

    border: 1px solid #e5e7eb;

    border-radius: 10px;

    text-decoration: none;

    color: #334155;

    display: flex;

    align-items: center;

    gap: 13px;

    transition: 0.3s;
}

.action:hover {
    border-color: #6366f1;

    background: #f8f7ff;

    transform: translateY(-2px);
}

.action-icon {
    width: 40px;
    height: 40px;

    border-radius: 9px;

    background: #eef2ff;

    display: flex;

    align-items: center;
    justify-content: center;

    font-size: 18px;
}

.action-text strong {
    display: block;

    font-size: 13px;

    margin-bottom: 3px;
}

.action-text span {
    font-size: 11px;

    color: #94a3b8;
}


/* =========================
   COMPANY INFORMATION
========================= */

.info-row {
    display: flex;

    justify-content: space-between;

    padding: 13px 0;

    border-bottom: 1px solid #f1f5f9;
}

.info-row:last-child {
    border-bottom: none;
}

.info-label {
    color: #64748b;

    font-size: 12px;
}

.info-value {
    font-size: 13px;

    font-weight: 600;

    text-align: right;

    max-width: 60%;
}


/* =========================
   RECENT ACTIVITY
========================= */

.activity {
    display: flex;

    gap: 13px;

    padding: 13px 0;

    border-bottom: 1px solid #f1f5f9;
}

.activity:last-child {
    border-bottom: none;
}

.activity-icon {
    width: 35px;
    height: 35px;

    border-radius: 50%;

    background: #eef2ff;

    display: flex;

    justify-content: center;
    align-items: center;

    font-size: 15px;
}

.activity-content strong {
    display: block;

    font-size: 12px;
}

.activity-content span {
    color: #94a3b8;

    font-size: 10px;
}


/* =========================
   ADDRESS
========================= */

.address-box {
    background: #f8fafc;

    border-radius: 10px;

    padding: 18px;

    line-height: 1.8;

    color: #475569;

    font-size: 13px;
}


/* =========================
   STATUS
========================= */

.status {
    display: inline-flex;

    align-items: center;

    gap: 6px;

    padding: 5px 9px;

    border-radius: 20px;

    background: #ecfdf5;

    color: #059669;

    font-size: 11px;

    font-weight: 600;
}

.status-dot {
    width: 7px;
    height: 7px;

    background: #10b981;

    border-radius: 50%;
}


/* =========================
   FOOTER
========================= */

.footer {
    text-align: center;

    color: #94a3b8;

    font-size: 11px;

    padding: 20px;
}


/* =========================
   RESPONSIVE
========================= */

@media(max-width: 1100px) {

    .stats {
        grid-template-columns:
            repeat(2, 1fr);
    }

    .dashboard-grid {
        grid-template-columns: 1fr;
    }
}


@media(max-width: 750px) {

    .sidebar {
        width: 70px;
        padding: 20px 8px;
    }

    .logo-text,
    .logo-subtitle,
    .menu-title,
    .menu a span {
        display: none;
    }

    .logo {
        justify-content: center;
    }

    .menu a {
        justify-content: center;
    }

    .main {
        margin-left: 70px;
    }

    .content {
        padding: 20px;
    }

    .stats {
        grid-template-columns: 1fr;
    }

    .topbar {
        padding: 0 20px;
    }

    .profile-info {
        display: none;
    }
}


@media(max-width: 500px) {

    .welcome {
        padding: 25px;
    }

    .welcome h1 {
        font-size: 22px;
    }

    .actions {
        grid-template-columns: 1fr;
    }
}

</style>

</head>


<body>


<!-- =====================================================
     SIDEBAR
===================================================== -->

<div class="sidebar">


    <!-- LOGO -->

    <div class="logo">

        <div class="logo-icon">
            🏢
        </div>

        <div>

            <div class="logo-text">
                CompanyHub
            </div>

            <div class="logo-subtitle">
                Business Portal
            </div>

        </div>

    </div>


    <!-- MENU -->

    <div class="menu">

        <div class="menu-title">
            Main Menu
        </div>


        <a href="companyDashboard"
           class="active">

            <div class="menu-icon">⌂</div>

            <span>Dashboard</span>

        </a>


        <a href="addProduct">

            <div class="menu-icon">＋</div>

            <span>Add Product</span>

        </a>


        <a href="viewProducts">

            <div class="menu-icon">▣</div>

            <span>My Products</span>

        </a>


        <a href="stockManagement">

            <div class="menu-icon">▤</div>

            <span>Stock Management</span>

        </a>


        <div class="menu-title">
            Account
        </div>


        <a href="companyProfile">

            <div class="menu-icon">◉</div>

            <span>Company Profile</span>

        </a>


        <a href="updateCompany">

            <div class="menu-icon">✎</div>

            <span>Edit Company</span>

        </a>


        <a href="companyLogout">

            <div class="menu-icon">⇥</div>

            <span>Logout</span>

        </a>

    </div>

</div>



<!-- =====================================================
     MAIN
===================================================== -->

<div class="main">


    <!-- TOPBAR -->

    <div class="topbar">


        <div>

            <div class="page-title">
                Company Dashboard
            </div>

            <div class="page-subtitle">
                Manage your business and products
            </div>

        </div>


        <div class="top-profile">

            <div class="profile-avatar">

                ${company.name.substring(0,1)}

            </div>


            <div class="profile-info">

                <div class="profile-name">
                    ${company.name}
                </div>

                <div class="profile-email">
                    ${company.companyEmail}
                </div>

            </div>

        </div>

    </div>



    <!-- CONTENT -->

    <div class="content">


        <!-- =================================================
             WELCOME
        ================================================== -->

        <div class="welcome">

            <h1>
                Welcome back, ${company.name} 👋
            </h1>

            <p>
                Here's what's happening with your company today.
                Manage your products, stock and company information
                from one place.
            </p>

        </div>



        <!-- =================================================
             STATISTICS
        ================================================== -->

        <div class="stats">


            <div class="stat-card">

                <div>

                    <div class="stat-title">
                        Company ID
                    </div>

                    <div class="stat-number">
                        ${company.id}
                    </div>

                </div>

                <div class="stat-icon">
                    🏢
                </div>

            </div>


            <div class="stat-card">

                <div>

                    <div class="stat-title">
                        Products
                    </div>

                    <div class="stat-number">
                        0
                    </div>

                </div>

                <div class="stat-icon">
                    📦
                </div>

            </div>


            <div class="stat-card">

                <div>

                    <div class="stat-title">
                        Stock Items
                    </div>

                    <div class="stat-number">
                        0
                    </div>

                </div>

                <div class="stat-icon">
                    📊
                </div>

            </div>


            <div class="stat-card">

                <div>

                    <div class="stat-title">
                        Account Status
                    </div>

                    <div class="stat-number"
                         style="font-size:16px;">

                        <span class="status">

                            <span class="status-dot"></span>

                            Active

                        </span>

                    </div>

                </div>

                <div class="stat-icon">
                    ✓
                </div>

            </div>


        </div>



        <!-- =================================================
             DASHBOARD GRID
        ================================================== -->

        <div class="dashboard-grid">


            <!-- QUICK ACTIONS -->

            <div class="card">

                <div class="card-header">

                    <div class="card-title">
                        Quick Actions
                    </div>

                </div>


                <div class="actions">


                    <a href="addProduct"
                       class="action">

                        <div class="action-icon">
                            ➕
                        </div>

                        <div class="action-text">

                            <strong>
                                Add Product
                            </strong>

                            <span>
                                Add new products to your stock
                            </span>

                        </div>

                    </a>


                    <a href="viewProducts"
                       class="action">

                        <div class="action-icon">
                            📦
                        </div>

                        <div class="action-text">

                            <strong>
                                View Products
                            </strong>

                            <span>
                                Manage your products
                            </span>

                        </div>

                    </a>


                    <a href="stockManagement"
                       class="action">

                        <div class="action-icon">
                            📊
                        </div>

                        <div class="action-text">

                            <strong>
                                Stock Management
                            </strong>

                            <span>
                                Update quantity and availability
                            </span>

                        </div>

                    </a>


                    <a href="companyProfile"
                       class="action">

                        <div class="action-icon">
                            👤
                        </div>

                        <div class="action-text">

                            <strong>
                                Company Profile
                            </strong>

                            <span>
                                View company information
                            </span>

                        </div>

                    </a>


                </div>

            </div>



            <!-- COMPANY INFORMATION -->

            <div class="card">

                <div class="card-header">

                    <div class="card-title">
                        Company Details
                    </div>

                    <a href="companyProfile"
                       class="card-link">

                        View

                    </a>

                </div>


                <div class="info-row">

                    <div class="info-label">
                        Company ID
                    </div>

                    <div class="info-value">
                        ${company.id}
                    </div>

                </div>


                <div class="info-row">

                    <div class="info-label">
                        Company Name
                    </div>

                    <div class="info-value">
                        ${company.name}
                    </div>

                </div>


                <div class="info-row">

                    <div class="info-label">
                        Email
                    </div>

                    <div class="info-value">
                        ${company.companyEmail}
                    </div>

                </div>


                <div class="info-row">

                    <div class="info-label">
                        Phone
                    </div>

                    <div class="info-value">
                        ${company.phoneNo}
                    </div>

                </div>


                <div class="info-row">

                    <div class="info-label">
                        Manufacturer ID
                    </div>

                    <div class="info-value">
                        ${company.manufacturerId}
                    </div>

                </div>


            </div>

        </div>



        <!-- =================================================
             LOWER GRID
        ================================================== -->

        <div class="dashboard-grid">


            <!-- RECENT ACTIVITY -->

            <div class="card">

                <div class="card-header">

                    <div class="card-title">
                        Recent Activity
                    </div>

                </div>


                <div class="activity">

                    <div class="activity-icon">
                        🔐
                    </div>

                    <div class="activity-content">

                        <strong>
                            Company account logged in
                        </strong>

                        <span>
                            Current session
                        </span>

                    </div>

                </div>


                <div class="activity">

                    <div class="activity-icon">
                        🏢
                    </div>

                    <div class="activity-content">

                        <strong>
                            Company profile active
                        </strong>

                        <span>
                            Account is ready to manage products
                        </span>

                    </div>

                </div>


                <div class="activity">

                    <div class="activity-icon">
                        📦
                    </div>

                    <div class="activity-content">

                        <strong>
                            Product management
                        </strong>

                        <span>
                            Add products to start managing stock
                        </span>

                    </div>

                </div>


            </div>



            <!-- ADDRESS -->

            <div class="card">

                <div class="card-header">

                    <div class="card-title">
                        Company Address
                    </div>

                </div>


                <div class="address-box">

                    <strong>
                        ${company.name}
                    </strong>

                    <br>

                    ${company.cAddress.village}

                    <br>

                    ${company.cAddress.taluka}

                    <br>

                    ${company.cAddress.district}

                    <br>

                    PIN:
                    ${company.cAddress.pinCode}

                </div>

            </div>


        </div>



        <!-- =================================================
             COMPANY STATUS
        ================================================== -->

        <div class="card">

            <div class="card-header">

                <div class="card-title">
                    Account Information
                </div>

            </div>


            <div class="info-row">

                <div class="info-label">
                    Account Status
                </div>

                <div class="info-value">

                    <span class="status">

                        <span class="status-dot"></span>

                        Active

                    </span>

                </div>

            </div>


            <div class="info-row">

                <div class="info-label">
                    Company Email
                </div>

                <div class="info-value">
                    ${company.companyEmail}
                </div>

            </div>


            <div class="info-row">

                <div class="info-label">
                    Manufacturer ID
                </div>

                <div class="info-value">
                    ${company.manufacturerId}
                </div>

            </div>


        </div>


    </div>



    <!-- FOOTER -->

    <div class="footer">

        © 2026 CompanyHub · Company Management Portal

    </div>


</div>



<script>

function logoutConfirm() {

    return confirm(
        "Are you sure you want to logout?"
    );

}

</script>


</body>

</html>