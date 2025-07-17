<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Add Rent Property</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap and Icons -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">

    <style>
        body {
            background-image: url('https://images.unsplash.com/photo-1600585154340-be6161a56a0c');
            background-size: cover;
            background-repeat: no-repeat;
            background-attachment: fixed;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            color: #fff;
        }

        .form-container {
            backdrop-filter: blur(20px);
            background: rgba(0, 0, 0, 0.6);
            border-radius: 20px;
            padding: 40px;
            max-width: 800px;
            margin: 100px auto;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.5);
            animation: fadeIn 1s ease;
        }

        @keyframes fadeIn {
            from { opacity: 0; transform: translateY(20px); }
            to { opacity: 1; transform: translateY(0); }
        }

        h2 {
            text-align: center;
            font-size: 2.5rem;
            margin-bottom: 30px;
            color: #facc15;
            text-shadow: 1px 1px 5px #000;
        }

        label {
            font-weight: 600;
            color: #ffffff;
        }

        .form-control, .form-select {
            border-radius: 10px;
            background-color: rgba(255, 255, 255, 0.8);
        }

        .form-control:focus, .form-select:focus {
            box-shadow: 0 0 0 0.2rem rgba(250, 204, 21, 0.5);
        }

        .btn-primary {
            background-color: #facc15;
            color: #000;
            border: none;
            font-weight: bold;
            font-size: 1.1rem;
            border-radius: 10px;
            padding: 10px;
        }

        .btn-primary:hover {
            background-color: #ffe066;
            color: #000;
        }

        .navbar {
            background-color: rgba(15, 23, 42, 0.95);
            padding: 0.8rem 2rem;
        }

        .navbar-brand {
            font-weight: bold;
            font-size: 1.5rem;
            color: #facc15 !important;
        }

        .nav-link {
            color: #ffffff !important;
            margin-left: 20px;
            font-weight: 500;
        }

        .nav-link:hover {
            color: #facc15 !important;
        }

        @media (max-width: 768px) {
            .form-container {
                margin: 40px 20px;
                padding: 30px;
            }
        }

    </style>
</head>
<body>

<!-- Navbar -->
<nav class="navbar navbar-expand-lg navbar-dark">
    <div class="container-fluid d-flex justify-content-between">
        <a class="navbar-brand" href="/admin-login"><i class="fa-solid fa-building-circle-check me-2"></i>Rasik Reality</a>
    </div>
</nav>

<!-- Rent Property Form -->
<div class="form-container">
    <h2><i class="fa-solid fa-file-circle-plus me-2"></i>Add Details</h2>
    <form action="addRentProperty" method="post" enctype="multipart/form-data" modelAttribute="property">

        <div class="mb-3">
            <label><i class="fa-solid fa-house me-2"></i>Apartment Name</label>
            <input type="text" class="form-control" name="rentPropertyName" required>
        </div>

        <div class="mb-3">
            <label><i class="fa-solid fa-location-dot me-2"></i>LandMark</label>
            <input type="text" class="form-control" name="landMark" required>
        </div>

        <div class="mb-3">
            <label><i class="fa-solid fa-map me-2"></i>Address</label>
            <input type="text" class="form-control" name="address" required>
        </div>

        <div class="mb-3">
            <label><i class="fa-solid fa-city me-2"></i>City</label>
            <input type="text" class="form-control" name="city" required>
        </div>

        <div class="mb-3">
            <label><i class="fa-solid fa-indian-rupee-sign me-2"></i>Rent Price</label>
            <input type="text" class="form-control" name="rent_property_price" required>
        </div>

        <div class="mb-3">
            <label><i class="fa-solid fa-ruler-combined me-2"></i>Carpet Area</label>
            <input type="text" class="form-control" name="rent_property_area_size" required>
        </div>

        <div class="mb-3">
            <label><i class="fa-solid fa-door-open me-2"></i>BHK Type</label>
            <select class="form-select" name="bhk" required>
                <option value="1BHK">1BHK</option>
                <option value="2BHK">2BHK</option>
                <option value="3BHK">3BHK</option>
            </select>
        </div>

        <div class="mb-4">
            <label><i class="fa-solid fa-image me-2"></i>Upload Image</label>
            <input type="file" class="form-control" name="rentPropertyImage" accept="image/*" required>
        </div>

        <div class="d-grid">
            <button type="submit" class="btn btn-primary btn-lg"><i class="fa-solid fa-paper-plane me-2"></i>Submit</button>
        </div>
    </form>
</div>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
