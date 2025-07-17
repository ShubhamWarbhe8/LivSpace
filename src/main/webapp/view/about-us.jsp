<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>About Us | Rasik Reality</title>

    <!-- Bootstrap & Fonts -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.0/css/bootstrap.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Urbanist:wght@500;700&display=swap" rel="stylesheet">

    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: 'Urbanist', sans-serif;
            background: url('https://images.unsplash.com/photo-1570129477492-45c003edd2be?auto=format&fit=crop&w=1470&q=80') no-repeat center center fixed;
            background-size: cover;
            color: #fff;
            position: relative;
            z-index: 0;
        }

        body::before {
            content: '';
            position: fixed;
            top: 0; left: 0;
            width: 100%; height: 100%;
            background: rgba(0, 0, 0, 0.6);
            backdrop-filter: blur(6px);
            z-index: -1;
        }

        .navbar {
            background: rgba(0, 0, 0, 0.85);
            padding: 15px 30px;
            backdrop-filter: blur(10px);
        }

        .navbar-brand {
            font-size: 32px;
            font-weight: bold;
            color: #ffc107;
        }

        .btn-home {
            color: white;
            border: 2px solid #ffc107;
            padding: 8px 20px;
            border-radius: 25px;
            font-weight: 600;
        }

        .btn-home:hover {
            background-color: #ffc107;
            color: #000;
        }

        .section {
            max-width: 1000px;
            margin: 60px auto;
            background: rgba(255, 255, 255, 0.08);
            padding: 40px 30px;
            border-radius: 16px;
            box-shadow: 0 8px 25px rgba(0, 0, 0, 0.2);
            backdrop-filter: blur(10px);
            color: #fff;
        }

        h2.section-title {
            font-size: 36px;
            font-weight: bold;
            text-align: center;
            margin-bottom: 30px;
            text-transform: uppercase;
            position: relative;
        }

        h2.section-title::after {
            content: '';
            width: 60px;
            height: 4px;
            background: #ffc107;
            position: absolute;
            bottom: -10px;
            left: 50%;
            transform: translateX(-50%);
            border-radius: 3px;
        }

        .about-text p {
            font-size: 18px;
            line-height: 1.7;
            text-align: justify;
            color: #e0e0e0;
        }

        /* ✅ Team */
        .team-member {
            text-align: center;
            margin-bottom: 30px;
        }

        .team-member img {
            width: 120px;
            height: 120px;
            border-radius: 50%;
            object-fit: cover;
            margin-bottom: 15px;
            border: 4px solid #ffc107;
        }

        .team-member h5 {
            font-size: 20px;
            font-weight: bold;
        }

        .team-member p {
            color: #ccc;
            font-size: 14px;
        }

        /* ✅ Stats */
        .stats {
            display: flex;
            justify-content: space-around;
            flex-wrap: wrap;
            margin-top: 20px;
            gap: 20px;
        }

        .stat-box {
            background: rgba(0, 0, 0, 0.3);
            padding: 20px 25px;
            border-radius: 12px;
            text-align: center;
            flex: 1 1 200px;
            color: #fff;
            border: 1px solid rgba(255, 255, 255, 0.2);
        }

        .stat-box h3 {
            font-size: 32px;
            color: #ffc107;
        }

        .stat-box p {
            font-size: 16px;
        }

        /* ✅ Why Choose Us */
        .features {
            display: flex;
            flex-wrap: wrap;
            gap: 20px;
            margin-top: 20px;
        }

        .feature {
            flex: 1 1 280px;
            background: rgba(255, 255, 255, 0.07);
            padding: 20px;
            border-radius: 12px;
            text-align: center;
            border: 1px solid rgba(255, 255, 255, 0.2);
        }

        .feature h5 {
            color: #ffc107;
            font-size: 20px;
            margin-bottom: 10px;
        }

        .feature p {
            font-size: 15px;
            color: #ddd;
        }

        @media (max-width: 768px) {
            .stats, .features {
                flex-direction: column;
                align-items: center;
            }

            .navbar-brand {
                font-size: 26px;
            }
        }
    </style>
</head>
<body>

<!-- ✅ Navbar -->
<nav class="navbar navbar-dark">
    <div class="container-fluid d-flex justify-content-between align-items-center">
        <a class="navbar-brand" href="/welcome">Rasik Reality</a>
    </div>
</nav>

<!-- ✅ About Us -->
<div class="section">
    <h2 class="section-title">About Us</h2>
    <div class="about-text">
        <p>Welcome to <strong>Rasik Reality</strong>! We are dedicated to providing the best properties.</p>
        <p>With years of experience, we connect buyers and sellers to make transactions smooth and hassle-free.</p>
        <p>Our mission is to help you find your dream home with ease and convenience. Explore our listings and let us assist you in making the right choice.</p>
    </div>
</div>

<!-- ✅ Stats -->
<div class="section">
    <h2 class="section-title">Our Achievements</h2>
    <div class="stats">
        <div class="stat-box">
            <h3>3,500+</h3>
            <p>Homes Sold</p>
        </div>
        <div class="stat-box">
            <h3>800+</h3>
            <p>Happy Clients</p>
        </div>
    </div>
</div>

<!-- ✅ Why Choose Us -->
<div class="section">
    <h2 class="section-title">Why Choose Us</h2>
    <div class="features">
        <div class="feature">
            <h5>Verified Listings</h5>
            <p>We provide up-to-date, verified properties with complete transparency.</p>
        </div>
        <div class="feature">
            <h5>24/7 Support</h5>
            <p>Need help? Our support team is always here to assist you at every step.</p>
        </div>
        <div class="feature">
            <h5>Easy Interface</h5>
            <p>Our platform is built for ease and efficiency—search, filter, and connect instantly.</p>
        </div>
    </div>
</div>

</body>
</html>
