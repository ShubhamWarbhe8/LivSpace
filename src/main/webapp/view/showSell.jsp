<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Sell Properties</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">
    <style>
        body {
            background-image: url('https://images.unsplash.com/photo-1600585154340-be6161a56a0c');
            background-size: cover;
            background-attachment: fixed;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }

        .navbar {
            background-color: rgba(15, 23, 42, 0.9);
            padding: 0.8rem 2rem;
        }

        .navbar-brand {
            font-weight: bold;
            font-size: 1.5rem;
            color: #facc15 !important;
        }

        .container {
            margin-top: 80px;
        }

        .property-card {
            backdrop-filter: blur(18px);
            background: rgba(255, 255, 255, 0.1);
            border-radius: 25px;
            padding: 20px;
            box-shadow: 0 12px 40px rgba(0, 0, 0, 0.3);
            border: 1px solid rgba(255, 255, 255, 0.25);
            color: #fff;
        }

        .property-card img {
            max-height: 180px;
            object-fit: cover;
            border-radius: 15px;
            margin-bottom: 15px;
            border: 2px solid #facc15;
        }

        .property-info h5 {
            color: #facc15;
            font-weight: bold;
        }

        .property-info p {
            margin: 0;
        }

        .badge-custom {
            background-color: #1e3a8a;
            font-size: 0.9rem;
            padding: 6px 10px;
            border-radius: 8px;
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

<!-- Property Listings -->
<div class="container">
    <h2 class="text-center text-white mb-4">Sell Property Listings</h2>
    <div class="row g-4">
        <c:forEach var="property" items="${sellProperties}">
            <div class="col-md-4">
                <div class="property-card">
                    <img src="${property.imageUrl}" class="img-fluid w-100" alt="Property Image"/>
                    <div class="property-info">
                        <h5>${property.propertyName} - ${property.bhk}</h5>
                        <p><strong>City:</strong> ${property.city}</p>
                        <p><strong>Landmark:</strong> ${property.landMark}</p>
                        <p><strong>Address:</strong> ${property.address}</p>
                        <p><strong>Area:</strong> ${property.propertyAreaSize} sqft</p>
                        <p><strong>Status:</strong> ${property.propertyStatus}</p>
                        <p><strong>Price:</strong> ₹${property.propertyPrice}</p>
                        <span class="badge badge-custom">${property.propertyStatus}</span>
                    </div>
                </div>
            </div>
        </c:forEach>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
