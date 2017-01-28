<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>About Us</title>
 
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  
  <link href="./resources/css/bootstrap.min.css" rel="stylesheet">
  
  <link href="./resources/css/carousel.css" rel="stylesheet">
  
  <link href="./resources/css/main.css"  rel="stylesheet">
  
  <style>
  .jumbotron 
  {
      background: url('./resources/images/backgroundImage.jpg') no-repeat center;
      color: #fff;
      margin-top: 0;
      margin-bottom: 0;
  }
  .bg-color {
      background-color: #FFC1CC;
  }
  
  .navbar 
   {
      margin-top: 0;
      margin-bottom: 0;
      border-radius: 0;
    }
  
  footer 
  {
      background-color: #f2f2f2;
      padding:15px;
      margin-top: 0;
      margin-bottom: 0;
  }
  
  </style>
</head>
<body>

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="#">TheMobileStore</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li><a href="#">Home</a></li>
       </ul>
     </div> 
   </div> 
</nav>

<div class="jumbotron text-center">
  <h1>TheMobileStore</h1> 
  <p>We have a wide range of all latest Smartphones and Andriod phones alognwith trendy accessories.</p> 
  <form class="form-inline">
    <div class="input-group">
      <input type="email" class="form-control" size="50" placeholder="Email Address" required>
      <div class="input-group-btn">
        <button type="button" class="btn btn-danger">Subscribe</button>
      </div>
    </div>
  </form>
</div>

<!-- Container (About Section) -->
<div class="jumbotron">
  <div class="container">
  <h2><center>About Us</u></center><hr>
  <h3><strong>TheMobileStore</strong></h3>      
  <p align="justify"> It is truely One-Stop-Shop for all latest Smartphones, Andriod phone, Tablets, I-Pads of all the leading brands.
  We also have a wide range of original mobile accessories at reasonable prices. We have all the latest collection of trendy and stylish mobile covers and cases.
  Our collection of accessories also include Screen Protectors, Power Banks, Bluetooth headsets, Chargers, Mobile utility/antivirus software etc.
  </p> 
  </div>

  <div class="container">
  <h3><u>Our Values</u></h3>
  <h4><strong>MISSION:</strong> Our mission is Our Customers' Satisfaction and Appreciation</h4>      
  <h4><strong>VISION:</strong> Our vision hassel-free online shopping experience</h4>
  </div>
</div>

<%@ include file="/WEB-INF/views/template/footer.jsp" %>
</body>
</html>
