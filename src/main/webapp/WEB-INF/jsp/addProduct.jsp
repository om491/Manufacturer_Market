<%@ page language="java"
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false"%>

<!DOCTYPE html>

<html>

<head>

    <meta charset="UTF-8">

    <meta name="viewport"
          content="width=device-width, initial-scale=1.0">

    <title>Add Product</title>

    <style>

        * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
        }

        body {
            background: #f4f7fb;
            min-height: 100vh;
        }

        .header {
            background: #1e3a8a;
            color: white;
            padding: 20px 7%;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .logo {
            font-size: 24px;
            font-weight: bold;
        }

        .container {
            width: 90%;
            max-width: 600px;
            margin: 50px auto;
        }

        .card {
            background: white;
            padding: 35px;
            border-radius: 15px;
            box-shadow: 0 8px 25px rgba(0,0,0,0.08);
        }

        h1 {
            text-align: center;
            color: #1e293b;
            margin-bottom: 10px;
        }

        .subtitle {
            text-align: center;
            color: #64748b;
            margin-bottom: 30px;
        }

        .form-group {
            margin-bottom: 20px;
        }

        label {
            display: block;
            margin-bottom: 8px;
            font-weight: bold;
            color: #334155;
        }

        input {
            width: 100%;
            padding: 13px;
            border: 1px solid #cbd5e1;
            border-radius: 8px;
            font-size: 15px;
            outline: none;
        }

        input:focus {
            border-color: #2563eb;
        }

        .buttons {
            display: flex;
            gap: 12px;
            margin-top: 25px;
        }

        button,
        .back {
            flex: 1;
            padding: 13px;
            border: none;
            border-radius: 8px;
            font-size: 15px;
            font-weight: bold;
            cursor: pointer;
            text-align: center;
            text-decoration: none;
        }

        button {
            background: #2563eb;
            color: white;
        }

        button:hover {
            background: #1d4ed8;
        }

        .back {
            background: #e2e8f0;
            color: #334155;
        }

        .success {
            background: #dcfce7;
            color: #166534;
            padding: 12px;
            border-radius: 8px;
            margin-bottom: 20px;
            text-align: center;
        }

        .error {
            background: #fee2e2;
            color: #991b1b;
            padding: 12px;
            border-radius: 8px;
            margin-bottom: 20px;
            text-align: center;
        }

        @media(max-width:600px) {

            .container {
                width: 94%;
                margin: 25px auto;
            }

            .card {
                padding: 25px 20px;
            }

            .buttons {
                flex-direction: column;
            }
        }

    </style>

</head>

<body>


<div class="header">

    <div class="logo">
        CompanyHub
    </div>

    <div>
        Product Management
    </div>

</div>


<div class="container">

    <div class="card">

        <h1>Add Product</h1>

        <p class="subtitle">
            Add a new product to your company inventory
        </p>


        <% String successMsg =
                (String) request.getAttribute("successMsg");

           if (successMsg != null) {
        %>

            <div class="success">
                <%= successMsg %>
            </div>

        <%
           }
        %>


        <% String errorMsg =
                (String) request.getAttribute("errorMsg");

           if (errorMsg != null) {
        %>

            <div class="error">
                <%= errorMsg %>
            </div>

        <%
           }
        %>


        <form action="${pageContext.request.contextPath}/saveProduct"
              method="post">


            <div class="form-group">

                <label for="name">
                    Product Name
                </label>

                <input type="text"
                       id="name"
                       name="name"
                       placeholder="Enter product name"
                       required>

            </div>


            <div class="form-group">

                <label for="price">
                    Price
                </label>

                <input type="number"
                       id="price"
                       name="price"
                       placeholder="Enter product price"
                       step="0.01"
                       min="0"
                       required>

            </div>


            <div class="form-group">

                <label for="quantity">
                    Quantity
                </label>

                <input type="number"
                       id="quantity"
                       name="quantity"
                       placeholder="Enter quantity"
                       min="0"
                       required>

            </div>


            <div class="buttons">

                <a href="${pageContext.request.contextPath}/companyDashboard"
                   class="back">

                    Back

                </a>

                <button type="submit">

                    Save Product

                </button>

            </div>


        </form>

    </div>

</div>


</body>

</html>