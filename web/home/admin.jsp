<!DOCTYPE html>
<html>
<head>
  <title>Admin Page</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      background-image: url('https://png.pngtree.com/thumb_back/fh260/background/20211118/pngtree-blue-round-technology-dashboard-image_908916.jpg');
      background-repeat: no-repeat;
      background-size: cover;
    }

    h1 {
      text-align: center;
      margin-top: 150px;
      color: whitesmoke;
    }

    form {
      max-width: 300px;
      margin: 0 auto;
      background-color: rgba(255, 255, 255, 0.8);
      padding: 20px;
      border-radius: 5px;
      box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    }

    label {
      display: block;
      margin-bottom: 10px;
    }

    input[type="text"],
    input[type="password"] {
      width: 100%;
      padding: 10px;
      margin-bottom: 20px;
      border: 1px solid #ccc;
      border-radius: 4px;
      box-sizing: border-box;
    }

    input[type="button"] {
      width: 100%;
      background-color: #4CAF50;
      color: white;
      padding: 10px 20px;
      border: none;
      border-radius: 4px;
      cursor: pointer;
    }

    input[type="button"]:hover {
      background-color: #45a049;
    }
  </style>
  <script>
    function login() {
      var id = document.getElementById("id").value;
      var password = document.getElementById("password").value;

      // Check if the entered ID and password match the default values
      if (id === "admin" && password === "admin") {
        alert("Login successful! You will now be redirected to the admin section.");
        // Redirect to the admin dashboard page
        window.location.href = "adminselect.jsp";
      } else {
        alert("Invalid ID or password. Please try again.");
      }
    }
  </script>
</head>
<body>
  <h1>Admin Login</h1>
  <form>
    <label for="id">ID:</label>
    <input type="text" id="id" required><br><br>
    <label for="password">Password:</label>
    <input type="password" id="password" required><br><br>
    <input type="button" value="Login" onclick="login()">
  </form>
</body>
</html>
