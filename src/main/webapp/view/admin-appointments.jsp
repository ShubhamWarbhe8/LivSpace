<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>All Appointments</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap and Icons -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css" rel="stylesheet">

    <style>
        body {
            background-image: url('https://images.unsplash.com/photo-1503264116251-35a269479413');
            background-size: cover;
            background-repeat: no-repeat;
            background-attachment: fixed;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            color: #fff;
        }

        .container {
            background-color: rgba(0, 0, 0, 0.7);
            backdrop-filter: blur(10px);
            border-radius: 20px;
            padding: 40px;
            margin-top: 100px;
            animation: fadeIn 1s ease;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.5);
        }

        @keyframes fadeIn {
            from { opacity: 0; transform: translateY(20px); }
            to { opacity: 1; transform: translateY(0); }
        }

        h2 {
            text-align: center;
            color: #facc15;
            font-size: 2.5rem;
            margin-bottom: 30px;
            text-shadow: 1px 1px 5px #000;
        }

        table {
            background-color: rgba(255, 255, 255, 0.9);
            border-radius: 10px;
            overflow: hidden;
        }

        .table th {
            background-color: #1f2937 !important;
            color: #facc15;
        }

        .table td {
            color: #111;
            font-weight: 500;
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
            .container {
                margin: 40px 15px;
                padding: 30px;
            }

            table {
                font-size: 0.9rem;
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

<!-- Appointment List -->
<div class="container">
    <h2><i class="fa-solid fa-calendar-check me-2"></i>All Appointments</h2>
    <div class="table-responsive">
        <table class="table table-bordered table-striped text-center">
            <thead>
            <tr>
                <th><i class="fa-solid fa-id-card"></i> ID</th>
                <th><i class="fa-solid fa-user"></i> Name</th>
                <th><i class="fa-solid fa-phone"></i> Mobile</th>
                <th><i class="fa-solid fa-envelope"></i> Email</th>
                <th><i class="fa-solid fa-calendar-days"></i> Date</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach var="appointment" items="${appointments}">
                <tr>
                    <td>${appointment.userId}</td>
                    <td>${appointment.fullName}</td>
                    <td>${appointment.mobileNumber}</td>
                    <td>${appointment.email}</td>
                    <td>${appointment.appointmentDate}</td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>
</div>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
