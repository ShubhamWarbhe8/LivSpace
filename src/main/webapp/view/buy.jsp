<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Buy Property - LivSpace</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!-- Bootstrap & Fonts -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.0/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css"/>
    <link href="https://fonts.googleapis.com/css2?family=Urbanist:wght@400;600;700&display=swap" rel="stylesheet">
    <script src="https://kit.fontawesome.com/a076d05399.js" crossorigin="anonymous"></script>

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
            color: #ffc107;
        }

        .navbar-brand:hover {
            color: #ffd700;
        }

        .form-container {
            background: rgba(255, 255, 255, 0.12);
            backdrop-filter: blur(20px);
            border-radius: 25px;
            padding: 40px;
            max-width: 720px;
            margin: 130px auto 50px;
            box-shadow: 0 10px 40px rgba(0,0,0,0.35);
            color: #fff;
            animation: fadeInUp 1s ease;
        }

        h2 {
            text-align: center;
            font-size: 34px;
            margin-bottom: 30px;
            font-weight: 700;
            color: #fff;
        }

        .form-label {
            color: #fff;
            font-weight: 600;
            font-size: 16px;
        }

        .custom-select-wrapper {
            position: relative;
            display: inline-block;
            width: 100%;
        }

        .custom-select {
            width: 100%;
            padding: 14px 45px 14px 20px; /* more space on the right for arrow */
            font-size: 16px;
            font-weight: 500;
            border: none;
            border-radius: 16px;
            background: linear-gradient(to right, rgba(255,255,255,0.15), rgba(255,255,255,0.1));
            color: #fff;
            backdrop-filter: blur(10px);
            appearance: none;
            -webkit-appearance: none;
            -moz-appearance: none;
            transition: all 0.3s ease;
        }

        .custom-select:focus {
            outline: none;
            box-shadow: 0 0 12px #ffd700;
        }

        .custom-select option {
            color: #000;
        }

       .custom-select-wrapper::after {
           content: "\f107"; /* Font Awesome down arrow */
           font-family: "Font Awesome 5 Free";
           font-weight: 900;
           font-size: 18px;
           color: #fff;
           position: absolute;
           top: 50%;
           right: 20px;
           transform: translateY(-50%);
           pointer-events: none;
           z-index: 5;
       }

        .btn-custom {
            width: 100%;
            background: linear-gradient(to right, #f8c700, #ffde59);
            border: none;
            font-size: 18px;
            font-weight: 700;
            padding: 14px;
            border-radius: 16px;
            color: #000;
            margin-top: 20px;
            transition: all 0.3s ease;
        }

        .btn-custom:hover {
            transform: scale(1.05);
            box-shadow: 0 10px 20px rgba(255, 215, 0, 0.4);
        }

        @keyframes fadeInUp {
            from {
                opacity: 0;
                transform: translateY(40px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }
    </style>

    <script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
    <script>
        $(document).ready(function () {
            $("#cityDropdown").change(function () {
                var selectedCity = $(this).val();
                var landmarkDropdown = $("#landmarkDropdown");
                landmarkDropdown.empty();
                landmarkDropdown.append('<option value="">Select Landmark</option>');

                if (selectedCity) {
                    $.ajax({
                        url: "/landMark",
                        type: "GET",
                        data: { city: selectedCity },
                        dataType: "json",
                        success: function (landmarks) {
                            $.each(landmarks, function (index, landmark) {
                                landmarkDropdown.append('<option value="' + landmark + '">' + landmark + '</option>');
                            });
                        },
                        error: function (xhr, status, error) {
                            alert("Error loading landmarks: " + error);
                        }
                    });
                }
            });
        });
    </script>
</head>

<body>

<nav class="navbar navbar-expand-lg navbar-dark">
    <div class="container-fluid d-flex justify-content-between">
         <a class="navbar-brand" href="/welcome"><i class="fa-solid fa-building-circle-check me-2"></i>Rasik Reality</a>
    </div>
</nav>

<div class="form-container">
    <form action="/buy-property" method="get">
        <div class="mb-3">
            <label for="cityDropdown" class="form-label">City</label>
            <div class="custom-select-wrapper">
                <select class="custom-select" name="city" id="cityDropdown" required>
                    <option value="" ${selectedCity eq '' ? 'selected' : ''}>Select City</option>
                    <c:forEach var="b" items="${cities}">
                        <option value="${b.city}" ${selectedCity != null && selectedCity eq b.city ? 'selected' : ''}>${b.city}</option>
                    </c:forEach>
                </select>
            </div>
        </div>

        <div class="mb-3">
            <label for="landmarkDropdown" class="form-label">Landmark</label>
            <div class="custom-select-wrapper">
                <select id="landmarkDropdown" class="custom-select" name="landMark">
                    <option value="">Select Landmark</option>
                    <option value="">Choose Landmark</option>
                    <c:choose>
                        <c:when test="${selectedCity == 'Pune'}">
                            <option value="Wakad">Wakad</option>
                            <option value="Balewadi">Balewadi</option>
                            <option value="Baner">Baner</option>
                        </c:when>
                        <c:when test="${selectedCity == 'Nagpur'}">
                            <option value="Jamtha">Jamtha</option>
                            <option value="Rahate Colony">Rahate Colony</option>
                            <option value="Sitabuldi">Sitabuldi</option>
                        </c:when>
                        <c:otherwise>
                            <option value="">No landmarks available</option>
                        </c:otherwise>
                    </c:choose>
                </select>
            </div>
        </div>

        <div class="mb-3">
            <label for="bhk" class="form-label">BHK</label>
            <div class="custom-select-wrapper">
                <select class="custom-select" id="bhk" name="bhk" required>
                    <option value="">Select BHK</option>
                    <option value="1BHK">1BHK</option>
                    <option value="2BHK">2BHK</option>
                    <option value="3BHK">3BHK</option>
                </select>
            </div>
        </div>

        <div class="mb-3">
            <label for="status" class="form-label">Apartment Status</label>
            <div class="custom-select-wrapper">
                <select class="custom-select" id="status" name="status" required>
                    <option value="">Select Status</option>
                    <option value="UnderConstruction">Under Construction</option>
                    <option value="Ready">Ready</option>
                </select>
            </div>
        </div>

        <input type="hidden" name="selectedCity" value="${selectedCity}">
        <button type="submit" class="btn btn-custom">Search</button>
    </form>
</div>

</body>
</html>
