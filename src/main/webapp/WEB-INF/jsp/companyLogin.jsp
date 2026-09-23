<%@ page language="java"
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">

<title>Company Login</title>

<style>

* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

body {
    font-family: Arial, sans-serif;
    background: linear-gradient(135deg, #667eea, #764ba2);
    height: 100vh;

    display: flex;
    justify-content: center;
    align-items: center;
}

.login-box {
    width: 400px;
    background: white;
    padding: 40px;
    border-radius: 15px;
    box-shadow: 0 10px 30px rgba(0,0,0,0.25);
}

.login-box h2 {
    text-align: center;
    margin-bottom: 10px;
    color: #333;
}

.login-box p {
    text-align: center;
    color: #777;
    margin-bottom: 30px;
}

.form-group {
    margin-bottom: 20px;
}

.form-group label {
    display: block;
    margin-bottom: 8px;
    font-weight: bold;
    color: #444;
}

.form-group input {
    width: 100%;
    padding: 12px;
    border: 1px solid #ccc;
    border-radius: 8px;
    font-size: 15px;
}

.form-group input:focus {
    outline: none;
    border-color: #667eea;
}

.login-btn {
    width: 100%;
    padding: 13px;
    border: none;
    border-radius: 8px;
    background: #667eea;
    color: white;
    font-size: 16px;
    font-weight: bold;
    cursor: pointer;
}

.login-btn:hover {
    background: #5568d9;
}

.error {
    color: red;
    text-align: center;
    margin-bottom: 15px;
}

.register-link {
    text-align: center;
    margin-top: 20px;
}

.register-link a {
    color: #667eea;
    text-decoration: none;
    font-weight: bold;
}

</style>

</head>

<body>

<div class="login-box">

    <h2>Company Login</h2>

    <p>Login to your company account</p>

    <% String errorMsg = (String) request.getAttribute("errorMsg"); %>

    <% if(errorMsg != null) { %>
        <div class="error">
            <%= errorMsg %>
        </div>
    <% } %>

    <form action="companyLogin" method="post">

        <div class="form-group">

            <label>Company Email</label>

            <input
                type="email"
                name="companyEmail"
                placeholder="Enter company email"
                required>

        </div>


        <div class="form-group">

            <label>Password</label>

            <input
                type="password"
                name="password"
                placeholder="Enter password"
                required>

        </div>


        <button type="submit" class="login-btn">
            Login
        </button>

    </form>


    <div class="register-link">

        Don't have a company account?

        <a href="companyRegister">
            Register Company
        </a>

    </div>

</div>

</body>
</html>