<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <title>Property List</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.0/css/bootstrap.min.css">
</head>
<body>

    <div class="container">
        <h2 class="text-center">Buy Property Listings</h2>

        <form method="get" action="/properties">
        </form>

        <table class="table table-bordered mt-4">
            <thead>
                <tr>
                    <th>Property Name</th>
                    <th>LandMark</th>
                    <th>Address</th>
                    <th>City</th>
                    <th>BHK</th>
                    <th>Property Status</th>
                    <th>Property Area Size</th>
                    <th>Property Price</th>
                    <th>Property Image</th>
                    <th>Show Property</th>

                </tr>
            </thead>
            <tbody>
                <c:forEach var="property" items="${properties}">
                    <tr>
                        <td>${property.propertyName}</td>
                        <td>${property.landMark}</td>
                        <td>${property.address}</td>
                        <td>${property.city}</td>
                        <td>${property.bhk}</td>
                        <td>${property.propertyStatus}</td>
                        <td>${property.propertyAreaSize}</td>
                        <td>${property.propertyPrice}</td>
                        <td>${property.propertyImage}</td>
                        <td><a href="/getPropertyDetails?id="${property.propertyId} class="link-primary link-offset-2 link-underline-opacity-25 link-underline-opacity-100-hover">Primary link</a></td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>

</body>
</html>
