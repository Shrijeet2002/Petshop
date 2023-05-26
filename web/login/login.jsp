<!DOCTYPE html>
<html>
<head>
  <title>LOGIN</title>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="style/login.css">
  <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
</head>
<body>
  <input type="hidden" id="status" value="<%= request.getAttribute("status") %>">
  <div class="wrapper">
    <div class="title">
      Login Form
    </div>
    <form id="loginForm" method="post">
      <div class="field">
        <input type="text" id="email" name="tbemail" required>
        <label>Email Address</label>
      </div>
      <div class="field">
        <input type="password" name="tbpass" required>
        <label>Password</label>
      </div>
      <div class="content">
        <div class="pass-link">
          <a href="http://localhost:8080/petshop/home/ValidateEmail.jsp" id="forgotPasswordLink">Forgot password?</a>
        </div>
      </div>
      <div class="field">
        <input type="submit" id="loginBtn" value="Login">
      </div>
      <div class="signup-link">
        Not a member? <a href="http://localhost:8080/petshop/registration">Signup now</a>
      </div>
      <div class="content">
        <div class="pass-link">Sign-in as an Admin-
          <a href="http://localhost:8080/petshop/home/admin.jsp">Admin Login</a>
        </div>
      </div>
    </form>
  </div>
  
  <script>

  </script>
</body>
</html>
