<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <title>Property Listings</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.0/css/bootstrap.min.css">
    <style>
        body {
            background-color: #f8f9fa;
        }
        .container {
            margin-top: 50px;
        }
        .table thead {
            background-color: #007bff;
            color: white;
        }
    </style>
</head>
<body>

    <div class="container">
        <h2 class="text-center mb-4">Property Listings</h2>

        <table class="table table-bordered table-hover">
            <thead>
                <tr>
                    <th>Property ID</th>
                    <th>BHK</th>
                    <th>Parking</th>
                    <th>Apartment</th>
                    <th>Builder</th>
                    <th>Flat Size</th>
                    <th>Price</th>
                    <th>Possession Date</th>
                    <th>Security</th>
                    <th>About Property</th>
                    <th>PDF</th>
                </tr>
            </thead>
            <tbody>
                    <tr>
                        <td>${property.propertyId}</td>
                        <td>${property.bhk}</td>
                        <td>${property.parking}</td>
                        <td>${property.apartment}</td>
                        <td>${property.builder}</td>
                        <td>${property.flatSize}</td>
                        <td>${property.price}</td>
                        <td>${property.possessionDate}</td>
                        <td>${property.security}</td>
                        <td>${property.aboutProperty}</td>
                    <td>
                        <a href="/download-pdf/${property.propertyId}" class="btn btn-sm btn-success">Download PDF</a>
                    </td>
                    </tr>
            </tbody>
        </table>

    </div>

</body>
</html>
