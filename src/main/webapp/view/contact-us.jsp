<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Contact Us | LivSpace</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.0/css/bootstrap.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Urbanist:wght@500;700&display=swap" rel="stylesheet">
    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: 'Urbanist', sans-serif;
            background-image: url('https://images.unsplash.com/photo-1568605114967-8130f3a36994?auto=format&fit=crop&w=1470&q=80');
            background-size: cover;
            background-position: center;
            background-attachment: fixed;
            color: #fff;
        }

        body::before {
            content: '';
            position: fixed;
            top: 0; left: 0;
            width: 100%; height: 100%;
            background-color: rgba(0, 0, 0, 0.5);
            z-index: -1;
        }

        .navbar {
            padding: 15px 30px;
            background: rgba(0, 0, 0, 0.85);
            backdrop-filter: blur(10px);
        }

        .navbar-brand {
            font-size: 32px;
            font-weight: bold;
            color: #ffc107;
        }

        .btn-light {
            font-size: 16px;
            font-weight: bold;
            border-radius: 25px;
            padding: 10px 20px;
            transition: 0.3s ease-in-out;
        }

        .btn-light:hover {
            background-color: #ffc107;
            color: #000;
            transform: translateY(-2px);
        }

        .contact-container {
            max-width: 650px;
            margin: 80px auto;
            background: rgba(255, 255, 255, 0.08);
            padding: 40px 30px;
            border-radius: 16px;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.4);
            backdrop-filter: blur(10px);
        }

        h2 {
            font-size: 32px;
            font-weight: bold;
            color: #ffc107;
            text-align: center;
            text-transform: uppercase;
            margin-bottom: 10px;
        }

        .line {
            width: 60px;
            height: 4px;
            background: #ffc107;
            margin: 0 auto 25px;
            border-radius: 3px;
        }

        .form-label {
            font-size: 16px;
            font-weight: 600;
            color: #fff;
        }

        .form-control {
            border-radius: 10px;
            padding: 12px;
            font-size: 16px;
            background-color: rgba(255, 255, 255, 0.1);
            border: 1px solid rgba(255, 255, 255, 0.3);
            color: #fff;
        }

        .form-control::placeholder {
            color: #ccc;
        }

        .form-control:focus {
            border-color: #ffc107;
            box-shadow: 0 0 10px rgba(255, 193, 7, 0.5);
            background-color: rgba(255, 255, 255, 0.2);
        }

        .btn-submit {
            width: 100%;
            padding: 12px;
            font-size: 18px;
            font-weight: bold;
            border-radius: 10px;
            background: linear-gradient(45deg, #ffc107, #ff9800);
            color: #000;
            border: none;
            transition: all 0.3s ease-in-out;
            box-shadow: 0 4px 12px rgba(255, 193, 7, 0.5);
        }

        .btn-submit:hover {
            background: linear-gradient(45deg, #ffb300, #ff7043);
            transform: translateY(-2px);
            box-shadow: 0 6px 16px rgba(255, 193, 7, 0.6);
        }

        @media (max-width: 768px) {
            .navbar-brand {
                font-size: 24px;
            }

            h2 {
                font-size: 28px;
            }

            .contact-container {
                margin: 40px 20px;
                padding: 30px 20px;
            }
        }
    </style>
</head>
<body>

<!-- ✅ Navbar -->
<nav class="navbar navbar-dark">
    <div class="container-fluid d-flex justify-content-between">
        <a class="navbar-brand" href="/welcome">Rasik Reality</a>
    </div>
</nav>

<!-- ✅ Contact Form -->
<div class="contact-container">
    <h2>Contact Us</h2>
    <div class="line"></div>
    <form action="/contact" method="post">
        <div class="mb-3">
            <label for="name" class="form-label">Full Name</label>
            <input type="text" class="form-control" id="name" name="name" required>
        </div>
        <div class="mb-3">
            <label for="email" class="form-label">Email Address</label>
            <input type="email" class="form-control" id="email" name="email" required>
        </div>
        <div class="mb-3">
            <label for="message" class="form-label">Your Message</label>
            <textarea class="form-control" id="message" name="message" rows="4" placeholder="How can we help you?" required></textarea>
        </div>
        <button type="submit" class="btn btn-submit">Send Message</button>
    </form>
</div>

</body>
</html>
