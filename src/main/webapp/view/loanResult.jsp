<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Loan Result</title>

    <!-- Bootstrap & Fonts -->
    <meta charset="UTF-8">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"/>
    <link href="https://fonts.googleapis.com/css2?family=Urbanist:wght@500;700&display=swap" rel="stylesheet"/>

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
            padding-top: 60px;
        }

        .result-wrapper {
            background: #ffffffee;
            padding: 35px 40px;
            border-radius: 20px;
            box-shadow: 0 10px 35px rgba(0, 0, 0, 0.4);
            width: 460px;
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

        .result-title {
            text-align: center;
            margin-bottom: 25px;
            font-size: 26px;
            font-weight: bold;
            color: #333;
        }

        .list-group-item {
            font-size: 18px;
            font-weight: 500;
            color: #333;
            background: #f9f9f9;
            border: 1px solid #ddd;
            border-radius: 10px;
            margin-bottom: 12px;
        }

        .btn-back {
            display: block;
            margin: 25px auto 0;
            padding: 10px 25px;
            border-radius: 10px;
            font-weight: 600;
            background: linear-gradient(135deg, #6c757d, #a9b1b9);
            color: white;
            border: none;
            transition: background 0.3s ease;
        }

        .btn-back:hover {
            background: linear-gradient(135deg, #5a6268, #889199);
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

<!-- ✅ Result Content Centered -->
<div class="main-wrapper">
    <div class="result-wrapper">
        <h3 class="result-title"><i class="fa-solid fa-file-invoice-dollar me-2"></i>Loan Result</h3>
        <ul class="list-group">
            <li class="list-group-item">
                Principal Loan Amount: ₹ <fmt:formatNumber value="${principal}" type="number" groupingUsed="true" maxFractionDigits="2"/>
            </li>
            <li class="list-group-item">
                Monthly EMI: ₹ <fmt:formatNumber value="${emi}" type="number" groupingUsed="true" maxFractionDigits="2"/>
            </li>
            <li class="list-group-item">
                Total Payment (EMI × Months): ₹ <fmt:formatNumber value="${totalPayment}" type="number" groupingUsed="true" maxFractionDigits="2"/>
            </li>
            <li class="list-group-item">
                Total Interest Paid: ₹ <fmt:formatNumber value="${totalInterest}" type="number" groupingUsed="true" maxFractionDigits="2"/>
            </li>
        </ul>
        <a href="/loan-calculator" class="btn btn-back mt-3"><i class="fa fa-arrow-left me-2"></i>Back to Calculator</a>
    </div>
</div>

</body>
</html>
