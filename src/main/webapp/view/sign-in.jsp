<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Login Page</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
    </head>
    <body class="d-flex align-items-center justify-content-center vh-100 bg-light">

        <div class="card p-4 shadow-lg" style="width: 400px;">
            <h2 class="text-center">LivSpace</h2>

    <!-- Display error message if login fails -->
    <c:if test="${not empty error}">
        <p style="color: red;">${error}</p>
    </c:if>

    <form action="/login" method="post">
     <div class="mb-3">
       <label class="form-label">Mobile Number:</label> <br>
        <input type="text" name="mobileNumber" required>
     </div>

     <div class="mb-3">
       <label class="form-label">Password:</label> <br>
        <input type="password" name="password" required>
     </div>

      <button type="submit" class="btn btn-primary w-100">Sign In</button>
    </form>

     <div class="text-center mt-3">
          <p>Already have an account? <a href="/sign-up">Sign Up</a></p>
    </div>
</body>
</html>
