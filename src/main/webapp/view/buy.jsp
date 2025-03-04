<!<DOCTYPE html>
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

 <script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
 <script>
             $(document).ready(function() {
                 $("#cityDropdown").change(function() {
                     var selectedCity = $(this).val();
                     var landmarkDropdown = $("#landmarkDropdown");
                     landmarkDropdown.empty();
                     landmarkDropdown.append('<option value=""> Select Landmark </option>');

                     if (selectedCity) {
                         $.ajax({
                             url: "/landMark",
                             type: "GET",
                             data: { city: selectedCity },
                             dataType: "json",
                             success: function(landmarks) {
                                 $.each(landmarks, function(index, landmark) {
                                     landmarkDropdown.append('<option value="' + landmark + '">' + landmark + '</option>');
                                 });
                             },
                             error: function(xhr, status, error) {
                                 alert("Error loading landmarks: " + error);
                             }
                         });
                     }
                 });
             });
     </script>
<script>
    function submitForm() {
        var city = document.getElementById("cityDropdown").value;
        if (city !== "") {
            document.getElementById("locationForm").submit();
        }
    }
</script>
</head>

<body>
    <div class="container">
        <h2 class="text-center">Buy</h2>
        <form id="locationForm" action="/buy-property" method="get">
            <div class="mb-3">
                <label for="city" class="form-label">Select City</label>
                <select class="form-control" name="city" id="cityDropdown">
                <option value="" ${selectedCity eq '' ? 'selected' : ''}>Select City</option>
                  <c:forEach var="b" items="${cities}">
            <option value="${b.city}" ${selectedCity != null && selectedCity eq city ? 'selected' : ''}>${b.city}</option>
                 </c:forEach>
              </select>
            </div>
            <div class="mb-3">
             </select>
                 <!-- Landmark Dropdown (Loaded via AJAX) -->
             <label for="landMark" class="form-label">Select Landmark:</label>
             <select id="landmarkDropdown" class="form-control"  name="landMark" >
                <option value=""> Select Landmark </option>
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
                <option value="">No landmarks available </option>
                </c:otherwise>
                </c:choose>
             </select>
            </div>

            <div class="mb-3">
                 <label for="bhk" class="form-label">Select BHK</label>
                 <select class="form-control" id="bhk" name="bhk" required>
                      <option value="">Select BHK</option>
                      <option value="1RK">1 RK</option>
                      <option value="1BHK">1 BHK</option>
                      <option value="2BHK">2 BHK</option>
                      <option value="3BHK">3 BHK</option>
                      <option value="3+BHK">3+BHK</option>
                 </select>
            </div>
            <div class="mb-3">
                <label for="status" class="form-label">Property Status</label>
                <select class="form-control" id="status" name="status" required>
                    <option value="">Select Status</option>
                    <option value="UnderConstruction">Under Construction</option>
                    <option value="Ready">Ready</option>
                </select>
            </div>
            <input type="hidden" name="selectedCity" value="${selectedCity}">
            <input class="btn btn-primary" type="submit" value="Submit">
        </form>
    </div>
</body>
</html>