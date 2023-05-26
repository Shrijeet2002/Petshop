<!DOCTYPE html>
<html>
<head>
    <title>Show Customers and Orders</title>
    <style>
        body {
            background-image: url('https://png.pngtree.com/thumb_back/fh260/background/20211118/pngtree-technology-round-dashboard-image_908915.jpg');
            background-repeat: no-repeat;
            background-size: cover;
            font-family: Arial, sans-serif;
        }
        h1 {
      color: whitesmoke;
        }
        .container {
            text-align: center;
            margin-top: 150px;
        }
        .btn {
            padding: 10px 20px;
            font-size: 18px;
            margin: 10px;
            background-color: #4CAF50;
            color: white;
            border: none;
            cursor: pointer;
            border-radius: 4px;
        }
        .btn:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Show Customers and Orders</h1>
        <form>
            <button class="btn" type="button" onclick="redirectTo('http://localhost:8080/petshop/home/admindash.jsp')">Show Customers</button>
            <button class="btn" type="button" onclick="redirectTo('http://localhost:8080/petshop/home/adminorder.jsp')">Show Orders</button>
        </form>
    </div>

    <script>
        function redirectTo(url) {
            window.location.href = url;
        }
    </script>
   
</body>
</html>
