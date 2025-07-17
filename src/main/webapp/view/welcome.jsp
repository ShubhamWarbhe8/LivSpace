<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Welcome to LivSpace</title>

    <!-- Bootstrap & Fonts -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"/>
    <link href="https://fonts.googleapis.com/css2?family=Urbanist:wght@500;700&display=swap" rel="stylesheet">

    <style>
        html, body {
            height: 100%;
            margin: 0;
            padding: 0;
            font-family: 'Urbanist', sans-serif;
            overflow-x: hidden;
        }

        body {
            background: url('https://images.unsplash.com/photo-1564013799919-ab600027ffc6?auto=format&fit=crop&w=1470&q=80') no-repeat center center/cover;
            position: relative;
            color: white;
        }

        body::before {
            content: '';
            position: absolute;
            top: 0; left: 0;
            width: 100%; height: 100%;
            background: rgba(0, 0, 0, 0.6);
            z-index: 1;
        }

        .navbar {
            position: fixed;
            top: 0;
            width: 100%;
            padding: 15px 25px;
            background: rgba(0, 0, 0, 0.65);
            backdrop-filter: blur(10px);
            z-index: 10;
        }

        .navbar-brand {
            font-size: 28px;
            font-weight: 700;
            color: #ffc107;
        }

        .nav-buttons a {
            font-weight: 600;
            font-size: 16px;
            margin-left: 15px;
            color: #fff;
            border: 1px solid #ffc107;
            border-radius: 25px;
            padding: 8px 18px;
            transition: 0.3s;
        }

        .nav-buttons a:hover {
            background-color: #ffc107;
            color: #000;
        }

        .main-content {
            position: relative;
            z-index: 2;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            height: 100vh;
            text-align: center;
            padding: 20px;
            animation: fadeIn 1.5s ease-in-out;
        }

        .main-content h1 {
            font-size: 58px;
            font-weight: 700;
            margin-bottom: 20px;
        }

        .main-content p {
            font-size: 20px;
            max-width: 600px;
            margin-bottom: 40px;
            line-height: 1.6;
        }

        .buttons-container a {
            margin: 12px;
            padding: 14px 30px;
            font-size: 18px;
            font-weight: 600;
            border-radius: 30px;
            text-decoration: none;
            transition: all 0.3s ease;
        }

        .btn-buy {
            background: linear-gradient(45deg, #ff6a00, #ee0979);
            color: #fff;
        }

        .btn-buy:hover {
            transform: translateY(-3px);
            box-shadow: 0 6px 18px rgba(255, 105, 0, 0.6);
        }

        .btn-rent {
            background: linear-gradient(45deg, #8e2de2, #4a00e0);
            color: #fff;
        }

        .btn-rent:hover {
            transform: scale(1.05);
            box-shadow: 0 6px 20px rgba(78, 0, 200, 0.7);
        }

        .btn-sell {
            background-image: linear-gradient(to top, #c79081 0%, #dfa579 100%);
            color: white;
        }

        .btn-sell:hover {
            transform: scale(1.05);
            box-shadow: 0 6px 18px rgba(0, 0, 0, 0.3);
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

        @media screen and (max-width: 768px) {
            .main-content h1 {
                font-size: 38px;
            }

            .main-content p {
                font-size: 16px;
            }

            .buttons-container a {
                width: 80%;
            }
        }
    </style>
</head>
<body>

<!-- ✅ Navbar -->
<nav class="navbar navbar-expand-lg navbar-dark">
    <div class="container-fluid d-flex justify-content-between">
        <a class="navbar-brand" href="/welcome"><i class="fa-solid fa-building-circle-check me-2"></i>Rasik Reality</a>
        <div class="nav-buttons">
            <a href="/contact-us">Contact</a>
        </div>
    </div>
</nav>

<!-- ✅ Main Content -->
<div class="main-content">
    <h1>Find Your Dream Home</h1>
    <p>A house is made of bricks and beams. A home is made of hopes and dreams.</p>

    <div class="buttons-container">
        <a class="btn btn-buy" href="/buy">Buy</a>
        <a class="btn btn-rent" href="/rent">Rent</a>
        <a class="btn btn-sell" href="/showPropertyPage">Sell</a>
    </div>
</div>

</body>
</html>
