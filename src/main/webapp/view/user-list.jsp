<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>All Users - LivSpace Admin</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

    <!-- Bootstrap & Font Awesome -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"/>

    <style>
        body {
            font-family: 'Urbanist', sans-serif;
            margin: 0;
            padding: 0;
            background: url('https://images.unsplash.com/photo-1600585154340-be6161a56a0c?auto=format&fit=crop&w=1400&q=80') no-repeat center center/cover;
            color: white;
            min-height: 100vh;
            position: relative;
        }

        .overlay {
            position: fixed;
            top: 0; left: 0; right: 0; bottom: 0;
            background: rgba(0, 0, 0, 0.65);
            z-index: -1;
        }

        .navbar {
            background: rgba(0, 0, 0, 0.85);
        }

        .navbar-brand {
            font-size: 28px;
            font-weight: 600;
            color: #ffc107;
        }

        .container {
            margin-top: 100px;
            background: rgba(255, 255, 255, 0.05);
            backdrop-filter: blur(10px);
            padding: 30px;
            border-radius: 16px;
            box-shadow: 0 8px 30px rgba(0, 0, 0, 0.5);
        }

        h2 {
            color: #ffc107;
            font-weight: 700;
            margin-bottom: 20px;
            text-shadow: 2px 2px 8px rgba(0,0,0,0.7);
        }

        .table {
            color: white;
        }

        .table thead {
            background: #212529;
        }

        .table-hover tbody tr:hover {
            background-color: rgba(255, 255, 255, 0.08);
            transition: 0.3s ease;
        }

        .btn-success, .btn-primary, .btn-danger {
            border-radius: 10px;
            font-weight: 500;
        }

        .btn-success {
            background-color: #28a745;
        }

        .btn-primary {
            background-color: #007bff;
        }

        .btn-danger {
            background-color: #dc3545;
        }

        .btn:hover {
            opacity: 0.9;
        }

        @media (max-width: 768px) {
            .container {
                padding: 20px;
            }

            h2 {
                font-size: 24px;
            }

            .table-responsive {
                font-size: 14px;
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

    <!-- Main Content -->
    <div class="container">
        <h2><i class="fa-solid fa-users-gear me-2"></i>All Users</h2>
        <a href="/admin/user/new" class="btn btn-success mb-3">
            <i class="fa-solid fa-user-plus me-1"></i>Add New User
        </a>

        <div class="table-responsive">
            <table class="table table-bordered table-hover">
                <thead class="table-dark text-center">
                    <tr>
                        <th>ID</th>
                        <th>Name</th>
                        <th>Email</th>
                        <th>Mobile</th>
                        <th>City</th>
                        <th>Actions</th>
                    </tr>
                </thead>
                <tbody class="text-center">
                <c:forEach var="user" items="${users}">
                    <tr>
                        <td>${user.id}</td>
                        <td>${user.name}</td>
                        <td>${user.emailId}</td>
                        <td>${user.mobileNumber}</td>
                        <td>${user.city}</td>
                        <td>
                            <a href="/admin/user/edit/${user.id}" class="btn btn-primary btn-sm me-1">
                                <i class="fa-solid fa-pen"></i>
                            </a>
                            <a href="/admin/user/delete/${user.id}" class="btn btn-danger btn-sm" onclick="return confirm('Delete this user?')">
                                <i class="fa-solid fa-trash"></i>
                            </a>
                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</body>
</html>
