<%@ page language="java"
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false"%>

<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<%@ taglib prefix="fn" uri="jakarta.tags.functions"%>

<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="UTF-8">

    <meta name="viewport"
        content="width=device-width, initial-scale=1.0">

    <title>My Products</title>

    <!-- Bootstrap -->
    <link
        href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
        rel="stylesheet">

    <!-- Bootstrap Icons -->
    <link
        href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.css"
        rel="stylesheet">


    <style>

        * {
            box-sizing: border-box;
        }

        body {
            margin: 0;
            background: #f1f5f9;
            font-family: "Segoe UI", Arial, sans-serif;
            color: #1e293b;
        }


        /* ================= SIDEBAR ================= */

        .sidebar {
            width: 250px;
            min-height: 100vh;

            position: fixed;
            left: 0;
            top: 0;

            background: linear-gradient(
                180deg,
                #0f172a 0%,
                #172554 50%,
                #1d4ed8 100%
            );

            padding: 25px 15px;

            z-index: 1000;
        }


        .brand {
            color: white;

            font-size: 21px;

            font-weight: 700;

            padding: 10px 12px 25px;

            border-bottom: 1px solid
                rgba(255,255,255,0.15);

            margin-bottom: 20px;
        }


        .brand i {
            color: #60a5fa;

            margin-right: 8px;
        }


        .menu-link {
            display: flex;

            align-items: center;

            color: #cbd5e1;

            text-decoration: none;

            padding: 12px 15px;

            margin-bottom: 6px;

            border-radius: 10px;

            transition: 0.25s;
        }


        .menu-link i {
            width: 28px;

            font-size: 17px;
        }


        .menu-link:hover {
            background: rgba(255,255,255,0.12);

            color: white;

            transform: translateX(3px);
        }


        .menu-link.active {
            background: #2563eb;

            color: white;

            box-shadow:
                0 5px 15px rgba(37,99,235,0.35);
        }


        .logout {
            margin-top: 20px;

            border-top: 1px solid
                rgba(255,255,255,0.15);

            padding-top: 15px;
        }


        /* ================= MAIN ================= */

        .main {
            margin-left: 250px;

            padding: 30px;
        }


        /* ================= PAGE HEADER ================= */

        .page-header {
            background: white;

            border-radius: 18px;

            padding: 25px;

            margin-bottom: 25px;

            box-shadow:
                0 8px 25px rgba(15,23,42,0.07);
        }


        .page-title {
            margin: 0;

            font-size: 29px;

            font-weight: 700;

            color: #0f172a;
        }


        .page-title i {
            color: #2563eb;
        }


        .page-subtitle {
            margin: 7px 0 0;

            color: #64748b;
        }


        /* ================= ADD BUTTON ================= */

        .add-btn {
            display: inline-flex;

            align-items: center;

            background: linear-gradient(
                135deg,
                #2563eb,
                #4f46e5
            );

            color: white;

            text-decoration: none;

            border-radius: 10px;

            padding: 11px 20px;

            font-weight: 600;

            transition: 0.25s;
        }


        .add-btn:hover {
            color: white;

            transform: translateY(-2px);

            box-shadow:
                0 8px 20px rgba(37,99,235,0.30);
        }


        /* ================= SUMMARY ================= */

        .summary-card {
            background: white;

            border-radius: 15px;

            padding: 20px;

            margin-bottom: 25px;

            box-shadow:
                0 5px 20px rgba(15,23,42,0.06);
        }


        .summary-icon {
            width: 50px;
            height: 50px;

            border-radius: 12px;

            background: #dbeafe;

            color: #2563eb;

            display: flex;

            align-items: center;

            justify-content: center;

            font-size: 22px;
        }


        .summary-number {
            font-size: 25px;

            font-weight: 700;

            color: #0f172a;
        }


        .summary-label {
            color: #64748b;

            font-size: 14px;
        }


        /* ================= TABLE CARD ================= */

        .table-card {
            background: white;

            border-radius: 18px;

            box-shadow:
                0 8px 25px rgba(15,23,42,0.07);

            overflow: hidden;
        }


        /* ================= TABLE HEADER ================= */

        .table-header {
            padding: 20px 25px;

            border-bottom: 1px solid #e2e8f0;
        }


        .table-title {
            margin: 0;

            font-size: 20px;

            font-weight: 700;

            color: #0f172a;
        }


        .table-subtitle {
            margin-top: 5px;

            color: #64748b;

            font-size: 14px;
        }


        /* ================= SEARCH ================= */

        .search-box {
            position: relative;
        }


        .search-box i {
            position: absolute;

            left: 14px;

            top: 12px;

            color: #94a3b8;

            font-size: 17px;
        }


        .search-box input {
            height: 44px;

            padding-left: 40px;

            border-radius: 10px;

            border: 1px solid #cbd5e1;
        }


        .search-box input:focus {
            border-color: #2563eb;

            box-shadow:
                0 0 0 3px rgba(37,99,235,0.10);
        }


        /* ================= TABLE ================= */

        .table-responsive {
            overflow-x: auto;
        }


        .product-table {
            width: 100%;

            min-width: 850px;

            margin: 0;
        }


        .product-table thead {
            background: #f8fafc;
        }


        .product-table th {
            padding: 16px 20px;

            color: #475569;

            font-size: 13px;

            font-weight: 700;

            text-transform: uppercase;

            letter-spacing: 0.3px;

            white-space: nowrap;

            border-bottom: 1px solid #e2e8f0;
        }


        .product-table td {
            padding: 16px 20px;

            vertical-align: middle;

            border-bottom: 1px solid #f1f5f9;
        }


        .product-table tbody tr {
            transition: 0.2s;
        }


        .product-table tbody tr:hover {
            background: #f8fafc;
        }


        /* ================= PRODUCT NAME ================= */

        .product-info {
            display: flex;

            align-items: center;

            gap: 12px;
        }


        .product-icon {
            width: 42px;
            height: 42px;

            border-radius: 10px;

            background: #eff6ff;

            color: #2563eb;

            display: flex;

            align-items: center;

            justify-content: center;

            font-size: 19px;

            flex-shrink: 0;
        }


        .product-name {
            font-weight: 600;

            color: #0f172a;
        }


        /* ================= PRICE ================= */

        .price {
            color: #15803d;

            font-weight: 700;
        }


        /* ================= BADGES ================= */

        .quantity-badge {
            display: inline-flex;

            align-items: center;

            padding: 6px 12px;

            border-radius: 20px;

            background: #f1f5f9;

            color: #334155;

            font-size: 13px;

            font-weight: 600;
        }


        .company-badge {
            display: inline-flex;

            align-items: center;

            padding: 6px 12px;

            border-radius: 20px;

            background: #ede9fe;

            color: #6d28d9;

            font-size: 13px;

            font-weight: 600;
        }


        /* ================= ACTION BUTTONS ================= */

        .action-buttons {
            display: flex;

            gap: 8px;
        }


        .btn-update {
            width: 38px;
            height: 38px;

            display: inline-flex;

            align-items: center;

            justify-content: center;

            border: none;

            border-radius: 8px;

            background: #dbeafe;

            color: #2563eb;

            text-decoration: none;

            transition: 0.2s;
        }


        .btn-update:hover {
            background: #2563eb;

            color: white;

            transform: translateY(-2px);
        }


        .btn-delete {
            width: 38px;
            height: 38px;

            display: inline-flex;

            align-items: center;

            justify-content: center;

            border: none;

            border-radius: 8px;

            background: #fee2e2;

            color: #dc2626;

            text-decoration: none;

            transition: 0.2s;
        }


        .btn-delete:hover {
            background: #dc2626;

            color: white;

            transform: translateY(-2px);
        }


        /* ================= EMPTY ================= */

        .empty-state {
            text-align: center;

            padding: 70px 20px;
        }


        .empty-icon {
            width: 85px;
            height: 85px;

            margin: auto;

            border-radius: 50%;

            background: #eff6ff;

            color: #2563eb;

            display: flex;

            align-items: center;

            justify-content: center;

            font-size: 38px;
        }


        .empty-state h4 {
            margin-top: 20px;

            font-weight: 700;
        }


        .empty-state p {
            color: #64748b;
        }


        /* ================= FOOTER ================= */

        .footer {
            text-align: center;

            color: #94a3b8;

            font-size: 13px;

            padding: 25px 0 5px;
        }


        /* ================= RESPONSIVE ================= */

        @media (max-width: 991px) {

            .sidebar {
                position: relative;

                width: 100%;

                min-height: auto;
            }


            .main {
                margin-left: 0;

                padding: 20px;
            }

        }


        @media (max-width: 576px) {

            .main {
                padding: 15px;
            }


            .page-header {
                padding: 20px;
            }


            .page-title {
                font-size: 23px;
            }


            .add-btn {
                width: 100%;

                justify-content: center;

                margin-top: 15px;
            }


            .table-header {
                padding: 18px;
            }


            .search-box {
                margin-top: 15px;
            }

        }

    </style>

