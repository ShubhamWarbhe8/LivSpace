<!DOCTYPE html>
<html>
<head>
    <title>Rent Property</title>
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
        <h2 class="text-center">Rent</h2>
        <form action="rent.jsp" method="get">
            <div class="mb-3">
                <label for="city" class="form-label">City</label>
                <select class="form-control" id="city" name="city" required>
                    <option value="">Select City</option>
                    <option value="New York">New York</option>
                    <option value="Los Angeles">Los Angeles</option>
                    <option value="Chicago">Chicago</option>
                </select>
            </div>
            <div class="mb-3">
                <label for="landmark" class="form-label">Landmark</label>
                <input type="text" class="form-control" id="landmark" name="landmark" required>
            </div>
            <div class="mb-3">
                <label class="form-label">Property Type</label><br>
                <input type="radio" name="propertyType" value="fullhouse"> Full House
                <input type="radio" name="propertyType" value="plot"> Plot
                <input type="radio" name="propertyType" value="pg"> PG/Hostel
                <input type="radio" name="propertyType" value="flatmates"> Flatmates
            </div>
            <div class="mb-3">
                <label for="bhk" class="form-label">BHK</label>
                <select class="form-control" id="bhk" name="bhk" required>
                    <option value="">Select BHK</option>
                    <option value="1bhk">1 BHK</option>
                    <option value="2bhk">2 BHK</option>
                    <option value="3bhk">3 BHK</option>
                </select>
            </div>
            <div class="mb-3">
                <label for="status" class="form-label">Property Status</label>
                <select class="form-control" id="status" name="status" required>
                    <option value="">Select Status</option>
                    <option value="under construction">Under Construction</option>
                    <option value="ready">Ready</option>
                </select>
            </div>
           <a class="btn btn-primary btn-custom" href="/sign-in" role="button" >Search</a>
        </form>
    </div>
</body>
</html>
