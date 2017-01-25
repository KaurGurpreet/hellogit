<%@ include file="/WEB-INF/views/template/header.jsp" %>

<!-- Carousel
================================================== -->
<div class="jumbotron">

<!--  <div class="container"> -->
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
      <li data-target="#myCarousel" data-slide-to="3"></li>
    </ol>
  
    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">
     <div class="item active">
      <img class="first-slide home-image" src="./resources/images/image final1.jpg" alt="First slide">
       <!-- <img src="image final1.jpg" alt="Product1"> -->
        <div class="container">
        <div class="carousel-caption">
          <h2 align="left">TheMobileStore</h2>
          <p align="left" id="htype1">One-Stop-Shop for all latest Smart Phones</p>
        </div>
       </div>
      </div>
     <div class="item">
      <img class="second-slide home-image" src="./resources/images/image final2.jpg" alt="Second slide">
       <!-- <img src="image final2.jpg" alt="Product2">  -->
       <div class="container">
        <div class="carousel-caption">
        <h2 align="right">TheMobileStore</h2>
        <p align="right" id="htype1">One-Stop-Shop for all latest Smart Phones</p>
        </div>
       </div>
      </div>
     <div class="item">
      <img class="third-slide home-image " src="./resources/images/image final 3.jpg" alt="Third slide">
        <!-- <img src="image final 3.jpg" alt="Product3">  -->
       <div class="container">
        <div class="carousel-caption">
        <h2 align="center" id ="#htype2">TheMobileStore</h2>
        <p align="center" id="htype1">One-Stop-Shop for all latest Smart Phones</p>
      </div>
     </div>
     </div>
    <div class="item">
      <img class="fourth-slide home-image " src="./resources/images/mobile store 1.jpg" alt="Forth slide">
        <!-- <img src="mobile store 1.jpg" alt="Product4">  -->
       <div class="container">
        <div class="carousel-caption">
        <h2 align="right">TheMobileStore</h2>
        <p align="right" id="htype1">One-Stop-Shop for all latest Smart Phones</p>
       </div>
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

<br>

<div class="container text-center">
 <h2><a href="#">See All Features</a></h2>
  <br>
   <div class="row">
      <div class="col-sm-4">
      <img class="img-circle" src="./resources/images/images (1).jpeg" alt="New Products Image" width="140" height="140"/>
      <!-- <img src="images (1).jpeg"  class="img-circle" width="304" height="236" alt="Image">  -->
      <p id="htype2"><a href="#">New Products</a></p>
      </div>
      <div class="col-sm-4"> 
      <img class="img-circle" src="./resources/images/o_mdgdfylhg-ng.jpg" alt="Used Products Image" width="140" height="140"/>
      <!-- <img src="images.jpeg" class="img-circle" width="304" height="236" alt="Image">  -->
      <p id="htype2"><a href="#">Used Products</a></p> 
      </div>
      <div class="col-sm-4">
      <img class="img-circle" src="./resources/images/mobile accessories 3.jpg" alt="Accessories Image" width="140" height="140"/>
      <!-- <img src="mobile store 2.jpg" class="img-circle" width="304" height="236" alt="Image"> -->
      <p id="htype2"><a href="#">Accessories</a></p> 
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
