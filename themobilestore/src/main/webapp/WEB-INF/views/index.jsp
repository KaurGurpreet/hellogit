<%@ include file="/WEB-INF/views/template/header.jsp" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<link href="<c:url value="/resources/css/index.css" />" rel="stylesheet">


  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>
  
    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">
     <div class="item active" id="slide1">
       <img class="first-slide home-image" src="./resources/images/mstore1.jpg" alt="First slide">  
    <!--    <img src="./resources/images/mobile store3.jpg" alt="Product1"> -->
        <div class="container-fluid">
        <div class="carousel-caption">
         <!--  <h2 align="right">TheMobileStore</h2>
          <p align="right" id="htype1">One-Stop-Shop for all latest Smart Phones</p> -->
        </div>
       </div>
      </div>
     <div class="item" id="slide2">
      <!-- <img class="second-slide home-image" src="./resources/images/Mobile 4.jpg" alt="Second slide"> -->
      <img class="second-slide home-image" src="./resources/images/tmobile.jpg" alt="Second slide"> 
    <!--     <img src="./resources/images/image final.jpeg" alt="Product2">   -->
       <div class="container-fluid">
        <div class="carousel-caption">
        <!-- <h2 align="right">TheMobileStore</h2>
        <p align="right" id="htype1">One-Stop-Shop for all latest Smart Phones</p> -->
        </div>
       </div>
      </div>
     <div class="item" id="slide3">
        <img class="third-slide home-image " src="./resources/images/image2.jpg" alt="Third slide">
       <!--   <img src="./resources/images/mobile store 1.jpg" alt="Product3">  -->
       <div class="container-fluid">
        <div class="carousel-caption">
        <!-- <h2 align="right">TheMobileStore</h2> -->
        <!-- <p align="right" id="htype1">One-Stop-Shop for all latest Smart Phones</p> -->
      </div>
     </div>
     </div>
 
    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
    </a>
 </div>
 </div>

<div class="jumbotron">
<div class="container text-center">

<br>

 <h3><a href="<c:url value="/getAllProducts" />">See All Products</a></h3>
  <br>
   <div class="row">
      <div class="col-sm-4">
      <a class="btn btn-warning" href="<c:url value="/productList?searchCondition=New Product" />" role="button">
      <img class="img-circle" src="./resources/images/newP.jpg" alt="New Products Image" width="140" height="140"/></a>
      <!-- <img class="img-circle" src="./resources/images/new2.jpg" alt="New Products Image" width="140" height="140"/> -->
      <!-- <img src="images (1).jpeg"  class="img-circle" width="304" height="236" alt="Image">  -->
      <!-- <p id="htype2"><a href="#">New Products</a></p> -->
      <p id="htype2">New Products</p>
      </div>
      <div class="col-sm-4"> 
      <a class="btn btn-warning" href="<c:url value="/productList?searchCondition=Used Product" />" role="button">
      <img class="img-circle" src="./resources/images/used1.jpg" alt="Used Products Image" width="140" height="140"/></a>
      <!-- <img src="images.jpeg" class="img-circle" width="304" height="236" alt="Image">  -->
      <!-- <p id="htype2"><a href="#">Used Products</a></p>  -->
      <p id="htype2">Used Products</p>
      </div>
      <div class="col-sm-4">
      <a class="btn btn-warning" href="<c:url value="/productList?searchCondition=Accessory" />" role="button">
      <img class="img-circle" src="./resources/images/image final1.jpg" alt="Accessories Image" width="140" height="140"/></a>
      <!-- <img src="mobile store 2.jpg" class="img-circle" width="304" height="236" alt="Image"> -->
      <p id="htype2">Accessories</p> 
      </div>
  </div>
</div>
 </div>

<%@ include file="/WEB-INF/views/template/footer.jsp" %>

<!--  <footer>
    <div class="container text-center">  
    <p class="pull-right"><a href="#">Back to top</a></p>
    <center><p>&copy; All Rights Reserved &middot; <a href="/privacy">Privacy</a> &middot;  <a href="/Contact Us">Contact Us</a></p></center>
    </div>
</footer> -->

</body>
</html>
