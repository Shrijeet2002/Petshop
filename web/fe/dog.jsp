<%-- 
    Document   : dog
    Created on : May 18, 2023, 12:46:34 PM
    Author     : shrijeet
--%>
<%@ page import="java.time.LocalDate" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>DOG STORE</title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
        <!-- Bootstrap icons-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="style1.css" rel="stylesheet" />
    </head>
    <body>
        <jsp:include page="/style/navbar.jsp" />
<!--         Navigation
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <div class="container px-4 px-lg-5">
                <a class="navbar-brand" href="#!">PetXpore</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0 ms-lg-4">
                        <li class="nav-item"><a class="nav-link active" aria-current="page" href="#!">Home</a></li>
                        <li class="nav-item"><a class="nav-link" href="#!">About</a></li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" id="navbarDropdown" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">Shop</a>
                            <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                                <li><a class="dropdown-item" href="#!">All Products</a></li>
                                <li><hr class="dropdown-divider" /></li>
                                <li><a class="dropdown-item" href="#!">Popular Items</a></li>
                                <li><a class="dropdown-item" href="#!">New Arrivals</a></li>
                            </ul>
                        </li>
                    </ul>
                    <form class="d-flex">
                        <button class="btn btn-outline-dark" type="submit">
                            <i class="bi-cart-fill me-1"></i>
                            Cart
                            <span class="badge bg-dark text-white ms-1 rounded-pill">0</span>
                        </button>
                    </form>
                </div>
            </div>
        </nav>-->
        <!-- Header-->
        <header class="bg-dark py-5" style="background-image: url('./assets/animals-gec8de8ccb_1920.jpg');background-repeat: no-repeat;">
            <div class="container px-4 px-lg-5 my-5">
                <div class="text-center text-white">
                    <h1 class="display-4 fw-bolder" style="font-family:verdana">Dog Kennel</h1>
                    <p class="lead fw-normal text-black-100 mb-0">Sale Starts soon...</p>
                </div>
            </div>
        </header>
        <!-- Section-->
        <section class="py-5">
            <div class="container px-4 px-lg-5 mt-5">
                <div class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center">
                    <div class="col mb-5">
                        <div class="card h-100">
                            <!-- Product image-->
                            <img class="card-img-top" src="assets/42-424102_german-shepherd-png-transparent-png.jpg" alt="..." />
                            <!-- Product details-->
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <!-- Product name-->
                                    <h5 class="fw-bolder">German Shepherd</h5>
                                    <!-- Product price-->
                                    $60.00 
                                </div>
                            </div>
                            <form action="http://localhost:8080/petshop/order" method="post">
           <input type='hidden' value='' name='orderId' id='orderId' /> 
           <input type='hidden' value='chatterjeeshrijeet2002@gmail.com' name='userEmail' id='userEmail' />
           <input type='hidden' value='kolkata' name='userAddress' id='userAddress' />
           <input type='hidden' value='60' name='totalAmount' id='totalAmount' />
           <input type='hidden' value='German Shepherd' name='productName' id='productName' />

          <button class="btn btn-warning" type='submit'  style="width: 100%;font-size: 1.3rem;font:bold" id='buy'>Buy Now</button>
        </form>

<!--                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="#">BUY NOW</a></div>
                            </div>-->
                        </div>
                    </div>
                    <div class="col mb-5">
                        <div class="card h-100">
                            <!-- Sale badge-->
                            <div class="badge bg-dark text-white position-absolute" style="top: 0.5rem; right: 0.5rem">Sale</div>
                            <!-- Product image-->
                            <img class="card-img-top" src="./assets/GreatDane850.jpg" alt="..." />
                            <!-- Product details-->
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <!-- Product name-->
                                    <h5 class="fw-bolder">Great Dane</h5>
                                    <!-- Product reviews-->
                                    <div class="d-flex justify-content-center small text-warning mb-2">
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                    </div>
                                    <!-- Product price-->
                                    <span class="text-muted text-decoration-line-through">$20.00</span>
                                    $18.00
                                </div>
                            </div>
                            <!-- Product actions-->
                           <form action="http://localhost:8080/petshop/order" method="post">
           <input type='hidden' value='' name='orderId' id='orderId' /> 
           <input type='hidden' value='chatterjeeshrijeet2002@gmail.com' name='userEmail' id='userEmail' />
           <input type='hidden' value='kolkata' name='userAddress' id='userAddress' />
           <input type='hidden' value='18' name='totalAmount' id='totalAmount' />
           <input type='hidden' value='Great Dane' name='productName' id='productName' />

          <button class="btn btn-warning" type='submit'  style="width: 100%;font-size: 1.3rem;font:bold" id='buy'>Buy Now</button>
        </form>

                        </div>
                    </div>
                    <div class="col mb-5">
                        <div class="card h-100">
                            <!-- Sale badge-->
                            <div class="badge bg-dark text-white position-absolute" style="top: 0.5rem; right: 0.5rem">Sale</div>
                            <!-- Product image-->
                            <img class="card-img-top" src="./assets/istockphoto-1338954116-612x612.jpg" alt="..." />
                            <!-- Product details-->
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <!-- Product name-->
                                    <h5 class="fw-bolder">Siberian Husky</h5>
                                    <!-- Product price-->
                                    <span class="text-muted text-decoration-line-through">$50.00</span>
                                    $25.00
                                </div>
                            </div>
                            <!-- Product actions-->
                            <form action="http://localhost:8080/petshop/order" method="post">
           <input type='hidden' value='' name='orderId' id='orderId' /> 
           <input type='hidden' value='chatterjeeshrijeet2002@gmail.com' name='userEmail' id='userEmail' />
           <input type='hidden' value='kolkata' name='userAddress' id='userAddress' />
           <input type='hidden' value='25' name='totalAmount' id='totalAmount' />
           <input type='hidden' value='Siberian Husky' name='productName' id='productName' />

          <button class="btn btn-warning" type='submit'  style="width: 100%;font-size: 1.3rem;font:bold" id='buy'>Buy Now</button>
        </form>                        </div>
                    </div>
                    <div class="col mb-5">
                        <div class="card h-100">
                            <!-- Product image-->
                            <img class="card-img-top" src="./assets/s0b190-breeds.jpeg" height="180" />
                            <!-- Product details-->
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <!-- Product name-->
                                    <h5 class="fw-bolder">Labrador</h5>
                                    <!-- Product reviews-->
                                    <div class="d-flex justify-content-center small text-warning mb-2">
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                    </div>
                                    <!-- Product price-->
                                    $40.00
                                </div>
                            </div>
                            <form action="http://localhost:8080/petshop/order" method="post">
           <input type='hidden' value='' name='orderId' id='orderId' /> 
           <input type='hidden' value='chatterjeeshrijeet2002@gmail.com' name='userEmail' id='userEmail' />
           <input type='hidden' value='kolkata' name='userAddress' id='userAddress' />
           <input type='hidden' value='40' name='totalAmount' id='totalAmount' />
           <input type='hidden' value='Labrador' name='productName' id='productName' />

          <button class="btn btn-warning" type='submit'  style="width: 100%;font-size: 1.3rem;font:bold" id='buy'>Buy Now</button>
        </form>                           </div>
                    </div>

        </section>
        <!-- Footer-->
        <jsp:include page="footer.jsp" />
<!--        <footer class="py-5 bg-dark">
            <div class="container"><p class="m-0 text-center text-white">Copyright &copy; PetXpore 2023</p></div>
        </footer>-->
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="js/scripts.js"></script>
    </body>
</html>

