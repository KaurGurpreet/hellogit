<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>My Project</title>
  
   <!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"> -->
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  
  <link href="<c:url value="./resources/css/bootstrap.min.css" />" rel="stylesheet">
  
  <link href="<c:url value="./resources/css/index.css" />" rel="stylesheet">
  
  <link href="<c:url value="./resources/css/main.css" />" rel="stylesheet"> 
  
   <link href="<c:url value="./resources/css/about.css" />" rel="stylesheet">
   
   <link href="<c:url value="./resources/css/contact.css" />" rel="stylesheet"> 
    
   <link href="<c:url value="./resources/css/login.css" />" rel="stylesheet">
   
   <link href="<c:url value="./resources/css/products.css" />" rel="stylesheet">
  
  <link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap-glyphicons.css" rel="stylesheet">
  
  <!--   <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootswatch/3.2.0/sandstone/bootstrap.min.css"> -->
     <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css"> 
     <link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap-glyphicons.css" rel="stylesheet">
    <!-- JS -->
    <script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.2.23/angular.min.js"></script>
    <script src="./resources/js/app.js"></script> 
  
<style type="text/css">
  .jumbotron 
 {
  position: relative;
  background: url('./resources/images/background.jpeg') no-repeat center;
  color: black;
  width: 100%;
  height: 100%;
  background-size: cover;
  overflow: hidden;
  margin-top: 0;
  margin-bottom: 0;
 }
  </style>

 <div class="navbar-wrapper"> 
   <!--  <div class="container"> --> 
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
         <li class="active"><a href="<c:url value="home" />">Home</a></li>     
          <!--  <li><a href="Product">Products</a></li>  -->
         <li><a href="<c:url value="Products" />">Products</a></li>
         <li><a href="<c:url value="AboutUs" />">About Us</a></li>
        </ul>
        <ul class="nav navbar-nav navbar-right">
         <li><a href="<c:url value="SignUp" />"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
         <li><a href="<c:url value="login" />"><span class="glyphicon glyphicon-log-in"></span> Login</a></li> 
          <!--  <li><a href="#" data-toggle="modal" data-target="#login-modal">Login</a></li>-->
       </ul>  
     </div>
  </div>
  </nav>
</div>