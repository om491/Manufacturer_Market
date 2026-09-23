<%@ page language="java"
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false"%>

<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="UTF-8">

<meta name="viewport"
      content="width=device-width, initial-scale=1.0">

<title>Company Registration</title>

<!-- Bootstrap -->
<link
    href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
    rel="stylesheet">

<!-- Bootstrap Icons -->
<link
    rel="stylesheet"
    href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">

<style>

* {
    box-sizing: border-box;
}

body {
    margin: 0;
    padding: 0;
    font-family: "Segoe UI", Arial, sans-serif;
    background: linear-gradient(135deg, #eef4ff, #f8fbff);
    min-height: 100vh;
}


/* ==============================
   MAIN CONTAINER
   ============================== */

.register-wrapper {
    width: 100%;
    padding: 40px 20px;
}

.register-card {
    max-width: 950px;
    margin: auto;
    background: #ffffff;
    border-radius: 18px;
    overflow: hidden;
    box-shadow: 0 12px 40px rgba(0, 0, 0, 0.10);
}


/* ==============================
   HEADER
   ============================== */

.register-header {
    background: linear-gradient(135deg, #2563eb, #1d4ed8);
    color: white;
    padding: 30px 35px;
    position: relative;
}

.header-content {
    display: flex;
    align-items: center;
    gap: 18px;
}

.header-icon {
    width: 60px;
    height: 60px;
    border-radius: 14px;
    background: rgba(255,255,255,0.18);
    display: flex;
    align-items: center;
    justify-content: center;
    font-size: 28px;
}

.register-header h1 {
    margin: 0;
    font-size: 27px;
    font-weight: 700;
}

.register-header p {
    margin: 5px 0 0;
    font-size: 14px;
    opacity: 0.9;
}


/* ==============================
   FORM BODY
   ============================== */

.form-body {
    padding: 35px 40px 40px;
}


/* ==============================
   SECTION
   ============================== */

.section {
    margin-bottom: 32px;
}

.section-header {
    display: flex;
    align-items: center;
    gap: 12px;
    padding-bottom: 12px;
    margin-bottom: 22px;
    border-bottom: 1px solid #e5e7eb;
}

.section-header-icon {
    width: 40px;
    height: 40px;
    border-radius: 10px;
    background: #eff6ff;
    color: #2563eb;
    display: flex;
    align-items: center;
    justify-content: center;
    font-size: 20px;
}

.section-header h3 {
    margin: 0;
    font-size: 18px;
    color: #1f2937;
    font-weight: 650;
}

.section-header span {
    display: block;
    font-size: 12px;
    color: #6b7280;
    margin-top: 2px;
}


/* ==============================
   FORM GROUP
   ============================== */

.form-group {
    margin-bottom: 20px;
}

.form-label {
    font-size: 14px;
    font-weight: 600;
    color: #374151;
    margin-bottom: 8px;
}

.required {
    color: #dc2626;
}


/* ==============================
   INPUT
   ============================== */

.input-wrapper {
    position: relative;
}

.input-icon {
    position: absolute;
    left: 14px;
    top: 50%;
    transform: translateY(-50%);
    color: #6b7280;
    font-size: 17px;
    z-index: 2;
}

.form-control {
    height: 48px;
    border: 1px solid #d1d5db;
    border-radius: 9px;
    padding: 10px 14px 10px 43px;
    font-size: 14px;
    color: #1f2937;
    transition: all 0.2s ease;
}

.form-control:focus {
    border-color: #2563eb;
    box-shadow: 0 0 0 3px rgba(37, 99, 235, 0.10);
}

.form-control::placeholder {
    color: #9ca3af;
}


/* ==============================
   PASSWORD
   ============================== */

.password-toggle {
    position: absolute;
    right: 14px;
    top: 50%;
    transform: translateY(-50%);
    border: none;
    background: transparent;
    color: #6b7280;
    cursor: pointer;
    font-size: 17px;
}

.password-input {
    padding-right: 45px;
}


/* ==============================
   HELPER TEXT
   ============================== */

.help-text {
    margin-top: 6px;
    font-size: 12px;
    color: #6b7280;
}


/* ==============================
   BUTTONS
   ============================== */

.button-area {
    border-top: 1px solid #e5e7eb;
    padding-top: 25px;
    margin-top: 10px;
    display: flex;
    justify-content: space-between;
    align-items: center;
}

.back-btn {
    height: 48px;
    padding: 0 22px;
    border-radius: 9px;
    border: 1px solid #d1d5db;
    background: white;
    color: #374151;
    text-decoration: none;
    display: inline-flex;
    align-items: center;
    gap: 8px;
    font-size: 14px;
    font-weight: 600;
    transition: 0.2s;
}

.back-btn:hover {
    background: #f9fafb;
    color: #111827;
}

.register-btn {
    height: 48px;
    padding: 0 28px;
    border: none;
    border-radius: 9px;
    background: linear-gradient(135deg, #2563eb, #1d4ed8);
    color: white;
    font-size: 14px;
    font-weight: 600;
    display: inline-flex;
    align-items: center;
    gap: 9px;
    cursor: pointer;
    transition: all 0.2s ease;
}

.register-btn:hover {
    transform: translateY(-1px);
    box-shadow: 0 7px 18px rgba(37, 99, 235, 0.25);
}


/* ==============================
   LOGIN LINK
   ============================== */

.login-area {
    text-align: center;
    margin-top: 25px;
    font-size: 14px;
    color: #6b7280;
}

.login-area a {
    color: #2563eb;
    text-decoration: none;
    font-weight: 600;
}

.login-area a:hover {
    text-decoration: underline;
}


/* ==============================
   RESPONSIVE
   ============================== */

@media (max-width: 768px) {

    .register-wrapper {
        padding: 20px 12px;
    }

    .register-header {
        padding: 25px 22px;
    }

    .register-header h1 {
        font-size: 22px;
    }

    .form-body {
        padding: 25px 20px;
    }

    .button-area {
        flex-direction: column;
        gap: 12px;
    }

    .back-btn,
    .register-btn {
        width: 100%;
        justify-content: center;
    }

}

</style>

</head>


<body>


<div class="register-wrapper">

    <div class="register-card">


        <!-- ==========================
             HEADER
             ========================== -->

        <div class="register-header">

            <div class="header-content">

                <div class="header-icon">
                    <i class="bi bi-building"></i>
                </div>

                <div>

                    <h1>Register Your Company</h1>

                    <p>
                        Create your company profile and business address
                    </p>

                </div>

            </div>

        </div>



        <!-- ==========================
             FORM BODY
             ========================== -->

        <div class="form-body">


            <form action="registerCompany"
                  method="post"
                  onsubmit="return validateForm();">


                <!-- ==========================
                     COMPANY INFORMATION
                     ========================== -->

                <div class="section">

                    <div class="section-header">

                        <div class="section-header-icon">
                            <i class="bi bi-building"></i>
                        </div>

                        <div>

                            <h3>Company Information</h3>

                            <span>
                                Enter your company's basic information
                            </span>

                        </div>

                    </div>


                    <div class="row">


                        <!-- Company ID -->

                        <div class="col-md-6">

                            <div class="form-group">

                                <label class="form-label">
                                    Company ID
                                    <span class="required">*</span>
                                </label>

                                <div class="input-wrapper">

                                    <i class="bi bi-hash input-icon"></i>

                                    <input
                                        type="number"
                                        name="id"
                                        id="companyId"
                                        class="form-control"
                                        placeholder="Enter company ID"
                                        min="1"
                                        required>

                                </div>

                                <div class="help-text">
                                    Enter a unique company ID.
                                </div>

                            </div>

                        </div>



                        <!-- Company Name -->

                        <div class="col-md-6">

                            <div class="form-group">

                                <label class="form-label">
                                    Company Name
                                    <span class="required">*</span>
                                </label>

                                <div class="input-wrapper">

                                    <i class="bi bi-buildings input-icon"></i>

                                    <input
                                        type="text"
                                        name="name"
                                        id="companyName"
                                        class="form-control"
                                        placeholder="Enter company name"
                                        maxlength="100"
                                        required>

                                </div>

                            </div>

                        </div>


                    </div>



                    <div class="row">


                        <!-- Company Email -->

                        <div class="col-md-6">

                            <div class="form-group">

                                <label class="form-label">
                                    Company Email
                                    <span class="required">*</span>
                                </label>

                                <div class="input-wrapper">

                                    <i class="bi bi-envelope input-icon"></i>

                                    <input
                                        type="email"
                                        name="companyEmail"
                                        id="companyEmail"
                                        class="form-control"
                                        placeholder="company@example.com"
                                        maxlength="100"
                                        required>

                                </div>

                            </div>

                        </div>



                        <!-- Phone Number -->

                        <div class="col-md-6">

                            <div class="form-group">

                                <label class="form-label">
                                    Phone Number
                                    <span class="required">*</span>
                                </label>

                                <div class="input-wrapper">

                                    <i class="bi bi-telephone input-icon"></i>

                                    <input
                                        type="tel"
                                        name="phoneNo"
                                        id="phoneNo"
                                        class="form-control"
                                        placeholder="Enter 10 digit phone number"
                                        maxlength="10"
                                        pattern="[0-9]{10}"
                                        required>

                                </div>

                            </div>

                        </div>


                    </div>



                    <!-- Password -->

                    <div class="row">

                        <div class="col-md-6">

                            <div class="form-group">

                                <label class="form-label">
                                    Password
                                    <span class="required">*</span>
                                </label>

                                <div class="input-wrapper">

                                    <i class="bi bi-lock input-icon"></i>

                                    <input
                                        type="password"
                                        name="password"
                                        id="password"
                                        class="form-control password-input"
                                        placeholder="Create password"
                                        minlength="6"
                                        maxlength="100"
                                        required>

                                    <button
                                        type="button"
                                        class="password-toggle"
                                        onclick="togglePassword()">

                                        <i class="bi bi-eye"
                                           id="passwordIcon"></i>

                                    </button>

                                </div>

                                <div class="help-text">
                                    Password must contain at least 6 characters.
                                </div>

                            </div>

                        </div>

                    </div>

                </div>



                <!-- ==========================
                     COMPANY ADDRESS
                     ========================== -->

                <div class="section">

                    <div class="section-header">

                        <div class="section-header-icon">
                            <i class="bi bi-geo-alt"></i>
                        </div>

                        <div>

                            <h3>Company Address</h3>

                            <span>
                                Enter the registered business address
                            </span>

                        </div>

                    </div>



                    <div class="row">


                        <!-- Village -->

                        <div class="col-md-6">

                            <div class="form-group">

                                <label class="form-label">
                                    Village
                                    <span class="required">*</span>
                                </label>

                                <div class="input-wrapper">

                                    <i class="bi bi-house input-icon"></i>

                                    <input
                                        type="text"
                                        name="cAddress.village"
                                        id="village"
                                        class="form-control"
                                        placeholder="Enter village"
                                        maxlength="40"
                                        required>

                                </div>

                            </div>

                        </div>



                        <!-- Taluka -->

                        <div class="col-md-6">

                            <div class="form-group">

                                <label class="form-label">
                                    Taluka
                                    <span class="required">*</span>
                                </label>

                                <div class="input-wrapper">

                                    <i class="bi bi-geo input-icon"></i>

                                    <input
                                        type="text"
                                        name="cAddress.taluka"
                                        id="taluka"
                                        class="form-control"
                                        placeholder="Enter taluka"
                                        maxlength="40"
                                        required>

                                </div>

                            </div>

                        </div>


                    </div>



                    <div class="row">


                        <!-- District -->

                        <div class="col-md-6">

                            <div class="form-group">

                                <label class="form-label">
                                    District
                                    <span class="required">*</span>
                                </label>

                                <div class="input-wrapper">

                                    <i class="bi bi-map input-icon"></i>

                                    <input
                                        type="text"
                                        name="cAddress.district"
                                        id="district"
                                        class="form-control"
                                        placeholder="Enter district"
                                        maxlength="40"
                                        required>

                                </div>

                            </div>

                        </div>



                        <!-- PIN Code -->

                        <div class="col-md-6">

                            <div class="form-group">

                                <label class="form-label">
                                    PIN Code
                                    <span class="required">*</span>
                                </label>

                                <div class="input-wrapper">

                                    <i class="bi bi-mailbox input-icon"></i>

                                    <input
                                        type="text"
                                        name="cAddress.pinCode"
                                        id="pinCode"
                                        class="form-control"
                                        placeholder="Enter 6 digit PIN code"
                                        maxlength="6"
                                        pattern="[0-9]{6}"
                                        required>

                                </div>

                            </div>

                        </div>


                    </div>

                </div>



                <!-- ==========================
                     BUTTONS
                     ========================== -->

                <div class="button-area">

                    <a href="manufacturerDashboard"
                       class="back-btn">

                        <i class="bi bi-arrow-left"></i>

                        Back to Dashboard

                    </a>


                    <button type="submit"
                            class="register-btn">

                        <i class="bi bi-building-add"></i>

                        Register Company

                    </button>

                </div>


            </form>



            <!-- LOGIN -->

            <div class="login-area">

                Already have a company account?

                <a href="companyLogin">
                    Login here
                </a>

            </div>


        </div>

    </div>

</div>



<!-- ==========================
     JAVASCRIPT
     ========================== -->

<script>


function togglePassword() {

    const password =
        document.getElementById("password");

    const icon =
        document.getElementById("passwordIcon");


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



function validateForm() {

    const phone =
        document.getElementById("phoneNo").value.trim();

    const pin =
        document.getElementById("pinCode").value.trim();

    const password =
        document.getElementById("password").value;


    /* Phone validation */

    if (!/^[0-9]{10}$/.test(phone)) {

        alert("Please enter a valid 10 digit phone number.");

        return false;
    }


    /* PIN validation */

    if (!/^[0-9]{6}$/.test(pin)) {

        alert("Please enter a valid 6 digit PIN code.");

        return false;
    }


    /* Password validation */

    if (password.length < 6) {

        alert("Password must contain at least 6 characters.");

        return false;
    }


    return true;

}

</script>


</body>

</html>