<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>HOME</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
  </head>
  <body>
      <input type='hidden' id='email' value='<%= request.getAttribute("email") %>' />
             <jsp:include page="/style/navbar.jsp" />

      <div id="carouselExampleDark" class="carousel carousel-dark slide">
  <div class="carousel-indicators">
    <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
    <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="1" aria-label="Slide 2"></button>
    <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="2" aria-label="Slide 3"></button> 
    <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="3" aria-label="Slide 4"></button>

  </div>
  <div class="carousel-inner">
    <div class="carousel-item active" data-bs-interval="10000">
      <img src="https://images8.alphacoders.com/354/354019.jpg" class="d-block w-100" style="height:800px" alt="...">
      <div class="carousel-caption d-none d-md-block" style="color:white;font-size: 2rem">
        <h5 style="color:white;font-size: 2rem">CATS</h5>
        <p>The cat is a domestic species of small carnivorous mammal.</p>
      </div>
    </div>
      <div class="carousel-item">
      <img src="https://th.bing.com/th/id/R.ab741be55190cee282d40387ed984983?rik=DmX2HUP5m3nfwQ&riu=http%3a%2f%2f1.bp.blogspot.com%2f-baxdNptoq-Y%2fUPkM-ouNkoI%2fAAAAAAAAGq8%2fiV0pGTY1pxw%2fs1600%2ftired%2bdog%2bhd%2bwallpaper.jpg&ehk=SpVHQkGxIJeTSoIL8LpgfrN%2b3PWeAW%2fEPMfS8JiXsOw%3d&risl=&pid=ImgRaw&r=0" class="d-block w-100" style="height:800px" alt="...">
      <div class="carousel-caption d-none d-md-block" style="color:white" style="color:white;font-size: 2rem">
        <h5 style="color:white;font-size: 2rem">DOGS</h5>
        <p>The dog is a domesticated descendant of the wolf. </p>
      </div>
    </div>
    <div class="carousel-item">
      <img src="https://th.bing.com/th/id/R.1b2f27e1669b13f73204ccf759b12878?rik=%2fi%2bJWNaX%2btYxZQ&riu=http%3a%2f%2fwww.moviehdwallpapers.com%2fwp-content%2fuploads%2f2014%2f11%2fRabbit-iPad-Air-Wallpapers-HD-03.jpg&ehk=%2bINRMtrF5IpnJwac5m6%2fKGhMPr7ggh1zMxcWw1VPrU4%3d&risl=&pid=ImgRaw&r=0" class="d-block w-100" style="height:800px" alt="...">
      <div class="carousel-caption d-none d-md-block" style="color:white" style="color:white;font-size: 2rem">
        <h5 style="color:white;font-size: 2rem">RABBITS</h5>
        <p>Rabbits, also known as bunnies or bunny rabbits, are small mammals in the family Leporidae of the order Lagomorpha.</p>
      </div>
    </div>
    <div class="carousel-item">
      <img src="https://containerstoriesproduction.cdn.prismic.io/containerstoriesproduction/dd834179c2c721b8f78245dd3fc6f3ed74088ca8_bl_aug16_dogfoodcontainers_13.jpg" class="d-block w-100" style="height:800px" alt="...">
      <div class="carousel-caption d-none d-md-block" style="color:white;font-size: 2rem">
        <h5 style="color:white;font-size: 2rem">PET PRODUCTS</h5>
        <p>PetXplore is a one-stop shop for all pet owners, offering a comprehensive range of pet supplies for dogs, cats, rabbits, rodents, fishes, etc.</p>
      </div>
    </div>
  </div>
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleDark" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleDark" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
</div>

      <jsp:include page="petcategory.jsp" />
      <jsp:include page="footer.jsp" />
      <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@fortawesome/fontawesome-free@6.2.1/css/fontawesome.min.css" integrity="sha384-QYIZto+st3yW+o8+5OHfT6S482Zsvz2WfOzpFSXMF9zqeLcFV0/wlZpMtyFcZALm" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
  </body>
</html>