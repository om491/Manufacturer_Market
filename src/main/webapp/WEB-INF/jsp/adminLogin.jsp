<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Admin Login</title>

<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet">

<!-- Bootstrap Icons -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.css"
	rel="stylesheet">

<style>

/* =========================
   GLOBAL
========================= */
* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
}

body {
	min-height: 100vh;
	font-family: "Segoe UI", Arial, sans-serif;
	background: #f3f6fb;
	display: flex;
	align-items: center;
	justify-content: center;
	padding: 30px;
}

/* =========================
   MAIN CONTAINER
========================= */
.login-container {
	width: 100%;
	max-width: 1050px;
	min-height: 650px;
	background: white;
	border-radius: 25px;
	overflow: hidden;
	box-shadow: 0 20px 60px rgba(15, 23, 42, 0.15);
	display: flex;
}

/* =========================
   LEFT SIDE
========================= */
.left-section {
	width: 50%;
	background: linear-gradient(145deg, #0f172a, #1d4ed8);
	color: white;
	padding: 55px 50px;
	position: relative;
	overflow: hidden;
	display: flex;
	flex-direction: column;
	justify-content: center;
}

/* Decorative circles */
.left-section::before {
	content: "";
	position: absolute;
	width: 300px;
	height: 300px;
	border-radius: 50%;
	background: rgba(255, 255, 255, 0.06);
	top: -120px;
	left: -100px;
}

.left-section::after {
	content: "";
	position: absolute;
	width: 350px;
	height: 350px;
	border-radius: 50%;
	background: rgba(255, 255, 255, 0.05);
	bottom: -180px;
	right: -120px;
}

.brand {
	position: relative;
	z-index: 2;
	margin-bottom: 45px;
}

.brand-icon {
	width: 65px;
	height: 65px;
	border-radius: 18px;
	background: rgba(255, 255, 255, 0.15);
	backdrop-filter: blur(10px);
	display: flex;
	align-items: center;
	justify-content: center;
	font-size: 30px;
	margin-bottom: 20px;
}

.brand h1 {
	font-size: 34px;
	font-weight: 700;
	margin-bottom: 10px;
}

.brand p {
	color: #dbeafe;
	font-size: 15px;
	line-height: 1.7;
	max-width: 400px;
}

/* Features */
.features {
	position: relative;
	z-index: 2;
}

.feature {
	display: flex;
	align-items: center;
	gap: 15px;
	margin-bottom: 25px;
}

.feature-icon {
	width: 43px;
	height: 43px;
	border-radius: 12px;
	background: rgba(255, 255, 255, 0.12);
	display: flex;
	align-items: center;
	justify-content: center;
	font-size: 19px;
	flex-shrink: 0;
}

.feature-text h6 {
	margin: 0;
	font-size: 15px;
	font-weight: 600;
}

.feature-text p {
	margin: 3px 0 0;
	font-size: 12px;
	color: #bfdbfe;
}

/* =========================
   RIGHT SIDE
========================= */
.right-section {
	width: 50%;
	padding: 55px 60px;
	display: flex;
	align-items: center;
	justify-content: center;
	background: #ffffff;
}

.login-content {
	width: 100%;
	max-width: 410px;
}

/* Header */
.login-header {
	margin-bottom: 35px;
}

.admin-icon {
	width: 70px;
	height: 70px;
	border-radius: 18px;
	background: linear-gradient(135deg, #2563eb, #1d4ed8);
	color: white;
	display: flex;
	align-items: center;
	justify-content: center;
	font-size: 31px;
	margin-bottom: 20px;
	box-shadow: 0 10px 25px rgba(37, 99, 235, 0.25);
}

.login-header h2 {
	font-size: 30px;
	font-weight: 700;
	color: #111827;
	margin-bottom: 8px;
}

.login-header p {
	color: #6b7280;
	font-size: 14px;
}

/* =========================
   ERROR MESSAGE
========================= */
.error-message {
	display: none;
	background: #fef2f2;
	border: 1px solid #fecaca;
	color: #dc2626;
	padding: 12px 14px;
	border-radius: 10px;
	font-size: 13px;
	margin-bottom: 20px;
}

/* =========================
   FORM
========================= */
.form-group {
	margin-bottom: 22px;
}

.form-label {
	display: block;
	font-size: 14px;
	font-weight: 600;
	color: #374151;
	margin-bottom: 8px;
}

.input-wrapper {
	position: relative;
}

.input-wrapper i {
	position: absolute;
	left: 15px;
	top: 50%;
	transform: translateY(-50%);
	color: #9ca3af;
	font-size: 17px;
}

.form-control {
	height: 50px;
	border-radius: 11px;
	border: 1px solid #d1d5db;
	padding-left: 45px;
	padding-right: 45px;
	font-size: 14px;
	transition: 0.25s;
}

.form-control:focus {
	border-color: #2563eb;
	box-shadow: 0 0 0 4px rgba(37, 99, 235, 0.10);
}

.form-control::placeholder {
	color: #9ca3af;
}

/* Password */
.toggle-password {
	position: absolute;
	right: 14px;
	top: 50%;
	transform: translateY(-50%);
	border: none;
	background: transparent;
	color: #6b7280;
	cursor: pointer;
	font-size: 18px;
}

.toggle-password:hover {
	color: #2563eb;
}

/* Validation */
.validation-error {
	display: block;
	color: #dc2626;
	font-size: 12px;
	margin-top: 6px;
}

/* =========================
   REMEMBER / FORGOT
========================= */
.login-options {
	display: flex;
	align-items: center;
	justify-content: space-between;
	margin-bottom: 25px;
}

.form-check-label {
	font-size: 13px;
	color: #4b5563;
}

.form-check-input {
	cursor: pointer;
}

.form-check-input:checked {
	background-color: #2563eb;
	border-color: #2563eb;
}

.forgot-link {
	text-decoration: none;
	color: #2563eb;
	font-size: 13px;
	font-weight: 500;
}

.forgot-link:hover {
	text-decoration: underline;
}

/* =========================
   LOGIN BUTTON
========================= */
.login-btn {
	width: 100%;
	height: 51px;
	border: none;
	border-radius: 11px;
	background: linear-gradient(135deg, #2563eb, #1d4ed8);
	color: white;
	font-size: 15px;
	font-weight: 600;
	cursor: pointer;
	transition: all 0.3s ease;
}

.login-btn:hover {
	transform: translateY(-2px);
	box-shadow: 0 10px 22px rgba(37, 99, 235, 0.30);
}

.login-btn:active {
	transform: translateY(0);
}

/* =========================
   BACK HOME
========================= */
.back-link {
	display: block;
	text-align: center;
	margin-top: 25px;
	color: #6b7280;
	text-decoration: none;
	font-size: 13px;
	transition: 0.2s;
}

.back-link:hover {
	color: #2563eb;
}

/* =========================
   FOOTER
========================= */
.footer-text {
	text-align: center;
	margin-top: 28px;
	font-size: 11px;
	color: #9ca3af;
}

/* =========================
   RESPONSIVE
========================= */
@media ( max-width : 850px) {
	body {
		padding: 20px;
	}
	.login-container {
		max-width: 500px;
	}
	.left-section {
		display: none;
	}
	.right-section {
		width: 100%;
		padding: 45px 35px;
	}
}

@media ( max-width : 450px) {
	body {
		padding: 10px;
	}
	.login-container {
		border-radius: 18px;
	}
	.right-section {
		padding: 35px 22px;
	}
	.login-header h2 {
		font-size: 26px;
	}
	.login-options {
		flex-direction: column;
		align-items: flex-start;
		gap: 12px;
	}
}
</style>

</head>

<body>

	<!-- =========================
     MAIN LOGIN CONTAINER
========================= -->

	<div class="login-container">

		<!-- =========================
	     LEFT SECTION
	========================= -->

		<div class="left-section">

			<div class="brand">

				<div class="brand-icon">
					<i class="bi bi-shield-lock-fill"></i>
				</div>

				<h1>Admin Portal</h1>

				<p>Manage your application securely from one powerful
					administration dashboard.</p>

			</div>


			<div class="features">

				<div class="feature">

					<div class="feature-icon">
						<i class="bi bi-shield-check"></i>
					</div>

					<div class="feature-text">
						<h6>Secure Access</h6>
						<p>Protected administrator authentication</p>
					</div>

				</div>


				<div class="feature">

					<div class="feature-icon">
						<i class="bi bi-speedometer2"></i>
					</div>

					<div class="feature-text">
						<h6>Powerful Dashboard</h6>
						<p>Manage users and application data</p>
					</div>

				</div>


				<div class="feature">

					<div class="feature-icon">
						<i class="bi bi-database-check"></i>
					</div>

					<div class="feature-text">
						<h6>Data Management</h6>
						<p>Control and manage system records</p>
					</div>

				</div>


				<div class="feature">

					<div class="feature-icon">
						<i class="bi bi-activity"></i>
					</div>

					<div class="feature-text">
						<h6>System Monitoring</h6>
						<p>Monitor important application activities</p>
					</div>

				</div>

			</div>

		</div>


		<!-- =========================
	     RIGHT SECTION
	========================= -->

		<div class="right-section">

			<div class="login-content">

				<!-- Header -->

				<div class="login-header">

					<div class="admin-icon">
						<i class="bi bi-person-lock"></i>
					</div>

					<h2>Welcome Back</h2>

					<p>Sign in with your administrator account to continue.</p>

				</div>


				<!-- Error Message -->

				<div id="errorMessage" class="error-message">

					<i class="bi bi-exclamation-circle-fill"></i> Please enter valid
					login details.

				</div>


				<!-- Login Form -->

				<form action="adminLogin" method="post"
					onsubmit="return validateForm()">


					<!-- Email -->

					<div class="form-group">

						<label for="email" class="form-label"> Email Address </label>

						<div class="input-wrapper">

							<i class="bi bi-envelope"></i> <input type="email"
								class="form-control" id="email" name="email"
								placeholder="Enter admin email" autocomplete="email">

						</div>

						<small id="emailError" class="validation-error"></small>

					</div>


					<!-- Password -->

					<div class="form-group">

						<label for="password" class="form-label"> Password </label>

						<div class="input-wrapper">

							<i class="bi bi-lock"></i> <input type="password"
								class="form-control" id="password" name="password"
								placeholder="Enter password" autocomplete="current-password">

							<button type="button" class="toggle-password"
								onclick="togglePassword()">

								<i id="eyeIcon" class="bi bi-eye"></i>

							</button>

						</div>

						<small id="passwordError" class="validation-error"></small>

					</div>


					<!-- Remember Me -->

					<div class="login-options">

						<div class="form-check">

							<input class="form-check-input" type="checkbox" id="rememberMe"
								name="rememberMe"> <label class="form-check-label"
								for="rememberMe"> Remember me </label>

						</div>


						<a href="#" class="forgot-link"> Forgot Password? </a>

					</div>


					<!-- Login Button -->

					<button type="submit" class="login-btn">

						<i class="bi bi-box-arrow-in-right"></i> &nbsp; Login to Admin
						Panel

					</button>

				</form>


				<!-- Back to Home -->

				<a href="home" class="back-link"> <i class="bi bi-arrow-left"></i>

					&nbsp; Back to Home

				</a>


				<!-- Footer -->

				<div class="footer-text">© 2026 Admin Panel. All Rights
					Reserved.</div>

			</div>

		</div>

	</div>


	<!-- =========================
     JAVASCRIPT
========================= -->

	<script>
		/* Show / Hide Password */

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

		/* Form Validation */

		function validateForm() {

			const email = document.getElementById("email").value.trim();

			const password = document.getElementById("password").value.trim();

			const emailError = document.getElementById("emailError");

			const passwordError = document.getElementById("passwordError");

			const errorMessage = document.getElementById("errorMessage");

			/* Clear previous errors */

			emailError.innerHTML = "";

			passwordError.innerHTML = "";

			errorMessage.style.display = "none";

			let valid = true;

			/* Email validation */

			if (email === "") {

				emailError.innerHTML = "Email address is required";

				valid = false;
			}

			/* Password validation */

			if (password === "") {

				passwordError.innerHTML = "Password is required";

				valid = false;

			} else if (password.length < 6) {

				passwordError.innerHTML = "Password must contain at least 6 characters";

				valid = false;
			}

			/* Show common error */

			if (!valid) {

				errorMessage.style.display = "block";
			}

			return valid;
		}
	</script>


	<!-- Bootstrap JS -->

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js">
		
	</script>

</body>

</html>