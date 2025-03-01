<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Add Property</title>
</head>
<body>
    <h2>Add Property Details</h2>
    <form action="addProperty" method="post" enctype="multipart/form-data" modelAttribute="property">
        <label>Property Name:</label>
        <input type="text" name="name" required><br><br>

        <label>LandMark:</label>
        <input type="text" name="landMark" required><br><br>

        <label>Address:</label>
        <input type="text" name="address" required><br><br>

        <label>City:</label>
        <input type="text" name="city" required><br><br>

        <label>BHK Type:</label>
        <select name="bhk" required>
            <option value="1 BHK">1 BHK</option>
            <option value="2 BHK">2 BHK</option>
            <option value="3 BHK">3 BHK</option>
        </select><br><br>

        <label>Property Status:</label>
        <input type="text" name="propertyStatus" required><br><br>

        <label>Carpet Area Size:</label>
        <input type="text" name="propertyAreaSize" required><br><br>

        <label>Property Price:</label>
        <input type="text" name="propertyPrice" required><br><br>

        <label>Upload Property Image:</label>
        <input type="file" name="propertyImage" accept="image/*" required><br><br>

        <button type="submit">Submit</button>
    </form>
</body>
</html>
