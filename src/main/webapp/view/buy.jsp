<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Buy</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.0/css/bootstrap.min.css">
    <style>
        body {
            background-color: #f8f9fa;
        }
        .container {
            max-width: 600px;
            margin-top: 50px;
            background: white;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        .btn-custom {
            width: 100%;
        }
    </style>
    <title>Dependent Dropdown</title>
        <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

        <script>
                function loadLandmarks() {
                    let cityId = $("#cityDropdown").val();  // Get selected city ID
                    $("#landmarkDropdown").empty();  // Clear existing options

                    if (cityId) {
                        $.ajax({
                            url: "/landmarks",  // API Endpoint
                            type: "GET",
                            data: { cityId: cityId },  // Send city ID as a parameter
                            success: function(data) {
                                $("#landmarkDropdown").append("<option>Select Landmark</option>");
                                $.each(data, function(index, landmark) {
                                    $("#landmarkDropdown").append(
                                        `<option value="${landMark.landMark}">${landmark.name}</option>`
                                    );
                                });
                            },
                            error: function() {
                                alert("Error fetching landmarks!");
                            }
                        });
                    }
                }
            </script>
</head>
<body>
    <div class="container">
        <h2 class="text-center">Buy</h2>
        <form action="buy.jsp" method="get">
            <div class="mb-3">
                <label for="city" class="form-label">Select City</label>
                <select class="form-control" id="cityDropdown" name="city" onchange="loadLandmarks() >
                <option value="">Select City</option>

                        <option value="Pune">Pune</option>
                        <option value="Nagpur">Nagpur</option>

                </select>
            <div>
            <div class="mb-3">
                <label for="landMark" class="form-label">Select Landmark</label>
                <select class="form-control" id="landmarkDropdown" name="landMark">
                    <option value="">Select Landmark</option>
    
                </select>
            <div class="mb-3">
                <label for="bhk" class="form-label">Select BHK</label>
                <select class="form-control" id="bhk" name="bhk" onchange="loadPropertyType()>
                     <option value="">Select BHK</option>
                      <c:forEach var="b" items="${cities}">
                          <option value="${b.BHK}">${b.BHK}</option>
                            </c:forEach>
                </select>
            </div>
        <div>
            <div class="mb-3">
                <label class="form-label">Property Type</label><br>
                <input type="radio" id="fullhouse" name="property_type" value="Full House" required>
                <label for="fullhouse">Full House</label>
                <input type="radio" id="plot" name="property_type" value="Plot" required>
                <label for="plot">Plot</label>
            </div>
            <div class="mb-3">
                <label for="status" class="form-label">Property Status</label>
                <select class="form-control" id="status" name="status" required>
                    <option value="">Select Status</option>
                    <option value="Under Construction">Under Construction</option>
                    <option value="Ready">Ready</option>
                </select>
            </div>
            <a class="btn btn-primary btn-custom" href="/sign-in" role="button" >Search</a>
        </form>
    </div>
</body>
</html>
