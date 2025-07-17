<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>${user.id == null ? "Create New User" : "Edit User"} - LivSpace Admin</title>
    <meta name="viewport" content="width=device-width, initial-scale=1" />

    <!-- Bootstrap & Font Awesome -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"/>

    <style>
        body {
            font-family: 'Urbanist', sans-serif;
            margin: 0;
            padding: 0;
            background: url('https://images.unsplash.com/photo-1600585154340-be6161a56a0c?auto=format&fit=crop&w=1400&q=80') no-repeat center center/cover;
            color: white;
            min-height: 100vh;
            position: relative;
        }

        .overlay {
            position: fixed;
            top: 0; left: 0; right: 0; bottom: 0;
            background: rgba(0, 0, 0, 0.65);
            z-index: -1;
        }

        .navbar {
            background: rgba(0, 0, 0, 0.9);
        }

        .navbar-brand {
            font-size: 28px;
            font-weight: 600;
            color: #ffc107;
        }

        .form-container {
            margin-top: 100px;
            background-color: #1c1c1c;
            padding: 40px;
            border-radius: 16px;
            box-shadow: 0 10px 40px rgba(0, 0, 0, 0.6);
            max-width: 650px;
            width: 100%;
            color: white;
        }

        h2 {
            color: #ffc107;
            font-weight: 700;
            margin-bottom: 30px;
            text-align: center;
        }

        label {
            font-weight: 500;
            color: #ffc107;
        }

        .form-control {
            border-radius: 8px;
            padding: 12px;
            font-size: 16px;
            background-color: #333;
            border: 1px solid #555;
            color: #fff;
        }

        .form-control::placeholder {
            color: #aaa;
        }

        .btn-success, .btn-secondary {
            border-radius: 10px;
            font-weight: 500;
            padding: 10px 20px;
        }

        .btn-success {
            background-color: #28a745;
        }

        .btn-secondary {
            background-color: #6c757d;
        }

        .btn:hover {
            opacity: 0.95;
        }

        .form-icon {
            margin-right: 8px;
            color: #ffc107;
        }

        @media (max-width: 768px) {
            .form-container {
                padding: 25px;
                margin-top: 80px;
            }

            h2 {
                font-size: 24px;
            }
        }
    </style>
</head>
<body>
    <div class="overlay"></div>

    <!-- Navbar -->
    <nav class="navbar navbar-expand-lg navbar-dark fixed-top">
        <div class="container-fluid">
            <a class="navbar-brand" href="/admin-login">
                <i class="fa-solid fa-building-circle-check me-2"></i>Rasik Reality
            </a>
        </div>
    </nav>

    <!-- Form Container -->
    <div class="container d-flex justify-content-center">
        <div class="form-container">
            <h2><i class="fa-solid fa-user-edit me-2"></i>${user.id == null ? "Create New User" : "Edit User"}</h2>
            <form action="/admin/user/save" method="post">
                <input type="hidden" name="id" value="${user.id}" />

                <div class="mb-3">
                    <label><i class="fa-solid fa-user form-icon"></i>Name</label>
                    <input type="text" name="name" class="form-control" value="${user.name}" required>
                </div>

                <div class="mb-3">
                    <label><i class="fa-solid fa-envelope form-icon"></i>Email</label>
                    <input type="email" name="emailId" class="form-control" value="${user.emailId}" required>
                </div>

                <div class="mb-3">
                    <label><i class="fa-solid fa-lock form-icon"></i>Password</label>
                    <input type="password" name="password" class="form-control" value="${user.password}" required>
                </div>

                <div class="mb-3">
                    <label><i class="fa-solid fa-phone form-icon"></i>Mobile</label>
                    <input type="text" name="mobileNumber" class="form-control" value="${user.mobileNumber}" required>
                </div>

                <div class="mb-3">
                    <label><i class="fa-solid fa-city form-icon"></i>City</label>
                    <input type="text" name="city" class="form-control" value="${user.city}" required>
                </div>

                <div class="d-flex justify-content-between mt-4">
                    <button type="submit" class="btn btn-success">
                        <i class="fa-solid fa-save me-1"></i>Save User
                    </button>
                    <a href="/admin/users" class="btn btn-secondary">
                        <i class="fa-solid fa-xmark me-1"></i>Cancel
                    </a>
                </div>
            </form>
        </div>
    </div>
</body>
</html>
