<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<html>
<head>
    <title>Add/Edit Rent Overview</title>
    <link rel="stylesheet" href="/css/bootstrap.min.css"/>
</head>
<body>
    <div class="container mt-4">
        <h2>${rentOverview.rid == null ? "Add" : "Edit"} Rent Overview</h2>
        <form:form modelAttribute="rentOverview" method="post" action="/admin/rentoverview/saver">
            <form:hidden path="rid"/>

            <div class="form-group">
                <label>Rent Property Title</label>
                <form:input path="rentPropertyTitle" cssClass="form-control"/>
            </div>

            <div class="form-group">
                <label>Location</label>
                <form:input path="location" cssClass="form-control"/>
            </div>

            <div class="form-group">
                <label>Price</label>
                <form:input path="price" cssClass="form-control"/>
            </div>

            <div class="form-group">
                <label>Description</label>
                <form:textarea path="description" cssClass="form-control"/>
            </div>

            <button type="submit" class="btn btn-success">Save</button>
            <a href="/admin/rentoverview" class="btn btn-secondary">Cancel</a>
        </form:form>
    </div>
</body>
</html>