</head>


<body>


<!-- ================= SIDEBAR ================= -->

<div class="sidebar">

    <div class="brand">

        <i class="bi bi-buildings-fill"></i>

        Company Portal

    </div>


    <a href="/crud/companyDashboard"
       class="menu-link">

        <i class="bi bi-speedometer2"></i>

        <span>Dashboard</span>

    </a>


    <a href="/crud/addProduct"
       class="menu-link">

        <i class="bi bi-plus-circle"></i>

        <span>Add Product</span>

    </a>


    <a href="/crud/viewProducts"
       class="menu-link active">

        <i class="bi bi-box-seam"></i>

        <span>My Products</span>

    </a>


    <a href="#"
       class="menu-link">

        <i class="bi bi-search"></i>

        <span>Search Products</span>

    </a>


    <a href="#"
       class="menu-link">

        <i class="bi bi-cart3"></i>

        <span>Orders</span>

    </a>


    <a href="#"
       class="menu-link">

        <i class="bi bi-bell"></i>

        <span>Notifications</span>

    </a>


    <a href="#"
       class="menu-link">

        <i class="bi bi-person-circle"></i>

        <span>Profile</span>

    </a>


    <a href="#"
       class="menu-link">

        <i class="bi bi-gear"></i>

        <span>Settings</span>

    </a>


    <div class="logout">

        <a href="/crud/companyLogout"
           class="menu-link">

            <i class="bi bi-box-arrow-right"></i>

            <span>Logout</span>

        </a>

    </div>

