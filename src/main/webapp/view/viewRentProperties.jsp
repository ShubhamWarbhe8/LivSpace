<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <title>Property Listings</title>
    <!-- Bootstrap & Fonts -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"/>
    <link href="https://fonts.googleapis.com/css2?family=Urbanist:wght@500;700&display=swap" rel="stylesheet">

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

        .container {
            margin-top: 110px;
        }

        h2 {
            text-align: center;
            color: #fff;
            text-shadow: 1px 1px 5px rgba(0,0,0,0.7);
            margin-bottom: 30px;
        }

        .property-card {
            background: rgba(255, 255, 255, 0.9);
            border-radius: 16px;
            box-shadow: 0 10px 25px rgba(0, 0, 0, 0.15);
            transition: all 0.3s ease;
            padding: 20px;
            margin-bottom: 30px;
            overflow: hidden;
            backdrop-filter: blur(6px);
        }

        .property-card:hover {
            transform: translateY(-5px);
        }

        .property-header {
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .property-title {
            font-size: 20px;
            font-weight: 700;
        }

        .property-subtitle {
            font-size: 15px;
            color: #555;
        }

        .property-details {
            margin-top: 15px;
        }

        .property-details p {
            margin-bottom: 6px;
            font-size: 14px;
        }

        .card-buttons {
            margin-top: 18px;
        }

        .card-buttons a {
            margin-right: 10px;
            border-radius: 50px;
            padding: 8px 14px;
            font-size: 13px;
            font-weight: 600;
            box-shadow: 0 4px 12px rgba(0,0,0,0.1);
            transition: all 0.3s ease;
        }

        .btn-download {
            background: linear-gradient(45deg, #6C0048, #6C0048);
            color: white;
        }

        .btn-book {
            background: linear-gradient(45deg, #09203f, #537895);
            color: white;
        }

        .btn-map {
            background: linear-gradient(45deg, #0ba360, #3cba92);
            color: white;
        }

        .btn-loan {
            background: linear-gradient(45deg, #13547a, #80d0c7);
            color: black;
        }

        .card-buttons a:hover {
            transform: translateY(-2px) scale(1.05);
            opacity: 0.9;
        }

        @media (max-width: 768px) {
            .property-card {
                padding: 15px;
            }

            .property-title {
                font-size: 18px;
            }

            .property-subtitle, .property-details p {
                font-size: 13px;
            }
        }
    </style>
</head>
<body>

<!-- ✅ Navbar -->
<nav class="navbar navbar-expand-lg navbar-dark">
    <div class="container-fluid">
        <a class="navbar-brand" href="/admin-login">Rasik Reality</a>
    </div>
</nav>

<!-- ✅ Content -->
<div class="container">
    <h2>Available Property Listings</h2>

    <!-- Card View for Each Property -->
    <div class="row justify-content-center">
        <!-- Example Card (should be looped using JSTL for multiple properties) -->
        <div class="col-md-10">
            <div class="property-card">
                <div class="property-header">
                    <div>
                        <div class="rentProperty-title">Apartment: ${rentProperty.apartment}</div>
                    </div>
                    <div class="text-end">
                        <span class="badge bg-primary">${rentProperty.bhk} BHK</span>
                        <span class="badge bg-info text-dark">${rentProperty.flatSize} sq ft</span>
                    </div>
                </div>

                <div class="property-details">
                    <p><strong>Price:</strong> ₹${rentProperty.price}</p>
                    <p><strong>Possession Date:</strong> ${rentProperty.possessionDate}</p>
                    <p><strong>Parking:</strong> ${rentProperty.parking}</p>
                    <p><strong>Security:</strong> ${rentProperty.security}</p>
                    <p><strong>About:</strong> ${rentProperty.aboutProperty}</p>
                </div>

                <div class="card-buttons">
                    <a href="/rents/download-pdf/${rentProperty.rentPropertyId}" class="btn btn-download btn-sm">
                        <i class="fa fa-file-pdf"></i> PDF
                    </a>
                    <a href="/appointment/book-appointment/${rentProperty.rentPropertyId}" class="btn btn-book btn-sm">
                        <i class="fa fa-calendar-plus"></i> Appointment
                    </a>
                    <a href="${rentProperty.map}" class="btn btn-map btn-sm">
                        <i class="fa fa-map-marked-alt"></i> Map
                    </a>
                    <a href="/loan-calculator" class="btn btn-loan btn-sm">
                        <i class="fa fa-calculator"></i> Loan
                    </a>
                </div>
            </div>
        </div>
        <!-- Repeat for other properties -->
    </div>
</div>

</body>
</html>
