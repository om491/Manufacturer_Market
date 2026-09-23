<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="UTF-8">

<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Manufacturer Registration</title>

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
	font-family: "Segoe UI", Arial, sans-serif;
	background: #f3f6fb;
	min-height: 100vh;
	padding: 40px 20px;
}

/* =========================
   MAIN CONTAINER
========================= */
.registration-container {
	max-width: 1050px;
	margin: auto;
	background: #ffffff;
	border-radius: 24px;
	overflow: hidden;
	box-shadow: 0 20px 55px rgba(15, 23, 42, 0.12);
}

/* =========================
   HEADER
========================= */
.registration-header {
	background: linear-gradient(135deg, #0f172a, #1d4ed8);
	color: white;
	padding: 35px 45px;
	position: relative;
	overflow: hidden;
}

.registration-header::after {
	content: "";
	position: absolute;
	width: 250px;
	height: 250px;
	border-radius: 50%;
	background: rgba(255, 255, 255, 0.06);
	right: -80px;
	top: -100px;
}

.header-content {
	position: relative;
	z-index: 2;
}

.header-icon {
	width: 60px;
	height: 60px;
	border-radius: 16px;
	background: rgba(255, 255, 255, 0.15);
	display: flex;
	align-items: center;
	justify-content: center;
	font-size: 28px;
	margin-bottom: 15px;
}

.registration-header h1 {
	font-size: 30px;
	font-weight: 700;
	margin-bottom: 7px;
}

.registration-header p {
	margin: 0;
	color: #dbeafe;
	font-size: 14px;
}

/* =========================
   FORM AREA
========================= */
.form-container {
	padding: 40px 45px;
}

/* =========================
   SECTION
========================= */
.form-section {
	margin-bottom: 35px;
}

.section-title {
	display: flex;
	align-items: center;
	gap: 12px;
	margin-bottom: 25px;
	padding-bottom: 12px;
	border-bottom: 1px solid #e5e7eb;
}

.section-icon {
	width: 40px;
	height: 40px;
	border-radius: 10px;
	background: #eff6ff;
	color: #2563eb;
	display: flex;
	align-items: center;
	justify-content: center;
	font-size: 18px;
}

.section-title h4 {
	margin: 0;
	color: #111827;
	font-size: 18px;
	font-weight: 700;
}

.section-title span {
	display: block;
	color: #9ca3af;
	font-size: 12px;
	font-weight: 400;
}

/* =========================
   FORM
========================= */
.form-label {
	font-size: 14px;
	font-weight: 600;
	color: #374151;
	margin-bottom: 8px;
}

.required {
	color: #dc2626;
}

.input-wrapper {
	position: relative;
}

.input-wrapper>i {
	position: absolute;
	left: 15px;
	top: 50%;
	transform: translateY(-50%);
	color: #9ca3af;
	font-size: 17px;
}

.form-control, .form-select {
	height: 49px;
	border: 1px solid #d1d5db;
	border-radius: 10px;
	font-size: 14px;
	transition: 0.25s;
}

.input-wrapper .form-control {
	padding-left: 44px;
	padding-right: 44px;
}

.form-control:focus, .form-select:focus {
	border-color: #2563eb;
	box-shadow: 0 0 0 4px rgba(37, 99, 235, 0.10);
}

.form-control::placeholder {
	color: #9ca3af;
}

/* =========================
   PASSWORD
========================= */
.toggle-password {
	position: absolute;
	right: 13px;
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

/* =========================
   ADDRESS BOX
========================= */
.address-box {
	background: #f8fafc;
	border: 1px solid #e5e7eb;
	border-radius: 14px;
	padding: 25px;
}

/* =========================
   BUTTONS
========================= */
.form-actions {
	display: flex;
	gap: 15px;
	margin-top: 10px;
	padding-top: 25px;
	border-top: 1px solid #e5e7eb;
}

.register-btn {
	flex: 1;
	height: 51px;
	border: none;
	border-radius: 10px;
	background: linear-gradient(135deg, #2563eb, #1d4ed8);
	color: white;
	font-size: 15px;
	font-weight: 600;
	transition: 0.3s;
}

.register-btn:hover {
	transform: translateY(-2px);
	box-shadow: 0 10px 22px rgba(37, 99, 235, 0.28);
}

.reset-btn {
	height: 51px;
	padding: 0 30px;
	border: 1px solid #d1d5db;
	border-radius: 10px;
	background: white;
	color: #4b5563;
	font-weight: 600;
	transition: 0.3s;
}

.reset-btn:hover {
	background: #f9fafb;
	border-color: #9ca3af;
}

/* =========================
   LOGIN LINK
========================= */
.login-link {
	text-align: center;
	margin-top: 25px;
	font-size: 13px;
	color: #6b7280;
}

.login-link a {
	color: #2563eb;
	text-decoration: none;
	font-weight: 600;
}

.login-link a:hover {
	text-decoration: underline;
}

/* =========================
   FOOTER
========================= */
.footer {
	text-align: center;
	padding: 20px;
	background: #f8fafc;
	color: #9ca3af;
	font-size: 11px;
}

/* =========================
   RESPONSIVE
========================= */
@media ( max-width : 768px) {
	body {
		padding: 15px;
	}
	.registration-header {
		padding: 30px 25px;
	}
	.form-container {
		padding: 30px 25px;
	}
	.form-actions {
		flex-direction: column;
	}
	.reset-btn {
		width: 100%;
	}
}
</style>

</head>


<body>


	<div class="registration-container">


		<!-- =========================
	     HEADER
	========================= -->

		<div class="registration-header">

			<div class="header-content">

				<div class="header-icon">
					<i class="bi bi-building"></i>
				</div>

				<h1>Manufacturer Registration</h1>

				<p>Create your manufacturer account and start managing your
					products and stock.</p>

			</div>

		</div>


		<!-- =========================
	     FORM
	========================= -->

		<div class="form-container">

			<form action="registerManufacturer" method="post"
				onsubmit="return validateForm()">


				<!-- =========================
			     MANUFACTURER DETAILS
			========================= -->

				<div class="form-section">

					<div class="section-title">

						<div class="section-icon">
							<i class="bi bi-person-badge"></i>
						</div>

						<div>
							<h4>Manufacturer Details</h4>
							<span>Enter your basic account information</span>
						</div>

					</div>


					<div class="row g-4">


						<!-- ID -->

						<div class="col-md-6">

							<label class="form-label" for="id"> Manufacturer ID <span
								class="required">*</span>
							</label>

							<div class="input-wrapper">

								<i class="bi bi-hash"></i> <input type="number"
									class="form-control" id="id" name="id"
									placeholder="Enter manufacturer ID" required>

							</div>

						</div>


						<!-- Name -->

						<div class="col-md-6">

							<label class="form-label" for="name"> Manufacturer Name <span
								class="required">*</span>
							</label>

							<div class="input-wrapper">

								<i class="bi bi-person"></i> <input type="text"
									class="form-control" id="name" name="name"
									placeholder="Enter manufacturer name" required>

							</div>

						</div>


						<!-- Email -->

						<div class="col-md-6">

							<label class="form-label" for="email"> Email Address <span
								class="required">*</span>
							</label>

							<div class="input-wrapper">

								<i class="bi bi-envelope"></i> <input type="email"
									class="form-control" id="email" name="email"
									placeholder="Enter email address" autocomplete="email" required>

							</div>

						</div>


						<!-- Phone -->

						<div class="col-md-6">

							<label class="form-label" for="phoneNo"> Phone Number <span
								class="required">*</span>
							</label>

							<div class="input-wrapper">

								<i class="bi bi-telephone"></i> <input type="tel"
									class="form-control" id="phoneNo" name="phoneNo"
									placeholder="Enter 10-digit phone number" maxlength="10"
									required>

							</div>

						</div>

			<!-- =========================
			     ADDRESS DETAILS
			========================= -->

						<div class="form-section">

							<div class="section-title">

								<div class="section-icon">
									<i class="bi bi-geo-alt"></i>
								</div>

								<div>
									<h4>Manufacturing Address</h4>
									<span>Enter the location of your manufacturing unit</span>
								</div>

							</div>


							<div class="address-box">

								<div class="row g-4">


									<!-- Village -->

									<div class="col-md-6">

										<label class="form-label" for="village"> Village <span
											class="required">*</span>

										</label>

										<div class="input-wrapper">

											<i class="bi bi-house"></i> <input type="text"
												class="form-control" id="village" name="mAddress.village"
												placeholder="Enter village" required>

										</div>

									</div>


									<!-- Taluka -->

									<div class="col-md-6">

										<label class="form-label" for="taluka"> Taluka <span
											class="required">*</span>

										</label>

										<div class="input-wrapper">

											<i class="bi bi-map"></i> <input type="text"
												class="form-control" id="taluka" name="mAddress.taluka"
												placeholder="Enter taluka" required>

										</div>

									</div>


									<!-- District -->

									<div class="col-md-6">

										<label class="form-label" for="district"> District <span
											class="required">*</span>

										</label>

										<div class="input-wrapper">

											<i class="bi bi-geo"></i> <input type="text"
												class="form-control" id="district" name="mAddress.district"
												placeholder="Enter district" required>

										</div>

									</div>


									<!-- PIN -->

									<div class="col-md-6">

										<label class="form-label" for="pinCode"> PIN Code <span
											class="required">*</span>

										</label>

										<div class="input-wrapper">

											<i class="bi bi-mailbox"></i> <input type="number"
												class="form-control" id="pinCode" name="mAddress.pinCode"
												placeholder="Enter 6-digit PIN code" required>

										</div>

									</div>

								</div>

							</div>

						</div>


						<!-- =========================
			     BUTTONS
			========================= -->

						<div class="form-actions">

							<button type="reset" class="reset-btn">

								<i class="bi bi-arrow-counterclockwise"></i> &nbsp; Reset

							</button>


							<button type="submit" class="register-btn">

								<i class="bi bi-person-plus-fill"></i> &nbsp; Create
								Manufacturer Account

							</button>

						</div>


						<!-- Login -->

						<div class="login-link">

							Already have an account? <a href="manufacturerLogin"> Login
								here </a>

						</div>
			</form>

		</div>


		<!-- Footer -->

		<div class="footer">© 2026 Manufacturer Management System. All
			Rights Reserved.</div>


	</div>


	<!-- =========================
     JAVASCRIPT
========================= -->

	<script>
		/* =========================
		 SHOW / HIDE PASSWORD
		 ========================= */

		function togglePassword(inputId, iconId) {

			const password = document.getElementById(inputId);

			const icon = document.getElementById(iconId);

			if (password.type === "password") {

				password.type = "text";

				icon.classList.remove("bi-eye");

				icon.classList.add("bi-eye-slash");

			} else {

				password.type = "password";

				icon.classList.remove("bi-eye-slash");

				icon.classList.add("bi-eye");
			}

		}

		/* =========================
		 FORM VALIDATION
		 ========================= */

		function validateForm() {

			const password = document.getElementById("password").value;

			const confirmPassword = document.getElementById("confirmPassword").value;

			const phone = document.getElementById("phoneNo").value;

			const pin = document.getElementById("pinCode").value;

			/* Password */

			if (password.length < 6) {

				alert("Password must contain at least 6 characters.");

				return false;
			}

			/* Confirm password */

			if (password !== confirmPassword) {

				alert("Password and Confirm Password do not match.");

				return false;
			}

			/* Phone */

			if (!/^[0-9]{10}$/.test(phone)) {

				alert("Please enter a valid 10-digit phone number.");

				return false;
			}

			/* PIN */

			if (!/^[0-9]{6}$/.test(pin)) {

				alert("Please enter a valid 6-digit PIN code.");

				return false;
			}

			return true;
		}
	</script>


	<!-- Bootstrap JS -->

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js">
		
	</script>


</body>

</html>