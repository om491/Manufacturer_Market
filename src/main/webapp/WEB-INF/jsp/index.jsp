<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>StockConnect - Manufacturer Marketplace</title>

<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet">

<!-- Bootstrap Icons -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.css"
	rel="stylesheet">

<style>
* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
}

body {
	font-family: Arial, sans-serif;
	background: #f8fafc;
	color: #1e293b;
}

/* ================= NAVBAR ================= */
.navbar {
	background: #0f172a;
	padding: 15px 7%;
}

.navbar-brand {
	color: white !important;
	font-size: 24px;
	font-weight: 700;
}

.navbar-brand i {
	color: #38bdf8;
	margin-right: 8px;
}

.nav-link {
	color: #cbd5e1 !important;
	margin-left: 20px;
	transition: 0.3s;
}

.nav-link:hover {
	color: #38bdf8 !important;
}

.nav-btn {
	border: 1px solid #38bdf8;
	color: #38bdf8;
	border-radius: 8px;
	padding: 8px 18px !important;
}

.nav-btn:hover {
	background: #38bdf8;
	color: #0f172a !important;
}

/* ================= HERO ================= */
.hero {
	min-height: 520px;
	background: linear-gradient(rgba(15, 23, 42, 0.92),
		rgba(30, 58, 138, 0.88));
	display: flex;
	align-items: center;
	padding: 80px 7%;
}

.hero-content {
	max-width: 700px;
	color: white;
}

.hero-content h1 {
	font-size: 52px;
	font-weight: 800;
	line-height: 1.15;
	margin-bottom: 20px;
}

.hero-content h1 span {
	color: #38bdf8;
}

.hero-content p {
	font-size: 18px;
	line-height: 1.7;
	color: #dbeafe;
	margin-bottom: 30px;
}

.hero-btn {
	display: inline-block;
	text-decoration: none;
	padding: 13px 28px;
	border-radius: 9px;
	margin-right: 10px;
	font-weight: 600;
	transition: 0.3s;
}

.primary-btn {
	background: #38bdf8;
	color: #0f172a;
}

.primary-btn:hover {
	background: #7dd3fc;
	transform: translateY(-2px);
}

.secondary-btn {
	border: 1px solid white;
	color: white;
}

.secondary-btn:hover {
	background: white;
	color: #0f172a;
}

/* ================= FEATURES ================= */
.features {
	padding: 70px 7%;
}

.section-title {
	text-align: center;
	margin-bottom: 45px;
}

.section-title h2 {
	font-weight: 700;
	color: #0f172a;
}

.section-title p {
	color: #64748b;
}

.feature-card {
	background: white;
	border-radius: 15px;
	padding: 30px;
	text-align: center;
	height: 100%;
	border: 1px solid #e2e8f0;
	transition: 0.3s;
}

.feature-card:hover {
	transform: translateY(-7px);
	box-shadow: 0 15px 30px rgba(15, 23, 42, 0.12);
}

.feature-icon {
	width: 65px;
	height: 65px;
	margin: 0 auto 20px;
	border-radius: 15px;
	background: #e0f2fe;
	color: #0284c7;
	display: flex;
	align-items: center;
	justify-content: center;
	font-size: 30px;
}

.feature-card h4 {
	font-weight: 700;
	margin-bottom: 12px;
}

.feature-card p {
	color: #64748b;
	line-height: 1.6;
}

/* ================= USER TYPES ================= */
.access-section {
	background: #f1f5f9;
	padding: 70px 7%;
}

.access-card {
	background: white;
	border-radius: 18px;
	padding: 40px;
	border: 1px solid #e2e8f0;
	height: 100%;
	transition: 0.3s;
}

.access-card:hover {
	transform: translateY(-5px);
	box-shadow: 0 15px 35px rgba(0, 0, 0, 0.10);
}

.access-icon {
	font-size: 45px;
	color: #2563eb;
	margin-bottom: 15px;
}

.access-card h3 {
	font-weight: 700;
	margin-bottom: 12px;
}

.access-card p {
	color: #64748b;
	min-height: 55px;
}

.access-btn {
	display: inline-block;
	text-decoration: none;
	padding: 10px 22px;
	border-radius: 8px;
	margin-top: 15px;
	margin-right: 7px;
	font-weight: 600;
}

.login-btn {
	background: #2563eb;
	color: white;
}

.login-btn:hover {
	background: #1d4ed8;
	color: white;
}

.register-btn {
	border: 1px solid #2563eb;
	color: #2563eb;
}

.register-btn:hover {
	background: #2563eb;
	color: white;
}

/* ================= FOOTER ================= */
footer {
	background: #0f172a;
	color: #cbd5e1;
	padding: 30px 7%;
}

.footer-content {
	display: flex;
	justify-content: space-between;
	align-items: center;
}

.footer-brand {
	color: white;
	font-size: 20px;
	font-weight: 700;
}

.footer-icons a {
	color: #cbd5e1;
	font-size: 20px;
	margin-left: 15px;
	transition: 0.3s;
}

.footer-icons a:hover {
	color: #38bdf8;
}

/* ================= RESPONSIVE ================= */
@media ( max-width : 768px) {
	.hero-content h1 {
		font-size: 38px;
	}
	.hero-content p {
		font-size: 16px;
	}
	.footer-content {
		flex-direction: column;
		gap: 15px;
	}
}
</style>

