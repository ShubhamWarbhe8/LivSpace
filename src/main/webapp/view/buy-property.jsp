<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <title>Property Listings</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.0/css/bootstrap.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Urbanist:wght@400;600;700&display=swap" rel="stylesheet">

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

        /* ✅ Transparent Navbar */
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
            color: #ffffff;
            text-shadow: 0 0 10px rgba(0,0,0,0.3);
            transition: 0.3s ease;
        }

        .navbar-brand:hover {
            color: #ffd700;
            transform: scale(1.05);
        }

        /* ✅ Main Container */
        .container {
            margin-top: 100px;
        }

        /* ✅ Property Card Styling */
        .property-card {
            background: rgba(255, 255, 255, 0.92);
            border-radius: 16px;
            box-shadow: 0px 8px 25px rgba(0, 0, 0, 0.2);
            overflow: hidden;
            transition: 0.3s ease-in-out;
            animation: fadeInUp 0.8s ease forwards;
        }

        .property-card:hover {
            transform: translateY(-6px);
            box-shadow: 0px 12px 30px rgba(0, 0, 0, 0.3);
        }

        .property-img {
            width: 100%;
            height: 240px;
            object-fit: cover;
        }

        .property-details {
            padding: 18px;
        }

        .property-title {
            font-size: 22px;
            font-weight: 600;
            color: #333;
        }

        .property-info {
            font-size: 15px;
            margin: 4px 0;
            color: #444;
        }

        .property-price {
            font-size: 20px;
            font-weight: bold;
            color: #d4af37;
            margin-top: 10px;
        }

        .show-property-btn {
            text-align: center;
            margin-top: 12px;
        }

        .show-property-btn a {
            text-decoration: none;
            font-weight: bold;
            color: white;
            background: linear-gradient(to right, #ff7e5f, #ffdd57);
            padding: 10px 16px;
            border-radius: 10px;
            transition: 0.3s ease-in-out;
        }

        .show-property-btn a:hover {
            background: linear-gradient(to right, #ffdd57, #ff7e5f);
            transform: scale(1.05);
        }

        /* ✅ Fade In Animation */
        @keyframes fadeInUp {
            from {
                opacity: 0;
                transform: translateY(20px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }

        @media (max-width: 768px) {
            .property-img {
                height: 200px;
            }

            .property-title {
                font-size: 18px;
            }
        }
    </style>
</head>
<body>

<!-- ✅ Navbar -->
<nav class="navbar navbar-expand-lg navbar-dark">
    <div class="container-fluid">
        <a class="navbar-brand" href="/welcome">Rasik Reality</a>
    </div>
</nav>

<!-- ✅ Property Listings -->
<div class="container">
    <div class="row">
        <c:forEach var="property" items="${properties}">
            <div class="col-md-4 mb-4 d-flex align-items-stretch">
                <div class="property-card w-100">
                    <img src="/property/image/${property.propertyId}" class="property-img" alt="Property Image">
                    <div class="property-details">
                        <p class="property-title">${property.propertyName}</p>
                        <p class="property-info"><b>📍 Landmark:</b> ${property.landMark}</p>
                        <p class="property-info"><b>📌 Address:</b> ${property.address}, ${property.city}</p>
                        <p class="property-info"><b>🛏️ BHK Type:</b> ${property.bhk}</p>
                        <p class="property-info"><b>🏡 Status:</b> ${property.propertyStatus}</p>
                        <p class="property-info"><b>📏 Area:</b> ${property.propertyAreaSize} sqft</p>
                        <p class="property-price">💰 ${property.propertyPrice}</p>
                        <div class="show-property-btn">
                            <a href="/showOverView?propertyId=${property.propertyId}">View Details</a>
                        </div>
                    </div>
                </div>
            </div>
        </c:forEach>
    </div>
</div>

</body>
</html>
