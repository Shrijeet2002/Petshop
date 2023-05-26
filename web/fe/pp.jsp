<%-- 
    Document   : pp
    Created on : May 18, 2023, 1:35:35 PM
    Author     : shrijeet
--%>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>PRODUCT STORE</title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
        <!-- Bootstrap icons-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="style1.css" rel="stylesheet" />
    </head>
    <body>
        <!-- Navigation-->
        <jsp:include page="/style/navbar.jsp" />
                <!-- Header-->
        <header class="bg-dark py-5" style="background-image: url('./assets/animals-gec8de8ccb_1920.jpg');background-repeat: no-repeat;">
            <div class="container px-4 px-lg-5 my-5">
                <div class="text-center text-white">
                    <h1 class="display-4 fw-bolder" style="font-family:verdana">Pet Products</h1>
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
                            <img class="card-img-top" src="./assets/dog food.jpg" height="230" />
                            <!-- Product details-->
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <!-- Product name-->
                                    <h5 class="fw-bolder">Dog Food</h5>
                                    <!-- Product price-->
                                    $40.00
                                </div>
                            </div>
                            <form action="http://localhost:8080/petshop/order" method="post">
           <input type='hidden' value='' name='orderId' id='orderId' /> 
           <input type='hidden' value='chatterjeeshrijeet2002@gmail.com' name='userEmail' id='userEmail' />
           <input type='hidden' value='kolkata' name='userAddress' id='userAddress' />
           <input type='hidden' value='40' name='totalAmount' id='totalAmount' />
           <input type='hidden' value='Dog Food' name='productName' id='productName' />

          <button class="btn btn-warning" type='submit'  style="width: 100%;font-size: 1.3rem;font:bold" id='buy'>Buy Now</button>
        </form>                                                                                                                          </div>
                    </div>
                    <div class="col mb-5">
                        <div class="card h-100">
                            <!-- Sale badge-->
                            <div class="badge bg-dark text-white position-absolute" style="top: 0.5rem; right: 0.5rem">Sale</div>
                            <!-- Product image-->
                            <img class="card-img-top" src="./assets/Dog Cage.jpg" height="230" />
                            <!-- Product details-->
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <!-- Product name-->
                                    <h5 class="fw-bolder">Dog Cage</h5>
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
                            <form action="http://localhost:8080/petshop/order" method="post">
           <input type='hidden' value='' name='orderId' id='orderId' /> 
           <input type='hidden' value='chatterjeeshrijeet2002@gmail.com' name='userEmail' id='userEmail' />
           <input type='hidden' value='kolkata' name='userAddress' id='userAddress' />
           <input type='hidden' value='18' name='totalAmount' id='totalAmount' />
           <input type='hidden' value='Dog Cage' name='productName' id='productName' />

          <button class="btn btn-warning" type='submit'  style="width: 100%;font-size: 1.3rem;font:bold" id='buy'>Buy Now</button>
        </form>                                                                                                                          </div>
                    </div>
                    <div class="col mb-5">
                        <div class="card h-100">
                            <!-- Sale badge-->
                            <div class="badge bg-dark text-white position-absolute" style="top: 0.5rem; right: 0.5rem">Sale</div>
                            <!-- Product image-->
                            <img class="card-img-top" src="./assets/Dog bone.jpg" height="230" />
                            <!-- Product details-->
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <!-- Product name-->
                                    <h5 class="fw-bolder">Dog Bone</h5>
                                    <!-- Product price-->
                                    <span class="text-muted text-decoration-line-through">$50.00</span>
                                    $25.00
                                </div>
                            </div>
                            <form action="http://localhost:8080/petshop/order" method="post">
           <input type='hidden' value='' name='orderId' id='orderId' /> 
           <input type='hidden' value='chatterjeeshrijeet2002@gmail.com' name='userEmail' id='userEmail' />
           <input type='hidden' value='kolkata' name='userAddress' id='userAddress' />
           <input type='hidden' value='25' name='totalAmount' id='totalAmount' />
           <input type='hidden' value='Dog Bone' name='productName' id='productName' />

          <button class="btn btn-warning" type='submit'  style="width: 100%;font-size: 1.3rem;font:bold" id='buy'>Buy Now</button>
        </form>                                                                                                                          </div>
                    </div>
                    <div class="col mb-5">
                        <div class="card h-100">
                            <!-- Product image-->
                            <img class="card-img-top" src="./assets/rabbit food.jpg" height="230" />
                            <!-- Product details-->
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <!-- Product name-->
                                    <h5 class="fw-bolder">Rabbit Food</h5>
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
           <input type='hidden' value='Rabbit Food' name='productName' id='productName' />

          <button class="btn btn-warning" type='submit'  style="width: 100%;font-size: 1.3rem;font:bold" id='buy'>Buy Now</button>
        </form>                                                                                                  
                        </div>
                    </div>
                    <div class="col mb-5">
                        <div class="card h-100">
                            <!-- Sale badge-->
                            <div class="badge bg-dark text-white position-absolute" style="top: 0.5rem; right: 0.5rem">Sale</div>
                            <!-- Product image-->
                            <img class="card-img-top" src="./assets/Rabbit cage.jpg" height="230" />
                            <!-- Product details-->
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <!-- Product name-->
                                    <h5 class="fw-bolder">Rabbit Cage</h5>
                                    <!-- Product price-->
                                    <span class="text-muted text-decoration-line-through">$50.00</span>
                                    $25.00
                                </div>
                            </div>
                           <form action="http://localhost:8080/petshop/order" method="post">
           <input type='hidden' value='' name='orderId' id='orderId' /> 
           <input type='hidden' value='chatterjeeshrijeet2002@gmail.com' name='userEmail' id='userEmail' />
           <input type='hidden' value='kolkata' name='userAddress' id='userAddress' />
           <input type='hidden' value='25' name='totalAmount' id='totalAmount' />
           <input type='hidden' value='Rabbit cage' name='productName' id='productName' />

          <button class="btn btn-warning" type='submit'  style="width: 100%;font-size: 1.3rem;font:bold" id='buy'>Buy Now</button>
        </form>                                                                                                  
                        </div>
                    </div>

        </section>
        <!-- Footer-->
        <jsp:include page="footer.jsp" />
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="js/scripts.js"></script>
    </body>
</html>
