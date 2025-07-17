<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Sign Up - LivSpace</title>

    <!-- Bootstrap & Fonts -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"/>
    <link href="https://fonts.googleapis.com/css2?family=Urbanist:wght@400;600;700&display=swap" rel="stylesheet">

    <style>
        * {
            box-sizing: border-box;
        }

        html, body {
            margin: 0;
            padding: 0;
            font-family: 'Urbanist', sans-serif;
            height: 100%;
            width: 100%;
            background: url('https://images.unsplash.com/photo-1600585154340-be6161a56a0c?auto=format&fit=crop&w=1920&q=80') no-repeat center center fixed;
            background-size: cover;
        }

        .navbar {
            position: fixed;
            top: 0;
            left: 0;
            z-index: 999;
            width: 100%;
            padding: 15px 30px;
            background: rgba(0, 0, 0, 0.85);
            backdrop-filter: blur(5px);
        }

        .navbar-brand {
            font-size: 28px;
            font-weight: bold;
            color: #ffffff;
            transition: 0.3s ease-in-out;
        }

        .navbar-brand:hover {
            color: #ffc107;
            transform: scale(1.05);
        }

        .btn-light {
            font-size: 16px;
            font-weight: bold;
            border-radius: 25px;
            padding: 8px 16px;
            transition: 0.3s ease-in-out;
        }

        .btn-light:hover {
            background-color: #ffc107;
            color: #000;
            transform: translateY(-3px);
        }

        .overlay {
            padding-top: 100px;
            min-height: 100vh;
            width: 100%;
            background: rgba(0, 0, 0, 0.7);
            display: flex;
            align-items: center;
            justify-content: center;
        }

        .signup-box {
            background: rgba(255, 255, 255, 0.05);
            padding: 40px;
            border-radius: 20px;
            box-shadow: 0 10px 40px rgba(0, 0, 0, 0.6);
            width: 90%;
            max-width: 900px;
            color: #fff;
        }

        .signup-box h2 {
            color: #ffc107;
            font-weight: 700;
            font-size: 30px;
            margin-bottom: 30px;
            text-align: center;
        }

        .form-group {
            margin-bottom: 20px;
        }

        .form-control, .form-select {
            background: rgba(255, 255, 255, 0.1);
            border: 1px solid rgba(255, 255, 255, 0.3);
            border-radius: 10px;
            padding: 12px;
            font-size: 15px;
            color: #fff;
            width: 100%;
        }

        .form-control::placeholder {
            color: #ddd;
        }

        .form-control:focus, .form-select:focus {
            border-color: #ffc107;
            box-shadow: 0 0 10px rgba(255, 193, 7, 0.6);
            background: rgba(255, 255, 255, 0.15);
            outline: none;
            color: #fff;
        }

        .btn-custom {
            background-color: #ffc107;
            color: #000;
            border: none;
            padding: 14px;
            width: 100%;
            font-weight: bold;
            font-size: 16px;
            border-radius: 12px;
            transition: all 0.3s ease-in-out;
        }

        .btn-custom:hover {
            background-color: #e0a800;
            transform: translateY(-2px);
        }

        @media (min-width: 768px) {
            .row > .col-md-6 {
                padding-left: 10px;
                padding-right: 10px;
            }
        }

        @media screen and (max-width: 576px) {
            .signup-box {
                padding: 30px 20px;
            }
        }
    </style>
</head>
<body>

<!-- Navbar -->
<nav class="navbar navbar-dark px-4 py-2">
    <a class="navbar-brand" href="/admin-sign-in"><i class="fa-solid fa-building-circle-check me-2"></i>Rasik Reality</a>
</nav>
<!-- Login Form Container -->
<div class="login-container mt-5">

    <c:if test="${not empty error}">
        <p class="error-message">${error}</p>
    </c:if>

<!-- ✅ Fullscreen Sign-Up Form -->
<div class="overlay">
    <div class="signup-box">
        <h2><i class="fa-solid fa-user-plus me-2"></i>Admin Sign Up</h2>

        <form action="/admin-register" method="post">
            <div class="row">
                <div class="col-md-6 form-group">
                    <input type="text" class="form-control" name="firstName" placeholder="First Name" required>
                </div>
                <div class="col-md-6 form-group">
                    <input type="text" class="form-control" name="lastName" placeholder="Last Name" required>
                </div>
                <div class="col-md-6 form-group">
                    <input type="email" class="form-control" name="emailId" placeholder="Email ID" required>
                </div>
                <div class="col-md-6 form-group">
                    <input type="text" class="form-control" name="mobileNumber" placeholder="Mobile Number" required>
                </div>
                <div class="col-md-6 form-group">
                    <select class="form-select" name="gender" required>
                        <option value="" disabled selected>Select Gender</option>
                        <option value="Male">Male</option>
                        <option value="Female">Female</option>
                        <option value="Other">Other</option>
                    </select>
                </div>
                <div class="col-md-6 form-group">
                    <input type="text" class="form-control" name="city" placeholder="City" required>
                </div>
                <div class="col-12 form-group">
                    <input type="password" class="form-control" name="password" placeholder="Password" required>
                </div>
            </div>

            <button type="submit" class="btn btn-custom mt-3">Register</button>
        </form>
    </div>
</div>

</body>
</html>
