
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>

    <meta charset="UTF-8">

    <title>Update Product</title>

    <link
        href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
        rel="stylesheet">

    <link
        rel="stylesheet"
        href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">

    <style>

        body {
            background-color: #f5f7fa;
        }

        .update-card {
            max-width: 600px;
            margin: 60px auto;
            border: none;
            border-radius: 15px;
        }

        .card-header {
            background: #0d6efd;
            color: white;
            border-radius: 15px 15px 0 0 !important;
            padding: 20px;
        }

        .form-control {
            border-radius: 8px;
        }

        .btn {
            border-radius: 8px;
            padding: 10px 20px;
        }

    </style>

</head>

<body>

<div class="container">

    <div class="card shadow update-card">

        <div class="card-header">

            <h4 class="mb-0">
                <i class="bi bi-pencil-square"></i>
                Update Product
            </h4>

        </div>


        <div class="card-body p-4">

            <form action="/updateProduct"
                  method="post">


                <!-- Product ID -->

                <input type="hidden"
                       name="id"
                       value="${product.id}">


                <!-- Product Name -->

                <div class="mb-3">

                    <label class="form-label fw-bold">
                        Product Name
                    </label>

                    <input type="text"
                           name="name"
                           class="form-control"
                           value="${product.name}"
                           required>

                </div>


                <!-- Product Price -->

                <div class="mb-3">

                    <label class="form-label fw-bold">
                        Price
                    </label>

                    <input type="number"
                           name="price"
                           class="form-control"
                           value="${product.price}"
                           step="0.01"
                           min="0"
                           required>

                </div>


                <!-- Product Quantity -->

                <div class="mb-3">

                    <label class="form-label fw-bold">
                        Quantity
                    </label>

                    <input type="number"
                           name="quantity"
                           class="form-control"
                           value="${product.quantity}"
                           min="0"
                           required>

                </div>


                <!-- Buttons -->

                <div class="d-flex gap-2 mt-4">

                    <button type="submit"
                            class="btn btn-primary">

                        <i class="bi bi-check-circle"></i>
                        Update Product

                    </button>


                    <a href="/viewProducts"
                       class="btn btn-secondary">

                        <i class="bi bi-arrow-left"></i>
                        Cancel

                    </a>

                </div>

            </form>

        </div>

    </div>

</div>


<script
    src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js">
</script>

</body>
</html>
```
