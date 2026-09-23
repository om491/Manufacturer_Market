<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>

<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="UTF-8">

<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Manufacturer Dashboard</title>

<!-- Bootstrap -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet">

<!-- Bootstrap Icons -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">

<style>
body {
	margin: 0;
	font-family: Arial, sans-serif;
	background: #f4f6f9;
}

/* Sidebar */
.sidebar {
	position: fixed;
	left: 0;
	top: 0;
	width: 250px;
	height: 100vh;
	background: #172033;
	color: white;
	padding-top: 20px;
}

.brand {
	font-size: 22px;
	font-weight: bold;
	padding: 20px;
	text-align: center;
	border-bottom: 1px solid #30394d;
}

.brand i {
	color: #4dabf7;
	margin-right: 8px;
}

.menu {
	margin-top: 25px;
}

.menu a {
	display: block;
	color: #c8ced8;
	text-decoration: none;
	padding: 14px 25px;
	font-size: 15px;
	transition: 0.3s;
}

.menu a:hover, .menu a.active {
	background: #263653;
	color: white;
	border-left: 4px solid #4dabf7;
}

.menu i {
	margin-right: 12px;
}

/* Main */
.main {
	margin-left: 250px;
	min-height: 100vh;
}

/* Navbar */
.topbar {
	height: 70px;
	background: white;
	display: flex;
	align-items: center;
	justify-content: space-between;
	padding: 0 30px;
	box-shadow: 0 2px 10px rgba(0, 0, 0, 0.08);
}

.topbar h4 {
	margin: 0;
	font-weight: 600;
	color: #172033;
}

.profile {
	display: flex;
	align-items: center;
	gap: 12px;
}

.profile-icon {
	width: 42px;
	height: 42px;
	border-radius: 50%;
	background: #4dabf7;
	color: white;
	display: flex;
	justify-content: center;
	align-items: center;
	font-size: 20px;
}

.profile-info {
	line-height: 18px;
}

.profile-info strong {
	font-size: 14px;
}

.profile-info small {
	color: #777;
}

/* Content */
.content {
	padding: 30px;
}

