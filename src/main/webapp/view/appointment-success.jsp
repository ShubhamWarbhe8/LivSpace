<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Appointment Booked</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap & Font Awesome -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css" rel="stylesheet">

    <style>
        body {
            background-image: url('https://images.unsplash.com/photo-1521790797524-b2497295b8a0');
            background-size: cover;
            background-position: center;
            background-attachment: fixed;
            color: #f8fafc;
            font-family: 'Segoe UI', sans-serif;
        }

        .container {
            background-color: rgba(0, 0, 0, 0.8);
            padding: 50px;
            border-radius: 15px;
            margin-top: 100px;
            animation: fadeIn 1s ease-in-out;
            box-shadow: 0 0 20px rgba(0,0,0,0.5);
        }

        @keyframes fadeIn {
            from { opacity: 0; transform: translateY(30px); }
            to { opacity: 1; transform: translateY(0); }
        }

        h2 {
            color: #facc15;
            margin-bottom: 30px;
            font-size: 2.5rem;
        }

        a {
            color: #facc15;
            font-weight: 600;
            font-size: 1.2rem;
            text-decoration: none;
        }

        a:hover {
            color: #fde047;
        }

        .navbar {
            background-color: rgba(15, 23, 42, 0.95);
        }

        .navbar-brand {
            font-weight: bold;
            color: #facc15 !important;
            font-size: 1.5rem;
        }

        .nav-link {
            color: #ffffff !important;
            margin-left: 20px;
        }

        .nav-link:hover {
            color: #facc15 !important;
        }

        @media (max-width: 768px) {
            .container {
                margin: 50px 20px;
                padding: 30px;
            }
        }
    </style>
</head>
<body>

<!-- Navbar -->
<nav class="navbar navbar-expand-lg navbar-dark">
    <div class="container-fluid">
        <a class="navbar-brand" href="/welcome"><i class="fa-solid fa-building-circle-check me-2"></i>Rasik Reality</a>
    </div>
</nav>

<!-- Content -->
<div class="container text-center">
    <i class="fa-solid fa-circle-check fa-3x mb-4 text-success"></i>
    <h2><i class="fa-solid fa-calendar-check me-2"></i>Appointment Booked Successfully!</h2>
    <a href="/book-appointment"><i class="fa-solid fa-plus me-2"></i>Book Another</a>
</div>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
