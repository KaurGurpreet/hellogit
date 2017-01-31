<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Contact Us Form</title>
 
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  
  <link href="./resources/css/bootstrap.min.css" rel="stylesheet">
  
  <link href="./resources/css/carousel.css" rel="stylesheet">
  
  <link href="./resources/css/main.css"  rel="stylesheet">
  
  <link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap-glyphicons.css" rel="stylesheet">
  
<style type="text/css">

.navbar 
    {
      margin-top: 0;
      margin-bottom: 0;
      border-radius: 0;
    }
    
    h2
  {
   color:#00FFFF;
  }
    
  h3
  {
   color:#C9FFE5;
  }
  
  .jumbotron  
 {
    position: relative;
    /*background: #B2FFFF center;*/
    background: url('./resources/images/backgroundImage.jpg') no-repeat center;
    width: 100%;
    height: 100%;
    background-size:cover;
    overflow: hidden;
    margin-top: 0;
    margin-bottom: 0;   
 }
 
  footer 
  {
      background-color: #f2f2f2;
      padding:15px;
      margin-top: 0;
      margin-bottom: 0;
  }
.contact-form 
{
    margin-top:70px;
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
        <li><a href="home">Home</a></li>
       </ul>
     </div> 
   </div> 
</nav>  
       

<div class="jumbotron">

<div class="container"><center><h2><u>Contact Us</u></h2></center>

  <div class="row">
  <section class="content">
  <div class="col-sm-4">
    <h3><center>Our Offices</center></h3>
<hr>
<address><font color="#FFEBCD">
<strong><u>Delhi Address:</u></strong><br> Tower-B, Cyber City Complex, South-Extension,<br> New Delhi-110049 <br>
<strong>Phone:</strong> +91-981-101-5533<br>
<strong>Email:</strong> support.delhi@tms.com
</font>
</address>

<address><font color="#FFEBCD">
<strong><u>Gurgaon Address:</u></strong><br> Tower-A Infotech Hub, DLF, Phase-I, <br>Gurgaon-122001<br>
<strong>Phone:</strong> +91 991-757-2810 <br>
<strong>Email:</strong> support.gurgaon@tms.com
</font>
</address>

<address><font color="#FFEBCD">
<strong><u>Mubai Address:</u></strong><br> Business Center, Building 10, Worli <br>Mumbai-400018<br>
<strong>Phone:</strong> +91 888-757-2828 <br>
<strong>Email:</strong> support.mumbai@tms.com
</font>
</address>
</div>
<div class="col-sm-1"></div>
    
<div class="col-sm-7 contact-form well well-sm">
<h4><center>Write Your Message Here</center></h4>
<form id="contact" method="post" class="form" role="form">
<div class="row">
<div class="col-xs-6 col-md-6 form-group">

<input class="form-control" id="name" name="name" placeholder="Name" type="text" required autofocus />
</div>
<div class="col-xs-6 col-md-6 form-group">
<input class="form-control" id="email" name="email" placeholder="Email" type="email" required />
</div>
</div>
<textarea class="form-control" id="message" name="message" placeholder="Message" rows="5"></textarea>
<br />
<div class="row">
<div class="col-xs-12 col-md-12 form-group">
<button class="btn btn-primary pull-right" type="submit">Submit</button>
</form>
</div>
</section>
</div>
</div>
 
</div>

<%@ include file="/WEB-INF/views/template/footer.jsp" %>
</body>
</html>