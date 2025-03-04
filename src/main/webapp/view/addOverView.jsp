<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <title>Add Property Overview</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.0/css/bootstrap.min.css">
</head>
<body>

    <div class="container mt-5">
        <h2 class="text-center">Add Property Overview</h2>
        <form action="${pageContext.request.contextPath}/buy-overview/save" method="post" enctype="multipart/form-data">

            <div class="mb-3">
                <label class="form-label">Property ID</label>
                <input type="text" class="form-control" name="propertyId" required>
            </div>

            <div class="mb-3">
                <label class="form-label">BHK</label>
                <input type="text" class="form-control" name="bhk" required>
            </div>

            <div class="mb-3">
                <label class="form-label">Parking</label>
                <input type="text" class="form-control" name="parking" required>
            </div>

            <div class="mb-3">
                <label class="form-label">Apartment</label>
                <input type="text" class="form-control" name="apartment" required>
            </div>

            <div class="mb-3">
                <label class="form-label">Builder</label>
                <input type="text" class="form-control" name="builder" required>
            </div>

            <div class="mb-3">
                <label class="form-label">Date of Establishment</label>
                <input type="date" class="form-control" name="dateOfEstablishment" required>
            </div>

            <div class="mb-3">
                <label class="form-label">Tower</label>
                <input type="text" class="form-control" name="tower" required>
            </div>

            <div class="mb-3">
                <label class="form-label">Units</label>
                <input type="text" class="form-control" name="units" required>
            </div>

            <div class="mb-3">
                <label class="form-label">Flat Size</label>
                <input type="text" class="form-control" name="flatSize" required>
            </div>

            <div class="mb-3">
                <label class="form-label">Project Area</label>
                <input type="text" class="form-control" name="projectArea" required>
            </div>

            <div class="mb-3">
                <label class="form-label">Price</label>
                <input type="text" class="form-control" name="price" required>
            </div>

            <div class="mb-3">
                <label class="form-label">Possession Date</label>
                <input type="date" class="form-control" name="possessionDate" required>
            </div>

            <div class="mb-3">
                <label class="form-label">Security</label>
                <input type="text" class="form-control" name="security" required>
            </div>

            <div class="mb-3">
                 <label for="pdfFile" class="form-label">Upload PDF</label>
                 <input type="file" class="form-control" id="pdfFile" name="pdfFile" accept="application/pdf" required>
            </div>

            <div class="mb-3">
                <label class="form-label">About Property</label>
                <textarea class="form-control" name="aboutProperty" rows="3" required></textarea>
            </div>

            <button type="submit" class="btn btn-primary">Submit</button>
        </form>
    </div>

</body>
</html>
