<linl rel="stylesheet" href="style/home.css" />
<jsp:include page="../style/navbar.jsp" /> 

<div class="container text-center">
  <div class="row">
    <div class="col">
        <img src="https://c.tenor.com/6ZkJEn80W7kAAAAC/green-tick.gif" style="width:400px;height:350px;border-radius: 100%;display: block;margin: 0 auto;" /> 
        <h1>Your Order has successfully been placed...</h1>
        <h1>Your Order Will Be Dispatched Shortly!!!</h1>
        <input type='hidden' value='<%= request.getAttribute("orderId")  %>' name='orderId' id='orderId' /> 
        <input type='hidden' value='<%= request.getAttribute("userEmail")  %>' name='userEmail' id='userEmail' />
        <input type='hidden' value='<%= request.getAttribute("userAddress")  %>' name='userAddress' id='userAddress' />
        <input type='hidden' value='<%= request.getAttribute("totalAmount")  %>' name='totalAmount' id='totalAmount' />
    </div>
  </div>
</div>
<jsp:include page="footer.jsp" />
