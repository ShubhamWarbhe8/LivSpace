<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>LivSpace - Login</title>

    <!-- Bootstrap, Font Awesome & Fonts -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"/>
    <link href="https://fonts.googleapis.com/css2?family=Urbanist:wght@400;600;700&display=swap" rel="stylesheet">

    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: 'Urbanist', sans-serif;
            background: url('https://images.unsplash.com/photo-1600585154340-be6161a56a0c?auto=format&fit=crop&w=1400&q=80') no-repeat center center/cover;
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .navbar {
            position: fixed;
            top: 0;
            width: 100%;
            background: rgba(0, 0, 0, 0.6);
            backdrop-filter: blur(10px);
            z-index: 10;
        }

        .navbar-brand {
            font-size: 28px;
            font-weight: 600;
            color: #ffc107;
            letter-spacing: 1px;
        }

        .login-container {
            background: rgba(255, 255, 255, 0.05); /* Transparent effect */
            padding: 45px 35px;
            border-radius: 20px;
            backdrop-filter: blur(18px);
            box-shadow: 0 10px 25px rgba(0, 0, 0, 0.35);
            max-width: 420px;
            width: 100%;
            color: #fff;
            animation: fadeIn 1s ease-out;
        }

        .login-container h2 {
            font-weight: 700;
            font-size: 28px;
            margin-bottom: 30px;
            color: #ffffff;
        }

        .form-control {
            background: rgba(255, 255, 255, 0.08);
            border: 1px solid rgba(255, 255, 255, 0.2);
            border-radius: 12px;
            padding: 12px 15px;
            font-size: 16px;
            color: #fff;
            margin-bottom: 20px;
            transition: 0.3s ease;
        }

        .form-control::placeholder {
            color: #ddd;
        }

        .form-control:focus {
            border: 1px solid #ffc107;
            background: rgba(255, 255, 255, 0.15);
            box-shadow: 0 0 5px #ffc107;
            outline: none;
        }

        .btn-custom {
            background-color: #ffc107;
            color: #000;
            border: none;
            padding: 14px;
            width: 100%;
            font-weight: 600;
            border-radius: 12px;
            font-size: 16px;
            transition: all 0.3s ease;
        }

        .btn-custom:hover {
            background-color: #e0a800;
            transform: translateY(-2px);
        }

        .error-message {
            color: #ff4d4d;
            font-weight: bold;
            margin-bottom: 10px;
            animation: fadeInMessage 1s ease-out;
        }

        .forgot-password {
            color: #ffc107;
            font-size: 14px;
            text-decoration: none;
        }

        .forgot-password:hover {
            text-decoration: underline;
        }

        .social-login {
            display: flex;
            justify-content: space-between;
            margin-top: 20px;
        }

        .social-login a {
            background: #fff;
            padding: 12px;
            width: 48%;
            text-align: center;
            border-radius: 6px;
            color: #333;
            font-size: 14px;
            transition: 0.3s ease;
        }

        .social-login a:hover {
            background-color: #e0e0e0;
            transform: translateY(-2px);
        }

        .signup-link {
            margin-top: 18px;
            font-size: 14px;
        }

        .signup-link a {
            color: #ffc107;
            text-decoration: none;
            font-weight: 600;
        }

        .signup-link a:hover {
            color: #fff;
            text-decoration: underline;
        }

        @keyframes fadeIn {
            from {
                opacity: 0;
                transform: translateY(20px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }

        @keyframes fadeInMessage {
            from {
                opacity: 0;
                transform: translateY(10px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }

        @media screen and (max-width: 576px) {
            .login-container {
                padding: 30px 20px;
            }

            .login-container h2 {
                font-size: 24px;
            }
        }
    </style>
</head>
<body>

<!-- ✅ Navbar -->
<nav class="navbar navbar-dark px-4 py-2">
    <a class="navbar-brand" href="/sign-in">
        <i class="fa-solid fa-building-circle-check me-2"></i>Rasik Reality
    </a>
</nav>

<!-- ✅ Login Form -->
<div class="login-container mt-5">
    <h2><i class="fa-solid fa-right-to-bracket me-2"></i>Sign In</h2>

    <c:if test="${not empty error}">
        <p class="error-message">${error}</p>
    </c:if>

    <form action="/login" method="post">
        <input type="text" class="form-control" name="mobileNumber" placeholder="📱 Mobile Number" required>
        <input type="password" class="form-control" name="password" placeholder="🔒 Password" required>
        <button type="submit" class="btn btn-custom">Login</button>
    </form>

    <div class="signup-link text-center">
        <p>Don't have an account? <a href="/sign-up">Sign Up</a></p>
    </div>
</div>

</body>
</html>
