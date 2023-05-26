<%-- 
    Document   : navbar
    Created on : May 18, 2023, 12:03:28 AM
    Author     : shrijeet
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
    </head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw==" crossorigin="anonymous" referrerpolicy="no-referrer"/>
    <body>
        <input type='hidden' id='email' value='<%= request.getAttribute("email") %>' />
   <nav class="navbar navbar-expand-lg bg-body-tertiary">
  <div class="container-fluid">
      <a class="navbar-brand" href="#"><img src="px.png" style="width:50px;height:50px;border-radius: 100%"></a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="http://localhost:8080/petshop/home">Home</a>
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            Category
          </a>
          <ul class="dropdown-menu">
              <li><a href="http://localhost:8080/petshop/fe/dog.jsp"><button class="btn" type="button" data-bs-toggle="offcanvas" data-bs-target="#SalonCanvas" aria-controls="SalonCanvas">Dogs</button></a></li>   
              <li><a href="http://localhost:8080/petshop/fe/Cat.jsp"><button class="btn" type="button" data-bs-toggle="offcanvas" data-bs-target="#ElectricCanvas" aria-controls="ElectricCanvas">Cats</button></a></li>     
              <li><a href="http://localhost:8080/petshop/fe/Rabbit.jsp"><button class="btn" type="button" data-bs-toggle="offcanvas" data-bs-target="#CleanerCanvas" aria-controls="CleanerCanvas">Rabbits</button></a></li>
              <li><a href="http://localhost:8080/petshop/fe/pp.jsp"><button class="btn" type="button" data-bs-toggle="offcanvas" data-bs-target="#SalonCanvas" aria-controls="SalonCanvas">Pet Products</button></a></li>

          </ul>
        </li>
      </ul>
      <div class="d-flex gap-2">

        <div id='auth'>
            <a href="http://localhost:8080/petshop/registration"><button type="button" class="btn btn-warning">Signup</button></a>
            <a href="http://localhost:8080/petshop/login"><button class="btn btn-outline-success" type="submit">Login</button></a>
        </div>
        <div class="dropdown" id='loggedIn' style="display: none" style="margin-right: 2rem">
            <a class="btn btn-secondary dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
              <i class="fa-solid fa-user"></i>
            </a>

            <ul class="dropdown-menu "   >
              <li><a class="dropdown-item" id='userEmail' ></a></li>
              <li><a class="dropdown-item" id='logout' href="#">Log Out</a></li>
            </ul>
          </div>
          
      </form>
    </div>
  </div>
</nav>
   <script>
    const emailField = document.getElementById('email')
    const userEmail = localStorage.getItem('user_email');
    const emailPlaceHolder = document.getElementById('userEmail')
    let auth = document.getElementById("auth");
    let loggedIn = document.getElementById("loggedIn");
    const logout = document.getElementById("logout")

    logout.addEventListener('click',(e)=>{
        console.log(userEmail)
        localStorage.setItem("user_email",'');
        localStorage.setItem("isLoggedIn",'');

        location.reload();
        location.href = 'http://localhost:8080/petshop/login';
        auth.style.display = "block";
        loggedIn.style.display = "none";

    })
    console.log(emailField.value === "null")
    
     if(emailField.value !== "null"){
         location.href = 'http://localhost:8080/petshop/home'
         localStorage.setItem('user_email',emailField.value)
         emailPlaceHolder.innerHTML = emailField.value;
         auth.style.display = "none";
         loggedIn.style.display = "block";
     }if(userEmail !== null || userEmail !== 'null' || userEmail !== ''){
         console.log(userEmail)
         emailPlaceHolder.innerHTML = userEmail;
         auth.style.display = "none";
         loggedIn.style.display = "block";
     }if(userEmail === '' || userEmail === 'null'){
         console.log("Nulllllll");
         auth.style.display = "block";
         loggedIn.style.display = "none";
     }
</script>
    </body>
</html>
