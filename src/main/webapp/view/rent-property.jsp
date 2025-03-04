<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <title>Rent Property List</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.0/css/bootstrap.min.css">
</head>
<body>

    <div class="container">
        <h2 class="text-center">Rent Property Listings</h2>

        <form method="get" action="/rent-property">
        </form>

        <table class="table table-bordered mt-4">
            <thead>
                <tr>
                    <th>Rent Property Name</th>
                    <th>LandMark</th>
                    <th>Address</th>
                    <th>City</th>
                    <th>BHK</th>
                    <th>Rent Property Area Size</th>
                    <th>Rent Property Price</th>
                    <th>Rent Property Image</th>
                    <th>Show Property</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="rentProperty" items="${rentProperties}">
                    <tr>
                        <td>${rentProperty.rentPropertyName}</td>
                        <td>${rentProperty.landMark}</td>
                        <td>${rentProperty.address}</td>
                        <td>${rentProperty.city}</td>
                        <td>${rentProperty.bhk}</td>
                        <td>${rentProperty.rentPropertyAreaSize}</td>
                        <td>${rentProperty.rentPropertyPrice}</td>
                        <td>
                        <img src="/rentProperty/image/${rentProperty.rentPropertyId}" width="100" height="100" alt="Property Image">
                        </td>
                        <td><a href="/showOverView?propertyId=${rentProperty.rentPropertyId}" class="link-primary link-offset-2 link-underline-opacity-25 link-underline-opacity-100-hover">Primary link</a></td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>

</body>
</html>