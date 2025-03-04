<!DOCTYPE html>
<html>
<head>
    <title>LivSpace</title>

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.0/css/bootstrap.min.css">
    <style>
        body {
            background-color: #f8f9fa;
            text-align: center;
        }
        .header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 20px;
            background: #343a40;
            color: white;
        }
        .logo {
            width: 120px; /* Adjust size as needed */
            height: auto;
        }
        .buttons-container {
            margin-top: 50px;
        }
        .btn-custom {
            width: 150px;
            margin: 10px;
            font-size: 18px;
        }
        .livspace-text {
            font-size: 50px;
            font-weight: bold;
            color: #007bff;
            margin-top: 50px;
        }
    </style>
</head>
<body>

    <div class="header">
        <img src="${pageContext.request.contextPath}/images/livspace-logo.jpg" alt="LivSpace Logo" class="logo">
        <div>
            <a class="btn btn-light" href="/sign-in" role="button">Sign In</a>
            <a class<button type="button" href="/about-us" class="btn btn-secondary btn-sm">About Us</button></a>
            <a class<button type="button" href="/contact-us" class="btn btn-secondary btn-sm">Contact Us</button></a>
        </div>
    </div>

    <div class="livspace-text">LivSpace</div>

    <div class="buttons-container">
        <a class="btn btn-dark btn-custom" href="/buy" role="button">Buy</a>
        <a class="btn btn-success btn-custom" href="/rent" role="button">Rent</a>
        <a class="btn btn-secondary btn-custom" href="/showPropertyPage" role="button">Sell</a>
    </div>

</body>
</html>
