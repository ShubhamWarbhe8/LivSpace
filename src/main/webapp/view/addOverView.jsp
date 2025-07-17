<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Add Property Overview</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap & FontAwesome -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css" rel="stylesheet">

    <style>
        body {
            background-image: url('https://images.unsplash.com/photo-1570129477492-45c003edd2be');
            background-size: cover;
            background-attachment: fixed;
            background-repeat: no-repeat;
            font-family: 'Segoe UI', sans-serif;
            color: #fff;
        }

        .form-container {
            background-color: rgba(0, 0, 0, 0.75);
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
        <a class="navbar-brand" href="/admin-login"><i class="fa-solid fa-building-circle-check me-2"></i>Rasik Reality</a>
    </div>
</nav>

<!-- Form Section -->
<div class="container form-container">
    <h2><i class="fa-solid fa-building me-2"></i>Add Overview</h2>
    <form method="post" action="${pageContext.request.contextPath}/upload" enctype="multipart/form-data">

        <div class="row">
            <div class="col-md-6 mb-3">
                <label>ID</label>
                <input type="text" class="form-control" name="propertyId" required>
            </div>

            <div class="col-md-6 mb-3">
                <label>BHK</label>
                <input type="text" class="form-control" name="bhk" required>
            </div>

            <div class="col-md-6 mb-3">
                <label>Parking</label>
                <input type="text" class="form-control" name="parking" required>
            </div>

            <div class="col-md-6 mb-3">
                <label>Apartment</label>
                <input type="text" class="form-control" name="apartment" required>
            </div>

            <div class="col-md-6 mb-3">
                <label>Builder</label>
                <input type="text" class="form-control" name="builder" required>
            </div>

            <div class="col-md-6 mb-3">
                <label>Date of Establishment</label>
                <input type="date" class="form-control" name="dateOfEstablishment" required>
            </div>

            <div class="col-md-6 mb-3">
                <label>Tower</label>
                <input type="text" class="form-control" name="tower" required>
            </div>

            <div class="col-md-6 mb-3">
                <label>Units</label>
                <input type="text" class="form-control" name="units" required>
            </div>

            <div class="col-md-6 mb-3">
                <label>Flat Size</label>
                <input type="text" class="form-control" name="flatSize" required>
            </div>

            <div class="col-md-6 mb-3">
                <label>Project Area</label>
                <input type="text" class="form-control" name="projectArea" required>
            </div>

            <div class="col-md-6 mb-3">
                <label>Price</label>
                <input type="text" class="form-control" name="price" required>
            </div>

            <div class="col-md-6 mb-3">
                <label>Possession Date</label>
                <input type="date" class="form-control" name="possessionDate" required>
            </div>

            <div class="col-md-6 mb-3">
                <label>Security</label>
                <input type="text" class="form-control" name="security" required>
            </div>

            <div class="col-md-6 mb-3">
                <label for="pdfFile">Upload PDF</label>
                <input type="file" class="form-control" id="pdfFile" name="pdfFile" accept="application/pdf" required>
            </div>

            <div class="col-md-12 mb-3">
                <label>About</label>
                <textarea class="form-control" name="aboutProperty" rows="3" required></textarea>
            </div>

            <div class="col-md-12 mb-3">
                <label>Add Location</label>
                <input type="text" class="form-control" name="map" required>
            </div>

        </div>

        <div class="text-center mt-4">
            <button type="submit" class="btn btn-primary"><i class="fa-solid fa-paper-plane me-2"></i>Submit</button>
        </div>
    </form>
</div>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
