<%-- 
    Document   : faq
    Created on : May 18, 2023, 1:42:13 PM
    Author     : shrijeet
--%>

<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>FAQ</title>

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.1.3/css/bootstrap.min.css">

    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

    <style type="text/css">
      body{
        background: #eee;
        padding-top: 20px;
        font-family: monospace;
      }
      .header{
        border-radius: 20px 20px 0px 0px;
        padding: 10px 0px;
        background: purple;
        color: #fff;
        width: 100%;
        display: flex;
        align-content: center;
        justify-content: center;
      }
      .faq-item{
        margin-bottom: 40px;
        margin-top: 40px;
      }
      .faq-body{
        display: none;
        margin-top: 30px;
      }
      .faq-wrapper{
        width: 75%;
        margin: 0 auto;
      }
      .faq-inner{
        padding: 30px;
        background: aliceblue;
      }
      .faq-plus{
        float: right;
        font-size: 1.4em;
        line-height: 1em;
        cursor: pointer;
      }
      hr{
        background-color: #9b9b9b;
      }
    </style>
  </head>

  <body>
      <jsp:include page="/style/navbar.jsp" />
    <div class="container">
      <div class="row">
        <div class="faq-wrapper">
          <div class="header">
            <h1>FAQs</h1>
          </div>
          <div class="faq-inner">
            <div class="faq-item">
              <h3>
                HOW DO I PLACE AN ORDER?
                <span class="faq-plus">&plus;</span>
              </h3>
              <div class="faq-body">
                From our Homepage, select the items you are interested in. Select color or size if applicable, and click ADD TO CART. When you are finished shopping, select CHECKOUT. Once your order is complete and your payment information is received, your selections will be shipped to you the same business day if it is made prior to 4:00PM EST for ground and 6:00PM EST for air. You will be notified as to the expected shipping date and tracking number information.
              </div>
            </div>
            <hr>
            <div class="faq-item">
              <h3>
                WHAT IF I NEED TO RETURN AN ITEM?
                <span class="faq-plus">&plus;</span>
              </h3>
              <div class="faq-body">
                PetXplore Store wants you to be satisfied with your order. If you receive an item that is dead, does not meet your expectations, or is the wrong size, contact custsvc@pettravelstore.com. Please read our our return policy.
              </div>
            </div>
            <hr>
            <div class="faq-item">
              <h3>
                WHAT IF AN ITEM IS OUT OF STOCK?
                <span class="faq-plus">&plus;</span>
              </h3>
              <div class="faq-body">
                If an item is out of stock, we will notify you with an approximate shipping date. In almost all cases even if an item is out of stock we can ship within 5 business days.
              </div>
            </div>
            <hr>
            <div class="faq-item">
              <h3>
                DO I HAVE TO PAY FOR SHIPPING?
                <span class="faq-plus">&plus;</span>
              </h3>
              <div class="faq-body">
                A shipping charge is included to handle packing and shipping costs. The amount to be charged is shown when you go to CHECKOUT.
              </div>
            </div>
            <hr>
            <div class="faq-item">
              <h3>
                HOW CAN I CANCEL AN ORDER?
                <span class="faq-plus">&plus;</span>
              </h3>
              <div class="faq-body">
                Orders for items that have not shipped can be canceled by sending a notice to custsvc@petxplore.com. If the item is already in the mail, you will need to follow our return policy.
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
      <jsp:include page="footer.jsp" />
    <script type="text/javascript">
      $(".faq-plus").on('click',function(){
        $(this).parent().parent().find('.faq-body').slideToggle();
      });
    </script>
  </body>

</html>
