<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>My Project</title>
  
<!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"> -->
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  
  <link href="./resources/css/bootstrap.min.css" rel="stylesheet">
  
  <link href="./resources/css/carousel.css" rel="stylesheet">
  
  <link href="./resources/css/main.css"  rel="stylesheet">
  
  <link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap-glyphicons.css" rel="stylesheet">
    
<style>
h2
  {
   color:#FF0038;font-family:Monotype Corsiva;
  }

 #htype1
  {
   color:#FF007F;font-family:Monotype Corsiva;font-size:25px;
  } 

#htype2
  {
   color:#FF033E;font-family:Monotype Corsiva;font-size:25px;
  } 

a:link {
    color: #FFA700;
    background-color: transparent;
    text-decoration: none;
}

a:visited
{
    color: #E52B50;
    background-color: transparent;
    text-decoration: none;
}

 /* Remove the navbar's default margin-bottom and rounded borders */ 
  .navbar 
   {
      margin-top: 0;
      margin-bottom: 0;
      border-radius: 0;
    }

.jumbotron 
{
  position: relative;
  background: url('./resources/images/backgroundImage.jpg') no-repeat center;
  width: 100%;
  height: 100%;
  background-size: cover;
  overflow: hidden;
  margin-top: 0;
  margin-bottom: 0;
}

  .carousel-inner > .item > img,
  .carousel-inner > .item > a > img
  {
      width: 100%;
      /* margin: auto;*/
      max-height:600px;
      min-height:200px; 
      margin-top: 0;
      margin-bottom: 0;
  }

/* Hide the carousel text when the screen is less than 600 pixels wide */
  @media (max-width: 600px)
    {
    .carousel-caption 
    {
      display: none; 
    }
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
<!--  <div class="navbar-wrapper"> -->
 <!--  <div class="container-fliuid"> -->
   <nav class="navbar navbar-inverse">
   <div class="container-fluid">
    <div class="navbar-header">
     <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#myNavbar" aria-expanded="false">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="#">TheMobileStore</a>
    </div>
 
  <div class="collapse navbar-collapse" id="myNavbar"> 
    <ul class="nav navbar-nav">
       <li class="active"><a href="#">Home</a></li>     
       <li class="dropdown">
        <a href="#" class="dropdown-toggle" data-toggle="dropdown">Products<span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="#">SAMSUNG</a></li>
          <li><a href="#">NOKIA</a></li>
          <li><a href="#">OPPO</a></li>
        </ul>
      </li>
     </ul>
     <ul class="nav navbar-nav navbar-right">
      <li><a href="SignUpForm.jsp"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
      <!-- <li><a href="#"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>  -->
      <li><a href="#" data-toggle="modal" data-target="#login-modal">Login</a></li>
    </ul>
   </div>
  </div>
  </nav>
 <!--  </div> -->
 <!--  </div> -->
 <%@ include file="/login.jsp" %>    

      
      
            
    