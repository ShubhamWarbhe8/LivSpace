<!DOCTYPE html>
<html>
<head>
    <title>Sell</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.0/css/bootstrap.min.css">
    <style>
        body {
            background-color: #f8f9fa;
        }
        .container {
            max-width: 600px;
            margin-top: 50px;
            background: white;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        .btn-custom {
            width: 100%;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2 class="text-center">Sell</h2>
        <form action="sell.jsp" method="get">
            <div class="mb-3">
                <label for="city" class="form-label">Select City</label>
                <select class="form-control" id="city" name="city" required>
                    <option value="">Choose...</option>
                    <option value="New York">New York</option>
                    <option value="Los Angeles">Los Angeles</option>
                    <option value="Chicago">Chicago</option>
                    <option value="Houston">Houston</option>
                </select>
            </div>
            <div class="mb-3">
                <label for="landmark" class="form-label">Add Landmark</label>
                <input type="text" class="form-control" id="landmark" name="landmark" required>
            </div>
            <div class="mb-3">
                <label class="form-label">Property Type</label><br>
                <input type="radio" id="fullhouse" name="property_type" value="fullhouse" required>
                <label for="fullhouse">Full House</label>
                <input type="radio" id="plot" name="property_type" value="plot" required>
                <label for="plot">Plot</label>
            </div>
            <div class="mb-3">
                <label for="bhk" class="form-label">Select BHK</label>
                <select class="form-control" id="bhk" name="bhk" required>
                    <option value="">Choose...</option>
                    <option value="1BHK">1 BHK</option>
                    <option value="2BHK">2 BHK</option>
                    <option value="3BHK">3 BHK</option>
                </select>
            </div>
            <a class="btn btn-primary btn-custom" href="/sign-in" role="button" >Start Posting+</a>
        </form>
    </div>
</body>
</html>