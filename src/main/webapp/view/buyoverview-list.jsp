<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <title>Buy Overview List</title>
    <link rel="stylesheet" href="/css/bootstrap.min.css"/>
</head>
<body>
    <div class="container mt-4">
        <h2>Buy Overview List</h2>
        <a href="/admin/buyoverview/add" class="btn btn-primary mb-3">Add New</a>
        <table class="table table-bordered">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Property Title</th>
                    <th>Location</th>
                    <th>Price</th>
                    <th>Description</th>
                    <th>Actions</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="item" items="${buyList}">
                    <tr>
                        <td>${item.id}</td>
                        <td>${item.propertyTitle}</td>
                        <td>${item.location}</td>
                        <td>${item.price}</td>
                        <td>${item.description}</td>
                        <td>
                            <a href="/admin/buyoverview/edit/${item.id}" class="btn btn-warning btn-sm">Edit</a>
                            <a href="/admin/buyoverview/delete/${item.id}" class="btn btn-danger btn-sm">Delete</a>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>
</body>
</html>
