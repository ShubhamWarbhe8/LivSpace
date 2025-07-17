<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Calculator Page</title>

    <!-- Bootstrap & Fonts -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"/>
    <link href="https://fonts.googleapis.com/css2?family=Urbanist:wght@500;700&display=swap" rel="stylesheet">

    <style>
        html, body {
            height: 100%;
            margin: 0;
            padding: 0;
            font-family: 'Urbanist', sans-serif;
            overflow: hidden;
        }

        body {
            background: url('https://images.unsplash.com/photo-1564013799919-ab600027ffc6?auto=format&fit=crop&w=1470&q=80') no-repeat center center/cover;
            position: relative;
            color: white;
        }

        body::before {
            content: '';
            position: absolute;
            top: 0; left: 0;
            width: 100%; height: 100%;
            background: rgba(0, 0, 0, 0.6);
            z-index: 1;
        }

        .navbar {
            position: fixed;
            top: 0;
            width: 100%;
            padding: 15px 25px;
            background: rgba(0, 0, 0, 0.65);
            backdrop-filter: blur(10px);
            z-index: 10;
        }

        .navbar-brand {
            font-size: 28px;
            font-weight: 700;
            color: #ffc107;
        }

        .main-wrapper {
            position: relative;
            z-index: 2;
            height: 100%;
            display: flex;
            justify-content: center;
            align-items: center;
            padding-top: 60px; /* for navbar spacing */
        }

        .calc-wrapper {
            background: #ffffffee;
            padding: 30px 40px;
            border-radius: 20px;
            box-shadow: 0 10px 35px rgba(0, 0, 0, 0.4);
            width: 360px;
            animation: slideUp 0.8s ease;
        }

        @keyframes slideUp {
            from {
                opacity: 0;
                transform: translateY(30px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }

        .calc-title {
            text-align: center;
            margin-bottom: 25px;
            font-size: 26px;
            font-weight: bold;
            color: #333;
        }

        .form-control {
            font-size: 18px;
            padding: 12px;
            margin-bottom: 20px;
            border-radius: 10px;
            border: 1px solid #ccc;
        }

        .btn-calc {
            width: 100%;
            background: linear-gradient(135deg, #28a745, #56d798);
            color: white;
            font-size: 18px;
            font-weight: 600;
            border: none;
            border-radius: 10px;
            padding: 12px;
            transition: transform 0.2s ease;
        }

        .btn-calc:hover {
            transform: scale(1.02);
        }

        .result-box {
            background-color: #f1f1f1;
            margin-top: 20px;
            padding: 15px;
            border-radius: 10px;
            text-align: center;
            font-size: 18px;
            color: #000;
        }
    </style>
</head>
<body>

<!-- ✅ Navbar -->
<nav class="navbar navbar-expand-lg navbar-dark">
    <div class="container-fluid d-flex justify-content-between">
        <a class="navbar-brand" href="/welcome"><i class="fa-solid fa-building-circle-check me-2"></i>Rasik Reality</a>
    </div>
</nav>

<!-- ✅ Calculator Wrapper Centered -->
<div class="main-wrapper">
    <div class="calc-wrapper">
        <h3 class="calc-title"><i class="fa-solid fa-calculator me-2"></i>Loan Calculator</h3>
        <form method="post" action="/calculate-loan">
            <input type="number" name="loanAmount" placeholder="Loan Amount" class="form-control" required>
            <input type="number" step="0.01" name="annualInterestRate" placeholder="Interest Rate (%)" class="form-control" required>
            <input type="number" name="loanTenureYears" placeholder="Tenure (Years)" class="form-control" required>
            <input type="number" name="downPayment" placeholder="Down Payment" class="form-control" required>
            <button type="submit" class="btn btn-calc">Calculate</button>
        </form>

        <c:if test="${not empty emi}">
            <div class="result-box">
                <strong>Monthly EMI:</strong> ₹ ${emi}
            </div>
        </c:if>
    </div>
</div>

</body>
</html>