.welcome {
	background: linear-gradient(135deg, #4dabf7, #3867d6);
	color: white;
	border-radius: 15px;
	padding: 30px;
	margin-bottom: 25px;
}

.welcome h2 {
	font-weight: bold;
}

.welcome p {
	margin-bottom: 0;
	opacity: 0.9;
}

/* Cards */
.info-card {
	background: white;
	border-radius: 14px;
	padding: 22px;
	box-shadow: 0 3px 15px rgba(0, 0, 0, 0.06);
	height: 100%;
}

.card-icon {
	width: 50px;
	height: 50px;
	border-radius: 12px;
	background: #e7f3ff;
	color: #3498db;
	display: flex;
	justify-content: center;
	align-items: center;
	font-size: 23px;
	margin-bottom: 15px;
}

.info-card h6 {
	color: #777;
	margin-bottom: 8px;
}

.info-card h4 {
	font-weight: 600;
	word-break: break-word;
}

/* Session section */
.session-box {
	background: white;
	border-radius: 15px;
	padding: 25px;
	margin-top: 25px;
	box-shadow: 0 3px 15px rgba(0, 0, 0, 0.06);
}

.session-title {
	font-weight: 600;
	margin-bottom: 20px;
	color: #172033;
}

.session-row {
	display: flex;
	justify-content: space-between;
	padding: 14px 5px;
	border-bottom: 1px solid #eee;
}

.session-row:last-child {
	border-bottom: none;
}

.session-label {
	color: #777;
}

.session-value {
	font-weight: 600;
	color: #333;
	text-align: right;
	word-break: break-all;
}

.online {
	color: #198754;
}

.online-dot {
	display: inline-block;
	width: 9px;
	height: 9px;
	background: #198754;
	border-radius: 50%;
	margin-right: 6px;
}

/* Buttons */
.action-btn {
	border-radius: 8px;
	padding: 10px 18px;
}

@media ( max-width : 768px) {
	.sidebar {
		width: 70px;
	}
	.brand span, .menu span {
		display: none;
	}
	.menu a {
		text-align: center;
		padding: 18px 10px;
	}
	.menu i {
		margin: 0;
		font-size: 20px;
	}
	.main {
		margin-left: 70px;
	}
	.profile-info {
		display: none;
	}
}
</style>

</head>

<body>


	<!-- ================= SIDEBAR ================= -->

	<div class="sidebar">

		<div class="brand">

			<i class="bi bi-buildings"></i> <span>Manufacturer</span>

		</div>


		<div class="menu">

			<a href="#" class="active"> <i class="bi bi-speedometer2"></i> <span>Dashboard</span>
			</a> <a href="#"> <i class="bi bi-box-seam"></i> <span>My
					Products</span>
			</a> <a href="#"> <i class="bi bi-plus-circle"></i> <span>Add
					Stock</span>
			</a> <a href="#"> <i class="bi bi-search"></i> <span>Search
					Products</span>
			</a> <a href="#"> <i class="bi bi-cart3"></i> <span>Orders</span>
			</a> <a href="#"> <i class="bi bi-bell"></i> <span>Notifications</span>
			</a> <a href="#"> <i class="bi bi-person"></i> <span>Profile</span>
			</a> <a href="#"> <i class="bi bi-gear"></i> <span>Settings</span>
			</a> <a href="manufacturerLogout"> <i class="bi bi-box-arrow-right"></i>
				<span>Logout</span>
			</a>

		</div>

	</div>


	<!-- ================= MAIN ================= -->

	<div class="main">


		<!-- TOP BAR -->

		<div class="topbar">

			<h4>Manufacturer Dashboard</h4>


			<div class="profile">

				<div class="profile-icon">

					<i class="bi bi-person"></i>

				</div>

				<div class="profile-info">

					<strong>${manufacturer.name}</strong> <br> <small>${email}</small>

				</div>

			</div>

		</div>


		<!-- CONTENT -->

		<div class="content">


			<!-- WELCOME -->

			<div class="welcome">

				<h2>Welcome, ${manufacturer.name}!</h2>

				<p>Manage your products, stock, orders and manufacturer account
					from your dashboard.</p>

			</div>


			<!-- INFORMATION CARDS -->

			<div class="row g-4">


				<!-- Manufacturer ID -->

				<div class="col-lg-3 col-md-6">

					<div class="info-card">

						<div class="card-icon">

							<i class="bi bi-person-badge"></i>

						</div>

						<h6>Manufacturer ID</h6>

						<h4>${manufacturer.id}</h4>

					</div>

				</div>

				<!-- Name -->

				<div class="col-lg-3 col-md-6">

					<div class="info-card">

						<div class="card-icon">

							<i class="bi bi-person"></i>

						</div>

						<h6>Name</h6>

						<h4>${manufacturer.name}</h4>

					</div>

				</div>


				<!-- Email -->

				<div class="col-lg-3 col-md-6">

					<div class="info-card">

						<div class="card-icon">

							<i class="bi bi-envelope"></i>

						</div>

						<h6>Email</h6>

						<h4>${manufacturer.email}</h4>

					</div>

				</div>


				<!-- Phone -->

				<div class="col-lg-3 col-md-6">

					<div class="info-card">

						<div class="card-icon">

							<i class="bi bi-telephone"></i>

						</div>

						<h6>Phone Number</h6>

						<h4>${manufacturer.phoneNo}</h4>

					</div>

				</div>

			</div>


			<!-- ================= SESSION INFORMATION ================= -->

			<div class="session-box">

				<h4 class="session-title">

					<i class="bi bi-shield-lock"></i> Current Session Information

				</h4>


				<div class="session-row">

					<span class="session-label"> <i class="bi bi-envelope me-2"></i>
						Login Email
					</span> <span class="session-value"> ${email} </span>

				</div>


				<div class="session-row">

					<span class="session-label"> <i class="bi bi-key me-2"></i>
						Session ID
					</span> <span class="session-value"> ${sessionId} </span>

				</div>


				<div class="session-row">

					<span class="session-label"> <i class="bi bi-clock me-2"></i>
						Login Time
					</span> <span class="session-value"> ${loginTime} </span>

				</div>


				<div class="session-row">

					<span class="session-label"> <i
						class="bi bi-circle-fill me-2"></i> Session Status
					</span> <span class="session-value online"> <span
						class="online-dot"></span> Active

					</span>

				</div>


				<div class="session-row">

					<span class="session-label"> <i
						class="bi bi-hourglass-split me-2"></i> Session Timeout
					</span> <span class="session-value"> 30 Minutes </span>

				</div>

			</div>


			<!-- ================= QUICK ACTIONS ================= -->

			<div class="session-box">

				<h4 class="session-title">

					<i class="bi bi-lightning"></i> Quick Actions

				</h4>


				<a href="#" class="btn btn-primary action-btn me-2"> <i
					class="bi bi-plus-circle"></i> Add Product

				</a> <a href="#" class="btn btn-success action-btn me-2"> <i
					class="bi bi-box-seam"></i> Manage Stock

				</a> <a href="#" class="btn btn-outline-primary action-btn"> <i
					class="bi bi-search"></i> Search Products

				</a> <a href="companyRegister" class="btn btn-warning action-btn me-2">
					<i class="bi bi-building-add"></i> Register Company
				</a>

			</div>


		</div>

	</div>


	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js">
		
	</script>

</body>

</html>