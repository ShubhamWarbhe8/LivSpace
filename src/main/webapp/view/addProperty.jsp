<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Add Property - LivSpace</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1" />

    <!-- Bootstrap & Icons -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">

    <style>
        body {
            background: url('https://images.unsplash.com/photo-1600585154340-be6161a56a0c') no-repeat center center/cover;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            margin: 0;
            color: white;
        }

        .overlay {
            position: fixed;
            inset: 0;
            background: rgba(0, 0, 0, 0.7);
            z-index: -1;
        }

        .navbar {
            background-color: rgba(15, 23, 42, 0.95);
        }

        .navbar-brand {
            font-size: 1.8rem;
            font-weight: 700;
            color: #facc15 !important;
        }

        .form-container {
            background-color: #1e293b;
            padding: 40px;
            margin: 100px auto;
            max-width: 850px;
            border-radius: 16px;
            box-shadow: 0 15px 35px rgba(0, 0, 0, 0.6);
            animation: fadeIn 0.8s ease-in-out;
            color: white;
        }

        h2 {
            text-align: center;
            font-weight: 700;
            color: #facc15;
            margin-bottom: 30px;
        }

        label {
            font-weight: 600;
            color: #facc15;
        }

        .form-control, .form-select {
            border-radius: 10px;
            background-color: #334155;
            border: 1px solid #475569;
            color: white;
        }

        .form-control:focus, .form-select:focus {
            border-color: #38bdf8;
            box-shadow: 0 0 0 0.2rem rgba(56, 189, 248, 0.25);
        }

        .btn-primary {
            background-color: #38bdf8;
            border: none;
            font-size: 1.2rem;
            padding: 12px;
            font-weight: 600;
            border-radius: 10px;
        }

        .btn-primary:hover {
            background-color: #0ea5e9;
        }

        #imagePreview {
            display: none;
            max-width: 100%;
            height: auto;
            border-radius: 12px;
            border: 2px solid #facc15;
            margin-top: 15px;
        }

        @keyframes fadeIn {
            from { opacity: 0; transform: translateY(20px); }
            to { opacity: 1; transform: translateY(0); }
        }

        @media (max-width: 768px) {
            .form-container {
                padding: 25px;
                margin: 60px 15px;
            }

            h2 {
                font-size: 1.8rem;
            }
        }
    </style>

    <script>
        function updateLandmarks() {
            const city = document.getElementById("city").value;
            const landmarkDropdown = document.getElementById("landMark");
            landmarkDropdown.innerHTML = "";

            let options = [];
            if (city === "Pune") {
                options = ["", "Wakad", "Kharadi", "Punawale", "Aundh"];
            } else if (city === "Nagpur") {
                options = ["", "Jamtha", "Rahate Colony", "Sitabuldi"];
            }

            options.forEach(function (landmark) {
                let option = document.createElement("option");
                option.value = landmark;
                option.text = landmark;
                landmarkDropdown.appendChild(option);
            });
        }

        function previewImage(event) {
            const preview = document.getElementById("imagePreview");
            const file = event.target.files[0];
            if (file) {
                preview.src = URL.createObjectURL(file);
                preview.style.display = "block";
            }
        }
    </script>
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

<!-- Form Container -->
<div class="form-container">
    <h2><i class="fa-solid fa-plus me-2"></i>Add Details</h2>
    <form action="/addProperty" method="post" enctype="multipart/form-data" modelAttribute="property">
        <div class="mb-3">
            <label class="form-label">Apartment Name</label>
            <input type="text" class="form-control" name="name" required>
        </div>

        <div class="mb-3">
            <label class="form-label">City</label>
            <select name="city" id="city" class="form-select" onchange="updateLandmarks()" required>
                <option value="">--Select City--</option>
                <option value="Pune">Pune</option>
                <option value="Nagpur">Nagpur</option>
            </select>
        </div>

        <div class="mb-3">
            <label class="form-label">Landmark</label>
            <select name="landMark" id="landMark" class="form-select" required>
                <option value="">--Select Landmark--</option>
            </select>
        </div>

        <div class="mb-3">
            <label class="form-label">Address</label>
            <input type="text" class="form-control" name="address" required>
        </div>

        <div class="mb-3">
            <label class="form-label">BHK Type</label>
            <select name="bhk" class="form-select" required>
                <option value="1 BHK">1 BHK</option>
                <option value="2 BHK">2 BHK</option>
                <option value="3 BHK">3 BHK</option>
            </select>
        </div>

        <div class="mb-3">
            <label class="form-label">Apartment Status</label>
            <select name="propertyStatus" class="form-select" required>
                <option value="Under Construction">Under Construction</option>
                <option value="Ready">Ready</option>
            </select>
        </div>

        <div class="mb-3">
            <label class="form-label">Carpet Area Size (sq. ft)</label>
            <input type="text" class="form-control" name="propertyAreaSize" required>
        </div>

        <div class="mb-3">
            <label class="form-label">Price (₹)</label>
            <input type="text" class="form-control" name="propertyPrice" required>
        </div>

        <div class="mb-3">
            <label class="form-label">Upload Apartment Image</label>
            <input type="file" class="form-control" name="propertyImage" accept="image/*" onchange="previewImage(event)" required>
            <img id="imagePreview" alt="Property Image Preview">
        </div>

        <div class="d-grid">
            <button type="submit" class="btn btn-primary btn-lg">
                <i class="fa-solid fa-paper-plane me-2"></i>Submit
            </button>
        </div>
    </form>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