</head>


<body>


	<!-- ================= NAVBAR ================= -->

	<nav class="navbar navbar-expand-lg">

		<div class="container-fluid">

			<a class="navbar-brand" href="home"> <i class="bi bi-box-seam"></i>
				StockConnect
			</a>


			<button class="navbar-toggler bg-light" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarMenu">

				<span class="navbar-toggler-icon"></span>

			</button>


			<div class="collapse navbar-collapse" id="navbarMenu">

				<ul class="navbar-nav ms-auto align-items-lg-center">

					<li class="nav-item"><a class="nav-link" href="home"> Home
					</a></li>

					<li class="nav-item"><a class="nav-link" href="#features">
							Features </a></li>

					<li class="nav-item"><a class="nav-link" href="#access">
							Get Started </a></li>

					<li class="nav-item"><a class="nav-link nav-btn"
						href="adminLogin"> <i class="bi bi-shield-lock"></i> Admin
					</a></li>

				</ul>

			</div>

		</div>

	</nav>


	<!-- ================= HERO ================= -->

	<section class="hero">

		<div class="hero-content">

			<h1>
				Find the Right Stock from <span>Trusted Manufacturers</span>
			</h1>

			<p>StockConnect is a manufacturer-to-manufacturer marketplace
				where manufacturers can upload their available products, manage
				stock, and discover products from other manufacturers.</p>


			<a href="manufacturerRegister" class="hero-btn primary-btn"> <i
				class="bi bi-person-plus"></i> Join as Manufacturer

			</a> <a href="#access" class="hero-btn secondary-btn"> Explore
				Platform </a>

		</div>

	</section>


	<!-- ================= FEATURES ================= -->

	<section class="features" id="features">

		<div class="section-title">

			<h2>Why Use StockConnect?</h2>

			<p>Everything you need to discover and manage manufacturer stock
				in one place.</p>

		</div>


		<div class="row g-4">


			<div class="col-md-4">

				<div class="feature-card">

					<div class="feature-icon">
						<i class="bi bi-search"></i>
					</div>

					<h4>Find Products</h4>

					<p>Search for specific products and discover manufacturers who
						currently have the required stock.</p>

				</div>

			</div>


			<div class="col-md-4">

				<div class="feature-card">

					<div class="feature-icon">
						<i class="bi bi-boxes"></i>
					</div>

					<h4>Manage Stock</h4>

					<p>Manufacturers can add products, update quantities, manage
						prices and keep their inventory information updated.</p>

				</div>

			</div>


			<div class="col-md-4">

				<div class="feature-card">

					<div class="feature-icon">
						<i class="bi bi-bell"></i>
					</div>

					<h4>Availability Updates</h4>

					<p>Keep track of product availability and receive updates when
						stock information changes.</p>

				</div>

			</div>

		</div>

	</section>


	<!-- ================= ACCESS ================= -->

	<section class="access-section" id="access">

		<div class="section-title">

			<h2>Choose Your Access</h2>

			<p>Select the appropriate account to continue.</p>

		</div>


		<div class="row g-4 justify-content-center">


			<!-- ADMIN -->

			<div class="col-md-5">

				<div class="access-card">

					<div class="access-icon">
						<i class="bi bi-shield-lock-fill"></i>
					</div>

					<h3>Administrator</h3>

					<p>Manage manufacturers, products, users and platform
						activities from the administration panel.</p>


					<a href="adminLogin" class="access-btn login-btn"> <i
						class="bi bi-box-arrow-in-right"></i> Admin Login

					</a>

				</div>

			</div>


			<!-- MANUFACTURER -->

			<div class="col-md-5">

				<div class="access-card">

					<div class="access-icon">
						<i class="bi bi-building"></i>
					</div>

					<h3>Manufacturer</h3>

					<p>Register your manufacturing business, upload available
						products and discover stock from other manufacturers.</p>


					<a href="manufacturerLogin" class="access-btn login-btn"> <i
						class="bi bi-box-arrow-in-right"></i> Login

					</a> <a href="manufacturerRegister" class="access-btn register-btn">

						<i class="bi bi-person-plus"></i> Register

					</a>

				</div>

			</div>


		</div>

	</section>


	<!-- ================= FOOTER ================= -->

	<footer>

		<div class="footer-content">

			<div class="footer-brand">

				<i class="bi bi-box-seam"></i> StockConnect

			</div>


			<div>© 2026 StockConnect. All Rights Reserved.</div>


			<div class="footer-icons">

				<a href="#"> <i class="bi bi-linkedin"></i>
				</a> <a href="#"> <i class="bi bi-envelope"></i>
				</a>

			</div>

		</div>

	</footer>


	<!-- Bootstrap JS -->

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js">
		
	</script>


	<script>
		// Smooth scrolling

		document.querySelectorAll('a[href^="#"]').forEach(
				function(link) {

					link.addEventListener("click", function(e) {

						const target = document.querySelector(this
								.getAttribute("href"));

						if (target) {

							e.preventDefault();

							target.scrollIntoView({
								behavior : "smooth"
							});

						}

					});

				});

		// Simple page-load animation

		window.addEventListener("load", function() {

			document.querySelector(".hero-content").style.opacity = "1";

		});
	</script>


</body>

</html>