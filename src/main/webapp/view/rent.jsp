<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Exclusive Rentals | LivSpace</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

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
            font-size: 30px;
            font-weight: 700;
            color: #ffd700;
            transition: 0.3s ease-in-out;
        }

        .navbar-brand:hover {
            color: #fff8dc;
            transform: scale(1.05);
        }

        .nav-link {
            color: #ffffff !important;
            font-weight: 500;
            margin-right: 20px;
            transition: color 0.3s;
        }

        .nav-link:hover {
            color: #ffd700 !important;
        }

        .form-container {
            background: rgba(255, 255, 255, 0.1);
            backdrop-filter: blur(20px);
            border-radius: 30px;
            padding: 50px;
            max-width: 800px;
            margin: 140px auto 50px;
            box-shadow: 0 12px 60px rgba(0,0,0,0.4);
            color: #fff;
            animation: fadeInUp 1s ease;
        }

        @keyframes fadeInUp {
            from {
                opacity: 0;
                transform: translateY(50px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }

        h2 {
            text-align: center;
            font-size: 36px;
            margin-bottom: 35px;
            font-weight: 700;
            color: #fffacd;
        }

        .form-label {
            color: #ffffff;
            font-weight: 600;
            font-size: 17px;
        }

        .custom-select-wrapper {
            position: relative;
            display: inline-block;
            width: 100%;
        }

        .custom-select {
            width: 100%;
            padding: 14px 45px 14px 20px;
            font-size: 16px;
            font-weight: 500;
            border: none;
            border-radius: 18px;
            background: linear-gradient(to right, rgba(255,255,255,0.15), rgba(255,255,255,0.08));
            color: #fff;
            backdrop-filter: blur(12px);
            appearance: none;
            transition: all 0.3s ease;
        }

        .custom-select:focus {
            outline: none;
            box-shadow: 0 0 12px #ffea00;
        }

        .custom-select option {
            color: #000;
        }

        .custom-select-wrapper::after {
            content: "\f107";
            font-family: "Font Awesome 5 Free";
            font-weight: 900;
            font-size: 18px;
            color: #fff;
            position: absolute;
            top: 50%;
            right: 20px;
            transform: translateY(-50%);
            pointer-events: none;
        }

        .btn-custom {
            width: 100%;
            background: linear-gradient(to right, #f5d742, #ffe98a);
            border: none;
            font-size: 20px;
            font-weight: 700;
            padding: 14px;
            border-radius: 20px;
            color: #000;
            margin-top: 25px;
            transition: all 0.3s ease;
        }

        .btn-custom:hover {
            transform: scale(1.07);
            box-shadow: 0 12px 25px rgba(255, 215, 0, 0.5);
        }
    </style>

    <script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
    <script>
        $(document).ready(function () {
            $("#cityDropdown").change(function () {
                var selectedCity = $(this).val();
                var landmarkDropdown = $("#landmarkDropdown");
                landmarkDropdown.empty();
                landmarkDropdown.append('<option value="">Choose Landmark</option>');

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
    <!-- Navbar -->
    <nav class="navbar navbar-expand-lg navbar-dark fixed-top">
        <div class="container-fluid">
            <a class="navbar-brand" href="/welcome">
                <i class="fa-solid fa-building-circle-check me-2"></i>Rasik Reality
            </a>
        </div>
    </nav>

<div class="form-container">
    <form id="locationForm" action="/rent-property" method="get">
        <div class="mb-3">
            <label for="city" class="form-label"><i class="fa-solid fa-city"></i> City</label>
            <div class="custom-select-wrapper">
                <select class="custom-select" id="cityDropdown" name="city">
                    <option value="" ${selectedCity eq '' ? 'selected' : ''}>Choose City</option>
                    <c:forEach var="b" items="${cities}">
                        <option value="${b.city}" ${selectedCity != null && selectedCity eq b.city ? 'selected' : ''}>${b.city}</option>
                    </c:forEach>
                </select>
            </div>
        </div>

        <div class="mb-3">
            <label for="landMark" class="form-label"><i class="fa-solid fa-location-dot"></i> Select Landmark</label>
            <div class="custom-select-wrapper">
                <select id="landmarkDropdown" class="custom-select" name="landMark">
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
            <label for="bhk" class="form-label"><i class="fa-solid fa-house-chimney"></i> BHK</label>
            <div class="custom-select-wrapper">
                <select class="custom-select" id="bhk" name="bhk" required>
                    <option value="">Choose BHK</option>
                    <option value="1BHK">1 BHK</option>
                    <option value="2BHK">2 BHK</option>
                    <option value="3BHK">3 BHK</option>
                </select>
            </div>
        </div>

        <input type="hidden" name="selectedCity" value="${selectedCity}">
        <button type="submit" class="btn btn-custom">Search</button>
    </form>
</div>

</body>
</html>
