<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Thank You</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.0/css/bootstrap.min.css">

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@500&display=swap" rel="stylesheet">

    <style>
        body {
            margin: 0;
            padding: 0;
            height: 100vh;
            background-image: linear-gradient(to top, #09203f 0%, #537895 100%);
            color: white;
            font-family: 'Poppins', sans-serif;
            display: flex;
            justify-content: center;
            align-items: center;
            text-align: center;
            position: relative;
        }

        body::before {
            content: "";
            position: absolute;
            top: 0;
            left: 0;
            height: 100%;
            width: 100%;
            background: rgba(0, 0, 0, 0.4);
            z-index: 1;
        }

        .thankyou-container {
            position: relative;
            z-index: 2;
            background: rgba(255, 255, 255, 0.1);
            backdrop-filter: blur(10px);
            padding: 50px;
            border-radius: 16px;
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.5);
            animation: fadeInUp 1s ease-out;
        }

        @keyframes fadeInUp {
            from {
                opacity: 0;
                transform: translateY(30px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }

        .thankyou-container h1 {
            font-size: 36px;
            color: #00d4ff;
            margin-bottom: 15px;
        }

        .thankyou-container p {
            font-size: 18px;
            color: #f1f1f1;
        }

        .btn-home {
            margin-top: 30px;
            padding: 12px 28px;
            font-size: 16px;
            font-weight: bold;
            border-radius: 30px;
            background: linear-gradient(to right, #ff6a00, #ee0979);
            border: none;
            color: white;
            transition: 0.3s ease-in-out;
        }

        .btn-home:hover {
            transform: scale(1.05);
            box-shadow: 0 5px 15px rgba(255, 105, 135, 0.4);
        }
    </style>
</head>
<body>

    <div class="thankyou-container">
        <h1>Thank you, ${name}!</h1>
        <p>We've received your message. Our team will contact you shortly.</p>
        <a href="/welcome" class="btn btn-home">Back to Home</a>
    </div>

</body>
</html>
