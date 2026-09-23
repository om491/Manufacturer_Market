```jsp
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>Change Password</title>

<!-- Bootstrap 5.3.3 -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet">

<!-- Bootstrap Icons -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">

<style>
body {
	background: #f4f6f9;
	min-height: 100vh;
	display: flex;
	align-items: center;
	justify-content: center;
}

.password-card {
	width: 100%;
	max-width: 500px;
	background: white;
	border-radius: 15px;
	padding: 35px;
	box-shadow: 0 8px 25px rgba(0, 0, 0, 0.10);
}

.icon-box {
	width: 65px;
	height: 65px;
	border-radius: 50%;
	background: #e9f2ff;
	display: flex;
	align-items: center;
	justify-content: center;
	margin: auto;
}

.icon-box i {
	font-size: 30px;
	color: #0d6efd;
}

.form-control {
	height: 48px;
	border-radius: 8px;
}

.input-group .form-control {
	border-radius: 0;
}

.input-group .btn {
	height: 48px;
}

.btn-change {
	height: 48px;
	border-radius: 8px;
	font-weight: 600;
}

.back-link {
	text-decoration: none;
	color: #6c757d;
}

.back-link:hover {
	color: #0d6efd;
}

.password-rules {
	font-size: 13px;
	margin-top: 8px;
}

.password-rules div {
	margin-bottom: 3px;
}

.valid-rule {
	color: #198754;
}

.invalid-rule {
	color: #dc3545;
}

.error-message {
	color: #dc3545;
	font-size: 13px;
	margin-top: 5px;
}

.success-message {
	color: #198754;
	font-size: 13px;
	margin-top: 5px;
}
</style>

</head>

<body>

	<div class="password-card">

		<!-- Icon -->
		<div class="icon-box mb-3">
			<i class="bi bi-shield-lock"></i>
		</div>

		<h3 class="text-center fw-bold mb-2">Change Password</h3>

		<p class="text-center text-muted mb-4">Update your password to
			keep your account secure.</p>


		<!-- Success Message -->
		<%
		String success = (String) request.getAttribute("success");

		if (success != null) {
		%>

		<div class="alert alert-success alert-dismissible fade show">

			<i class="bi bi-check-circle me-1"></i>

			<%=success%>

			<button type="button" class="btn-close" data-bs-dismiss="alert">
			</button>

		</div>

		<%
		}
		%>


		<!-- Error Message -->
		<%
		String error = (String) request.getAttribute("error");

		if (error != null) {
		%>

		<div class="alert alert-danger alert-dismissible fade show">

			<i class="bi bi-exclamation-triangle me-1"></i>

			<%=error%>

			<button type="button" class="btn-close" data-bs-dismiss="alert">
			</button>

		</div>

		<%
		}
		%>


		<!-- Change Password Form -->

		<form action="changePassword" method="post" id="changePasswordForm"
			novalidate>


			<!-- Current Password -->

			<div class="mb-3">

				<label class="form-label fw-semibold"> Current Password </label>

				<div class="input-group">

					<span class="input-group-text"> <i class="bi bi-lock"></i>
					</span> <input type="password" name="currentPassword" id="currentPassword"
						class="form-control" placeholder="Enter current password" required>

					<button type="button" class="btn btn-outline-secondary"
						onclick="togglePassword('currentPassword', this)">

						<i class="bi bi-eye"></i>

					</button>

				</div>

				<div id="currentPasswordError" class="error-message"></div>

			</div>


			<!-- New Password -->

			<div class="mb-3">

				<label class="form-label fw-semibold"> New Password </label>

				<div class="input-group">

					<span class="input-group-text"> <i class="bi bi-key"></i>
					</span> <input type="password" name="newPassword" id="newPassword"
						class="form-control" placeholder="Enter new password" required>

					<button type="button" class="btn btn-outline-secondary"
						onclick="togglePassword('newPassword', this)">

						<i class="bi bi-eye"></i>

					</button>

				</div>


				<!-- Password Rules -->

				<div class="password-rules">

					<div id="lengthRule" class="invalid-rule">
						<i class="bi bi-x-circle"></i> At least 8 characters
					</div>

					<div id="upperRule" class="invalid-rule">
						<i class="bi bi-x-circle"></i> At least one uppercase letter
					</div>

					<div id="lowerRule" class="invalid-rule">
						<i class="bi bi-x-circle"></i> At least one lowercase letter
					</div>

					<div id="numberRule" class="invalid-rule">
						<i class="bi bi-x-circle"></i> At least one number
					</div>

					<div id="specialRule" class="invalid-rule">
						<i class="bi bi-x-circle"></i> At least one special character
					</div>

				</div>

				<div id="newPasswordError" class="error-message"></div>

			</div>


			<!-- Confirm Password -->

			<div class="mb-4">

				<label class="form-label fw-semibold"> Confirm New Password
				</label>

				<div class="input-group">

					<span class="input-group-text"> <i class="bi bi-key-fill"></i>
					</span> <input type="password" name="confirmPassword" id="confirmPassword"
						class="form-control" placeholder="Confirm new password" required>

					<button type="button" class="btn btn-outline-secondary"
						onclick="togglePassword('confirmPassword', this)">

						<i class="bi bi-eye"></i>

					</button>

				</div>

				<div id="confirmPasswordError" class="error-message"></div>

			</div>


			<!-- Submit -->

			<button type="submit" class="btn btn-primary w-100 btn-change">

				<i class="bi bi-check2-circle me-2"></i> Change Password

			</button>

		</form>


		<!-- Back -->

		<div class="text-center mt-4">

			<a href="manufacturerDashboard" class="back-link"> <i
				class="bi bi-arrow-left"></i> Back to Dashboard

			</a>

		</div>

	</div>


	<!-- Bootstrap JS -->

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js">
		
	</script>


	<script>
		/* =========================================
		 SHOW / HIDE PASSWORD
		 ========================================= */

		function togglePassword(id, button) {

			const password = document.getElementById(id);
			const icon = button.querySelector("i");

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

		/* =========================================
		 PASSWORD RULE FUNCTION
		 ========================================= */

		function updateRule(elementId, valid) {

			const element = document.getElementById(elementId);
			const icon = element.querySelector("i");

			if (valid) {

				element.classList.remove("invalid-rule");
				element.classList.add("valid-rule");

				icon.classList.remove("bi-x-circle");
				icon.classList.add("bi-check-circle");

			} else {

				element.classList.remove("valid-rule");
				element.classList.add("invalid-rule");

				icon.classList.remove("bi-check-circle");
				icon.classList.add("bi-x-circle");
			}
		}

		/* =========================================
		 NEW PASSWORD VALIDATION
		 ========================================= */

		document.getElementById("newPassword").addEventListener("input",
				function() {

					const password = this.value;

					const lengthValid = password.length >= 8;

					const upperValid = /[A-Z]/.test(password);

					const lowerValid = /[a-z]/.test(password);

					const numberValid = /[0-9]/.test(password);

					const specialValid = /[^A-Za-z0-9]/.test(password);

					updateRule("lengthRule", lengthValid);

					updateRule("upperRule", upperValid);

					updateRule("lowerRule", lowerValid);

					updateRule("numberRule", numberValid);

					updateRule("specialRule", specialValid);

				});

		/* =========================================
		 CONFIRM PASSWORD LIVE CHECK
		 ========================================= */

		document
				.getElementById("confirmPassword")
				.addEventListener(
						"input",
						function() {

							const newPassword = document
									.getElementById("newPassword").value;

							const confirmPassword = this.value;

							const error = document
									.getElementById("confirmPasswordError");

							if (confirmPassword === "") {

								error.innerHTML = "";

							} else if (newPassword !== confirmPassword) {

								error.innerHTML = "Passwords do not match.";

							} else {

								error.innerHTML = "<span class='success-message'>Passwords match.</span>";
							}

						});

		/* =========================================
		 FORM SUBMIT VALIDATION
		 ========================================= */

		document
				.getElementById("changePasswordForm")
				.addEventListener(
						"submit",
						function(event) {

							const currentPassword = document
									.getElementById("currentPassword").value
									.trim();

							const newPassword = document
									.getElementById("newPassword").value;

							const confirmPassword = document
									.getElementById("confirmPassword").value;

							const currentError = document
									.getElementById("currentPasswordError");

							const newError = document
									.getElementById("newPasswordError");

							const confirmError = document
									.getElementById("confirmPasswordError");

							// Clear previous errors

							currentError.innerHTML = "";
							newError.innerHTML = "";
							confirmError.innerHTML = "";

							let valid = true;

							/* Current Password */

							if (currentPassword === "") {

								currentError.innerHTML = "Current password is required.";

								valid = false;
							}

							/* New Password */

							if (newPassword === "") {

								newError.innerHTML = "New password is required.";

								valid = false;

							} else {

								const lengthValid = newPassword.length >= 8;

								const upperValid = /[A-Z]/.test(newPassword);

								const lowerValid = /[a-z]/.test(newPassword);

								const numberValid = /[0-9]/.test(newPassword);

								const specialValid = /[^A-Za-z0-9]/
										.test(newPassword);

								if (!lengthValid || !upperValid || !lowerValid
										|| !numberValid || !specialValid) {

									newError.innerHTML = "Please satisfy all password requirements.";

									valid = false;
								}
							}

							/* Current and New Password */

							if (currentPassword !== "" && newPassword !== ""
									&& currentPassword === newPassword) {

								newError.innerHTML = "New password must be different from current password.";

								valid = false;
							}

							/* Confirm Password */

							if (confirmPassword === "") {

								confirmError.innerHTML = "Please confirm your new password.";

								valid = false;

							} else if (newPassword !== confirmPassword) {

								confirmError.innerHTML = "New password and confirm password do not match.";

								valid = false;
							}

							if (!valid) {

								event.preventDefault();

							}

						});
	</script>

</body>
</html>