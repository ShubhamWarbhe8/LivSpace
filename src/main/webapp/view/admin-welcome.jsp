<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Dashboard - LivSpace</title>

    <!-- Bootstrap & Font Awesome -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"/>

    <style>
        body {
            font-family: 'Urbanist', sans-serif;
            margin: 0;
            padding: 0;
            background: url('https://images.unsplash.com/photo-1600585154340-be6161a56a0c?auto=format&fit=crop&w=1400&q=80') no-repeat center center/cover;
            color: white;
            position: relative;
            min-height: 100vh;
        }

        .overlay {
            position: fixed;
            top: 0; left: 0; right: 0; bottom: 0;
            background: rgba(0, 0, 0, 0.65);
            z-index: -1;
        }

        .navbar {
            background: rgba(0, 0, 0, 0.8);
        }

        .navbar-brand {
            font-size: 30px;
            font-weight: 600;
            color: #ffc107;
        }

        .container-dashboard {
            padding: 80px 30px 50px;
            display: flex;
            flex-direction: column;
            align-items: center;
        }

        .dashboard-header {
            text-align: center;
            margin-bottom: 40px;
        }

        .dashboard-header h1 {
            font-size: 48px;
            font-weight: 700;
            color: #ffc107;
            text-shadow: 2px 2px 10px rgba(0, 0, 0, 0.8);
        }

        .dashboard-header p {
            font-size: 18px;
            color: #ddd;
        }

        .card-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(280px, 1fr));
            gap: 25px;
            width: 100%;
            max-width: 1200px;
        }

        .admin-card {
            background: rgba(255, 255, 255, 0.05);
            backdrop-filter: blur(10px);
            border-radius: 16px;
            padding: 25px;
            text-align: center;
            transition: all 0.3s ease;
            border: 1px solid rgba(255, 255, 255, 0.1);
            box-shadow: 0 8px 25px rgba(0, 0, 0, 0.3);
        }

        .admin-card:hover {
            transform: translateY(-8px);
            background: rgba(255, 255, 255, 0.1);
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.4);
        }

        .admin-card i {
            font-size: 28px;
            margin-bottom: 15px;
            color: #ffc107;
        }

        .admin-card h5 {
            font-size: 20px;
            font-weight: bold;
            margin-bottom: 10px;
        }

        .admin-card a {
            text-decoration: none;
            color: white;
            display: inline-block;
            margin-top: 10px;
            font-weight: 500;
        }

        .admin-card a:hover {
            color: #ffdb4d;
        }

        @media screen and (max-width: 768px) {
            .dashboard-header h1 {
                font-size: 36px;
            }
        }
    </style>
</head>
<body>
    <div class="overlay"></div>

    <!-- Navbar -->
    <nav class="navbar navbar-expand-lg navbar-dark fixed-top">
        <div class="container-fluid">
            <a class="navbar-brand" href="/admin-login">
                <i class="fa-solid fa-building-circle-check me-2"></i>Rasik Reality
            </a>
        </div>
    </nav>

    <!-- Dashboard Content -->
    <div class="container-dashboard">
        <div class="dashboard-header">
            <h1>Admin Panel</h1>
            <p>Manage all administrative tasks efficiently and elegantly.</p>
        </div>

        <div class="card-grid">
            <div class="admin-card">
                <i class="fa-solid fa-users"></i>
                <h5>Configure Users</h5>
                <a href="/admin/users">Edit Users</a>
            </div>
            <div class="admin-card">
                <i class="fa-solid fa-house-chimney"></i>
                <h5>Buy </h5>
                <a href="/showPropertyPage">Add Details </a>
            </div>
            <div class="admin-card">
                <i class="fa-solid fa-house"></i>
                <h5>Rent</h5>
                <a href="/showRentPropertyPage">Add Details</a>
            </div>
            <div class="admin-card">
                <i class="fa-solid fa-bed"></i>
                <h5>Sell</h5>
                <a href="/admin-login/show-sell">View</a>
            </div>
            <div class="admin-card">
                <i class="fa-solid fa-calendar-check"></i>
                <h5>Show Appointments</h5>
                <a href="/admin-login/admin-appointments">View Appointments</a>
            </div>
            <div class="admin-card">
                <i class="fa-solid fa-file-invoice"></i>
                <h5>Buy Overview</h5>
                <a href="/showOverViewForm">Edit Buy Overview</a>
            </div>
            <div class="admin-card">
                <i class="fa-solid fa-file-invoice-dollar"></i>
                <h5>Rent Overview</h5>
                <a href="/showRentOverViewForm">Edit Rent Overview</a>
            </div>
        </div>
    </div>
</body>
</html>