</div>


<!-- ================= MAIN ================= -->

<div class="main">


    <!-- PAGE HEADER -->

    <div class="page-header">

        <div class="row align-items-center">

            <div class="col-lg-8">

                <h1 class="page-title">

                    <i class="bi bi-box-seam me-2"></i>

                    My Products

                </h1>

                <p class="page-subtitle">

                    Manage products registered under your company.

                </p>

            </div>


            <div class="col-lg-4 text-lg-end">

                <a href="/crud/addProduct"
                   class="add-btn">

                    <i class="bi bi-plus-lg me-2"></i>

                    Add Product

                </a>

            </div>

        </div>

    </div>


    <!-- ================= SUMMARY ================= -->

    <div class="row">


        <div class="col-md-6">

            <div class="summary-card">

                <div class="d-flex align-items-center">

                    <div class="summary-icon me-3">

                        <i class="bi bi-box-seam"></i>

                    </div>


                    <div>

                        <div class="summary-number">

                            ${fn:length(products)}

                        </div>

                        <div class="summary-label">

                            Total Products

                        </div>

                    </div>

                </div>

            </div>

        </div>


        <div class="col-md-6">

            <div class="summary-card">

                <div class="d-flex align-items-center">

                    <div class="summary-icon me-3">

                        <i class="bi bi-building"></i>

                    </div>


                    <div>

                        <div class="summary-number">

                            ${sessionScope.companyId}

                        </div>

                        <div class="summary-label">

                            Company ID

                        </div>

                    </div>

                </div>

            </div>

        </div>


    </div>


    <!-- ================= TABLE CARD ================= -->

    <div class="table-card">


        <!-- TABLE HEADER -->

        <div class="table-header">

            <div class="row align-items-center">


                <div class="col-lg-6">

                    <h2 class="table-title">

                        Product Inventory

                    </h2>

                    <div class="table-subtitle">

                        View and manage your products

                    </div>

                </div>


                <div class="col-lg-6">

                    <div class="search-box">

                        <i class="bi bi-search"></i>

                        <input
                            type="text"
                            id="searchProduct"
                            class="form-control"
                            placeholder="Search product by name...">

                    </div>

                </div>


            </div>

        </div>


        <!-- ================= PRODUCTS ================= -->

        <c:choose>


            <c:when test="${not empty products}">


                <div class="table-responsive">


                    <table
                        class="table product-table"
                        id="productTable">


                        <thead>

                            <tr>

                                <th>ID</th>

                                <th>Product</th>

                                <th>Price</th>

                                <th>Quantity</th>

                                <th>Company ID</th>

                                <th>Actions</th>

                            </tr>

                        </thead>


                        <tbody>


                            <c:forEach
                                var="product"
                                items="${products}">


                                <tr>


                                    <!-- ID -->

                                    <td>

                                        <strong>

                                            ${product.id}

                                        </strong>

                                    </td>


                                    <!-- PRODUCT -->

                                    <td>

                                        <div class="product-info">

                                            <div class="product-icon">

                                                <i class="bi bi-box"></i>

                                            </div>


                                            <span class="product-name">

                                                <c:out
                                                    value="${product.name}" />

                                            </span>

                                        </div>

                                    </td>


                                    <!-- PRICE -->

                                    <td>

                                        <span class="price">

                                            ₹ ${product.price}

                                        </span>

                                    </td>


                                    <!-- QUANTITY -->

                                    <td>

                                        <span class="quantity-badge">

                                            <i class="bi bi-stack me-1"></i>

                                            ${product.quantity}

                                        </span>

                                    </td>


                                    <!-- COMPANY ID -->

                                    <td>

                                        <span class="company-badge">

                                            <i class="bi bi-building me-1"></i>

                                            ${product.company_id}

                                        </span>

                                    </td>


                                    <!-- ACTIONS -->

                                    <td>

                                        <div class="action-buttons">


                                            <!-- UPDATE -->

                                            <a
                                                href="/crud/updateProduct?id=${product.id}"
                                                class="btn-update"
                                                title="Update Product">

                                                <i class="bi bi-pencil-square"></i>

                                            </a>


                                            <!-- DELETE -->

                                            <a
                                                href="/crud/deleteProduct?id=${product.id}"
                                                class="btn-delete"
                                                title="Delete Product"
                                                onclick="return confirmDelete();">

                                                <i class="bi bi-trash3"></i>

                                            </a>


                                        </div>

                                    </td>


                                </tr>


                            </c:forEach>


                        </tbody>


                    </table>


                </div>


            </c:when>


            <c:otherwise>


                <div class="empty-state">

                    <div class="empty-icon">

                        <i class="bi bi-box-seam"></i>

                    </div>


                    <h4>No Products Found</h4>


                    <p>

                        You have not added any products yet.

                    </p>


                    <a
                        href="/crud/addProduct"
                        class="add-btn">

                        <i class="bi bi-plus-lg me-2"></i>

                        Add Product

                    </a>

                </div>


            </c:otherwise>


        </c:choose>


    </div>


    <div class="footer">

        © 2026 Company Portal | Product Management System

    </div>


</div>


<!-- ================= JAVASCRIPT ================= -->

<script>

    /* SEARCH */

    document
        .getElementById("searchProduct")
        .addEventListener("keyup", function () {

            var searchValue =
                this.value.toLowerCase();

            var rows =
                document.querySelectorAll(
                    "#productTable tbody tr"
                );


            rows.forEach(function(row) {

                var productName =
                    row.querySelector(
                        ".product-name"
                    ).textContent.toLowerCase();


                if (productName.includes(searchValue)) {

                    row.style.display = "";

                } else {

                    row.style.display = "none";

                }

            });

        });


    /* DELETE CONFIRMATION */

    function confirmDelete() {

        return confirm(
            "Are you sure you want to delete this product?"
        );

    }

</script>

</body>

</html>