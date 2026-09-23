<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Manufacturer Login | StockHub</title>

<!-- Bootstrap 5 -->
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
	min-height: 100vh;
	font-family: "Segoe UI", Arial, sans-serif;
	background: #f4f7fb;
}

.login-wrapper {
	min-height: 100vh;
	display: flex;
	align-items: center;
	justify-content: center;
	padding: 30px;
}

.login-card {
	width: 100%;
	max-width: 1050px;
	min-height: 620px;
	background: white;
	border-radius: 24px;
	overflow: hidden;
	box-shadow: 0 20px 60px rgba(0, 0, 0, 0.12);
	display: flex;
}

/* LEFT SECTION */
.brand-section {
	width: 50%;
	padding: 55px;
	background: linear-gradient(145deg, #0f766e, #115e59);
	color: white;
	position: relative;
	overflow: hidden;
}

.brand-section::before {
	content: "";
	position: absolute;
	width: 300px;
	height: 300px;
	border-radius: 50%;
	background: rgba(255, 255, 255, 0.06);
	top: -100px;
	right: -100px;
}

.brand-section::after {
	content: "";
	position: absolute;
	width: 250px;
	height: 250px;
	border-radius: 50%;
	background: rgba(255, 255, 255, 0.05);
	bottom: -100px;
	left: -80px;
}

.logo {
	position: relative;
	z-index: 2;
	display: flex;
	align-items: center;
	gap: 12px;
	font-size: 25px;
	font-weight: 700;
}

.logo-icon {
	width: 48px;
	height: 48px;
	background: white;
	color: #0f766e;
	border-radius: 14px;
	display: flex;
	align-items: center;
	justify-content: center;
	font-size: 25px;
}

.brand-content {
	position: relative;
	z-index: 2;
	margin-top: 90px;
}

.brand-content h1 {
	font-size: 42px;
	font-weight: 700;
	line-height: 1.2;
	margin-bottom: 20px;
}

.brand-content p {
	color: #d9fffa;
	font-size: 16px;
	line-height: 1.7;
	max-width: 430px;
}

.feature {
	display: flex;
	align-items: center;
	gap: 15px;
	margin-top: 25px;
}

.feature-icon {
	width: 42px;
	height: 42px;
	border-radius: 12px;
	background: rgba(255, 255, 255, 0.12);
	display: flex;
	align-items: center;
	justify-content: center;
	font-size: 20px;
}

.feature span {
	font-size: 14px;
	color: #e3fffb;
}

/* RIGHT SECTION */
.form-section {
	width: 50%;
	padding: 55px 65px;
	display: flex;
	align-items: center;
}

.login-form {
	width: 100%;
	max-width: 410px;
	margin: auto;
}

.login-title {
	font-size: 32px;
	font-weight: 700;
	color: #1f2937;
	margin-bottom: 8px;
}

.login-subtitle {
	color: #6b7280;
	margin-bottom: 35px;
	font-size: 15px;
}

.form-label {
	font-weight: 600;
	color: #374151;
	font-size: 14px;
	margin-bottom: 8px;
}

.input-group {
	margin-bottom: 22px;
}

.input-group-text {
	background: white;
	border-right: none;
	color: #6b7280;
	border-color: #d1d5db;
}

.form-control {
	height: 52px;
	border-left: none;
	border-color: #d1d5db;
	font-size: 15px;
}

.form-control:focus {
	box-shadow: none;
	border-color: #0f766e;
}

.input-group:focus-within .input-group-text {
	border-color: #0f766e;
	color: #0f766e;
}

.password-toggle {
	cursor: pointer;
	background: white;
	border-left: none;
}

.password-toggle:hover {
	color: #0f766e;
}

.options {
	display: flex;
	justify-content: space-between;
	align-items: center;
	margin-bottom: 25px;
	font-size: 14px;
}

.form-check-input:checked {
	background-color: #0f766e;
	border-color: #0f766e;
}

.forgot-link {
	color: #0f766e;
	text-decoration: none;
	font-weight: 600;
}

.forgot-link:hover {
	text-decoration: underline;
}

.login-btn {
	width: 100%;
	height: 52px;
	border: none;
	border-radius: 10px;
	background: #0f766e;
	color: white;
	font-size: 16px;
	font-weight: 600;
	transition: 0.3s;
}

.login-btn:hover {
	background: #115e59;
	transform: translateY(-1px);
	box-shadow: 0 8px 20px rgba(15, 118, 110, 0.25);
}

.register-text {
	text-align: center;
	margin-top: 28px;
	color: #6b7280;
	font-size: 14px;
}

.register-link {
	color: #0f766e;
	font-weight: 700;
	text-decoration: none;
}

.register-link:hover {
	text-decoration: underline;
}

.security-text {
	text-align: center;
	margin-top: 35px;
	font-size: 12px;
	color: #9ca3af;
}

/* RESPONSIVE */
@media ( max-width : 850px) {
	.login-card {
		flex-direction: column;
	}
	.brand-section, .form-section {
		width: 100%;
	}
	.brand-section {
		min-height: 350px;
		padding: 40px;
	}
	.brand-content {
		margin-top: 50px;
	}
	.brand-content h1 {
		font-size: 32px;
	}
	.feature {
		display: none;
	}
	.form-section {
		padding: 45px 35px;
	}
}

@media ( max-width : 500px) {
	.login-wrapper {
		padding: 0;
	}
	.login-card {
		border-radius: 0;
		min-height: 100vh;
	}
	.brand-section {
		padding: 30px;
	}
	.form-section {
		padding: 35px 25px;
	}
}
</style>

</head>

<body>

	<div class="login-wrapper">

		<div class="login-card">

			<!-- LEFT BRAND SECTION -->

			<div class="brand-section">

				<div class="logo">

					<div class="logo-icon">
						<i class="bi bi-box-seam"></i>
					</div>

					<span>StockHub</span>

				</div>

				<div class="brand-content">

					<h1>
						Manufacturer<br> Portal
					</h1>

					<p>Manage your products, stock availability and business
						operations from one powerful platform.</p>

					<div class="feature">

						<div class="feature-icon">
							<i class="bi bi-boxes"></i>
						</div>

						<span> Manage your product inventory </span>

					</div>

					<div class="feature">

						<div class="feature-icon">
							<i class="bi bi-graph-up-arrow"></i>
						</div>

						<span> Track stock and product availability </span>

					</div>

					<div class="feature">

						<div class="feature-icon">
							<i class="bi bi-shield-check"></i>
						</div>

						<span> Secure manufacturer access </span>

					</div>

				</div>

			</div>


			<!-- LOGIN FORM -->

			<div class="form-section">

				<div class="login-form">

					<h2 class="login-title">Welcome back</h2>

					<p class="login-subtitle">Login to your manufacturer account</p>


					<!-- SUCCESS MESSAGE -->

					<%
					if (request.getAttribute("successMsg") != null) {
					%>

					<div class="alert alert-success alert-dismissible fade show">

						<i class="bi bi-check-circle me-2"></i>

						<%=request.getAttribute("successMsg")%>

						<button type="button" class="btn-close" data-bs-dismiss="alert">
						</button>

					</div>

					<%
					}
					%>


					<!-- ERROR MESSAGE -->

					<%
					if (request.getAttribute("errorMsg") != null) {
					%>

					<div class="alert alert-danger alert-dismissible fade show">

						<i class="bi bi-exclamation-circle me-2"></i>

						<%=request.getAttribute("errorMsg")%>

						<button type="button" class="btn-close" data-bs-dismiss="alert">
						</button>

					</div>

					<%
					}
					%>


					<!-- LOGIN FORM -->

					<form action="manufacturerLogin" method="post"
						onsubmit="return validateLogin()">

						<!-- EMAIL -->

						<label class="form-label"> Email Address </label>

						<div class="input-group">

							<span class="input-group-text"> <i class="bi bi-envelope"></i>
							</span> <input type="email" id="email" name="email" class="form-control"
								placeholder="Enter your email" required>

						</div>


						<!-- PASSWORD -->

						<label class="form-label"> Password </label>

						<div class="input-group">

							<span class="input-group-text"> <i class="bi bi-lock"></i>
							</span> <input type="password" id="password" name="password"
								class="form-control" placeholder="Enter your password" required>

							<span class="input-group-text password-toggle"
								onclick="togglePassword()"> <i class="bi bi-eye"
								id="eyeIcon"></i>

							</span>

						</div>


						<!-- OPTIONS -->

						<div class="options">

							<div class="form-check">

								<input class="form-check-input" type="checkbox" id="remember">

								<label class="form-check-label" for="remember"> Remember
									me </label>

							</div>

							<a href="forgotPassword" class="forgot-link"> Forgot
								Password? </a>

						</div>


						<!-- LOGIN BUTTON -->

						<button type="submit" class="login-btn">

							<i class="bi bi-box-arrow-in-right me-2"></i> Login

						</button>

					</form>


					<!-- REGISTER -->

					<div class="register-text">

						Don't have a manufacturer account? <a href="registerManufacturer"
							class="register-link"> Create Account </a>

					</div>


					<div class="security-text">

						<i class="bi bi-shield-lock me-1"></i> Your information is
						securely protected

					</div>

				</div>

			</div>

		</div>

	</div>


	<!-- Bootstrap JS -->

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js">
	</script>


	<script>
		function togglePassword() {

			const password = document.getElementById("password");
			const eyeIcon = document.getElementById("eyeIcon");

			if (password.type === "password") {

				password.type = "text";

				eyeIcon.classList.remove("bi-eye");
				eyeIcon.classList.add("bi-eye-slash");

			} else {

				password.type = "password";

				eyeIcon.classList.remove("bi-eye-slash");
				eyeIcon.classList.add("bi-eye");

			}
		}

		function validateLogin() {

			const email = document.getElementById("email").value.trim();
			const password = document.getElementById("password").value.trim();

			if (email === "") {

				alert("Please enter your email address.");
				return false;

			}

			if (password === "") {

				alert("Please enter your password.");
				return false;

			}

			return true;

		}
	</script>

</body>
</html>