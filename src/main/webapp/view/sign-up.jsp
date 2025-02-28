<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org">
<head>
    <title>Login Here</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
</head>
<body class="d-flex align-items-center justify-content-center vh-100 bg-light">

    <div class="card p-4 shadow-lg" style="width: 400px;">
        <h2 class="text-center">Sign Up</h2>

        <form action="/register" method="post" >
            <div class="mb-3">
                <label class="form-label">First Name:</label>
                <input type="text" class="form-control" name="firstName" required />
            </div>
             <div class="mb-3">
                 <label class="form-label">Last Name:</label>
                 <input type="text" class="form-control" name="lastName" required />
            </div>
            <div class="mb-3">
                <label class="form-label">Email ID:</label>
                <input type="email-id" class="form-control" name="emailId" required />
            </div>
              <div class="mb-3">
                 <label class="form-label">Mobile Number:</label>
                 <input type="text" class="form-control" name="mobileNumber" required />
            </div>
            <div class="mb-3">
                <label class="form-label">Gender:</label>
                <input type="text" class="form-control" name="gender" required />
            </div>
            <div class="mb-3">
                 <label class="form-label">City:</label>
                 <input type="text" class="form-control" name="city" required />
            </div>

            <div class="mb-3">
                  <label class="form-label">Password:</label>
                  <input type="password" class="form-control" name="password" required />
            </div>


            <button type="submit" class="btn btn-primary w-100">Sign Up</button>
        </form>
</body>
</html>
