<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <title>Rent Property List</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Urbanist:wght@400;600;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://unpkg.com/aos@2.3.1/dist/aos.css" />

    <style>
        body, html {
            margin: 0;
            padding: 0;
            height: 100%;
            font-family: 'Urbanist', sans-serif;
            background: url('https://images.unsplash.com/photo-1600585154340-be6161a56a0c') no-repeat center center fixed;
            background-size: cover;
            overflow-x: hidden;
        }

        .content-wrapper {
            background-color: rgba(255, 255, 255, 0.90);
            padding: 50px 30px;
            margin-top: 80px;
            border-radius: 20px;
            box-shadow: 0 15px 30px rgba(0, 0, 0, 0.2);
        }

        .navbar-custom {
            background-color: rgba(0, 0, 0, 0.85);
        }

        .navbar-custom .navbar-brand,
        .navbar-custom .nav-link {
            color: white;
            font-weight: 600;
        }

        .navbar-custom .nav-link:hover,
        .navbar-custom .nav-link.active {
            color: #ffc107;
            transition: color 0.3s ease-in-out;
        }

        h2 {
            font-weight: 700;
            color: #2c3e50;
            text-transform: uppercase;
        }

        .property-card {
            background-color: rgba(255, 255, 255, 0.65); /* Transparent card */
            border: 1px solid rgba(255, 255, 255, 0.3);
            border-radius: 15px;
            overflow: hidden;
            backdrop-filter: blur(8px);
            box-shadow: 0 10px 25px rgba(0,0,0,0.2);
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }

        .property-card:hover {
            transform: translateY(-5px);
            box-shadow: 0 15px 30px rgba(0,0,0,0.3);
        }

        .property-img {
            height: 200px;
            object-fit: cover;
        }

        .property-body {
            padding: 20px;
        }

        .property-title {
            font-size: 1.3rem;
            font-weight: 600;
            color: #2c3e50;
        }

        .property-info {
            font-size: 0.95rem;
            color: #333;
        }

        .property-price {
            font-size: 1.1rem;
            font-weight: bold;
            color: #0d6efd;
        }

        .btn-outline-primary:hover {
            background-color: #0d6efd;
            color: white;
        }

        .chatbot-btn {
            position: fixed;
            bottom: 30px;
            right: 30px;
            background: #ffc107;
            color: #000;
            border: none;
            border-radius: 50%;
            width: 60px;
            height: 60px;
            font-size: 28px;
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.2);
            cursor: pointer;
            z-index: 999;
            animation: float 2s infinite ease-in-out;
        }

        @keyframes float {
            0%, 100% { transform: translateY(0); }
            50% { transform: translateY(-8px); }
        }
    </style>
</head>
<body>

<!-- ✅ Navbar -->
<nav class="navbar navbar-expand-lg navbar-dark navbar-custom fixed-top">
    <div class="container-fluid">
        <a class="navbar-brand" href="/welcome"> Rasik Reality</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                data-bs-target="#navbarNav" aria-controls="navbarNav"
                aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse justify-content-end" id="navbarNav">
        </div>
    </div>
</nav>

<!-- ✅ Main Content -->
<div class="container content-wrapper" data-aos="fade-up">
    <h2 class="text-center mb-5">Available Properties for Rent</h2>

    <div class="row g-4">
        <c:forEach var="rentProperty" items="${rentProperties}">
            <div class="col-md-6 col-lg-4" data-aos="zoom-in">
                <div class="card property-card h-100">
                    <img src="/rentProperty/image/${rentProperty.rentPropertyId}" class="card-img-top property-img" alt="Property Image">
                    <div class="card-body property-body">
                        <h5 class="property-title">${rentProperty.rentPropertyName}</h5>
                        <p class="property-info mb-1"><strong>Landmark:</strong> ${rentProperty.landMark}</p>
                        <p class="property-info mb-1"><strong>Address:</strong> ${rentProperty.address}, ${rentProperty.city}</p>
                        <p class="property-info mb-1"><strong>BHK:</strong> ${rentProperty.bhk} | <strong>Area:</strong> ${rentProperty.rentPropertyAreaSize} sqft</p>
                        <p class="property-price">₹${rentProperty.rentPropertyPrice}</p>
                        <a href="/showRentOverView?rentPropertyId=${rentProperty.rentPropertyId}" class="btn btn-outline-primary btn-sm mt-2">View Details</a>
                    </div>
                </div>
            </div>
        </c:forEach>
    </div>
</div>

<!-- Scripts -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
<script>
    AOS.init();
</script>

</body>
</html>
