<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Book Appointment</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap & FontAwesome -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css" rel="stylesheet">

    <style>
        body {
            background-image: url('https://images.unsplash.com/photo-1504384308090-c894fdcc538d');
            background-size: cover;
            background-attachment: fixed;
            background-repeat: no-repeat;
            font-family: 'Segoe UI', sans-serif;
            color: #fff;
        }

        .form-container {
            background-color: rgba(0, 0, 0, 0.8);
            padding: 40px;
            margin-top: 90px;
            border-radius: 20px;
            animation: fadeIn 1s ease-in-out;
            box-shadow: 0 0 25px rgba(0,0,0,0.4);
        }

        @keyframes fadeIn {
            from { opacity: 0; transform: translateY(30px); }
            to { opacity: 1; transform: translateY(0); }
        }

        h2 {
            text-align: center;
            margin-bottom: 30px;
            color: #facc15;
            font-size: 2.3rem;
            text-shadow: 1px 1px 5px #000;
        }

        label {
            color: #f8fafc;
            font-weight: 500;
        }

        .form-control {
            background-color: #f8fafc;
            color: #111;
            border-radius: 10px;
        }

        .btn-primary {
            background-color: #facc15;
            color: #000;
            border: none;
            font-weight: 600;
            padding: 10px 20px;
            border-radius: 10px;
        }

        .btn-primary:hover {
            background-color: #eab308;
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
            .form-container {
                padding: 25px;
                margin: 40px 15px;
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

<!-- Form -->
<div class="container form-container">
    <h2><i class="fa-solid fa-calendar-check me-2"></i>Book Appointment</h2>

    <form action="/appointment/save" method="post">
        <!-- <input type="hidden" name="userId" value="${userId}" /> -->

        <div class="mb-3">
            <label><i class="fa-solid fa-user me-2"></i>Full Name</label>
            <input type="text" name="fullName" class="form-control" required />
        </div>

        <div class="mb-3">
            <label><i class="fa-solid fa-calendar-day me-2"></i>Date</label>
            <input type="date" name="date" class="form-control" required min="<%= java.time.LocalDate.now() %>" />
        </div>

        <div class="mb-3">
            <label><i class="fa-solid fa-envelope me-2"></i>Email</label>
            <input type="email" name="email" class="form-control" required />
        </div>

        <div class="mb-3">
            <label><i class="fa-solid fa-phone me-2"></i>Mobile Number</label>
            <input type="text" name="mobileNumber" class="form-control" required />
        </div>

        <div class="text-center mt-4">
            <button type="submit" class="btn btn-primary"><i class="fa-solid fa-paper-plane me-2"></i>Book</button>
        </div>
    </form>
</div>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
