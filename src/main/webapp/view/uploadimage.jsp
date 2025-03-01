<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>PropertyImage</title>
</head>
<body>
    <h2>Upload Image</h2>
    <form action="/uploadimage" method="post" enctype="multipart/form-data">
        <input type="file" name="image" accept="image/propertyImage" required />
        <button type="submit">Upload</button>
    </form>
    <p>${message}</p>
    <c:if test="${not empty imageId}">
        <h3>Uploaded Image:</h3>
        <img src="${pageContext.request.contextPath}/image/${propertyId}" alt="Uploaded Image" />
    </c:if>
</body>
</html>