<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>My Mobile Store</title>
  
   <!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"> -->
  <!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script> -->
 <!--  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> -->
  
  <link href="<c:url value="/resources/css/bootstrap.min.css" />" rel="stylesheet">
    
  <link href="<c:url value="/resources/css/main.css" />" rel="stylesheet"> 
  
   <link href="<c:url value="/resources/css/about.css" />" rel="stylesheet">
   
   <link href="<c:url value="/resources/css/contact.css" />" rel="stylesheet"> 
    
   <link href="<c:url value="/resources/css/login.css" />" rel="stylesheet">
   
   <link href="<c:url value="/resources/images/icon2.ico" />" rel="icon">
   
  
  <link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap-glyphicons.css" rel="stylesheet">
  
  <!--   <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootswatch/3.2.0/sandstone/bootstrap.min.css"> -->
     <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css"> 
     <link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap-glyphicons.css" rel="stylesheet">
    
    <!-- <script src="./resources/js/app.js"></script>  -->
   
   <!-- Angular Js -->
     <%-- <script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.0.1/angular.min.js"></script> 
     
     <script src="<c:url value="/resources/js/controller.js"></c:url>"></script> --%>
     
    <!-- JQuery -->
     <!-- <script src="https://code.jquery.com/jquery-2.2.1.min.js"></script> -->
      <script src="<c:url value="/resources/js/jquery-3.1.1.min.js" />"></script>
    <script src="https://cdn.datatables.net/1.10.10/js/jquery.dataTables.min.js"></script>

    <link href="https://cdn.datatables.net/1.10.10/css/jquery.dataTables.min.css" rel="stylesheet">
  
<style>
  .jumbotron 
 {
  position: relative;
  background: url('./resources/images/bg5.jpg') no-repeat center;
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
    <nav class="navbar navbar-inverse navbar-custom1 navbar-fixed-top">
     <div class="container-fluid">
       <div class="navbar-header">
         <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#myNavbar" aria-expanded="false">
         <span class="sr-only">Toggle navigation</span>
         <span class="icon-bar"></span>
         <span class="icon-bar"></span>
         <span class="icon-bar"></span>
         </button>
         <a class="navbar-brand" href="<c:url value="/" />">
         <span class="glyphicon glyphicon-phone"></span> TheMobileStore</a>
       </div>
 
      <div class="collapse navbar-collapse" id="myNavbar"> 
        <ul class="nav navbar-nav">
         <li class="active"><a href="<c:url value="/" />">
         <span class="glyphicon glyphicon-home"></span> Home</a></li>     
          <!--  <li><a href="Product">Products</a></li>  -->
          <c:if test="${pageContext.request.userPrincipal.name !='admin'}">
         <li><a href="<c:url value="/getAllProducts" />">Products</a></li>
         </c:if>
         
         <c:if test="${pageContext.request.userPrincipal.name =='admin'}">
         <li><a href="<c:url value="/addCategory" />">Category</a></li>
         <li><a href="<c:url value="/addSupplier" />">Supplier</a></li>
        </c:if> 
         
         <%-- <li><a href="<c:url value="/cart/getCartId"></c:url>">Cart</a></li> --%>
         
         <li><a href="<c:url value="/AboutUs" />">About Us</a></li>
        </ul>
        <ul class="nav navbar-nav navbar-right">
         
         <c:if test="${pageContext.request.userPrincipal.name != null}">
         <li><a>Welcome: ${pageContext.request.userPrincipal.name}</a></li>
         <li><a href="<c:url value="/j_spring_security_logout"/>">
         <span class="glyphicon glyphicon-log-out"></span> Logout</a></li>
         
         <c:if test="${pageContext.request.userPrincipal.name == 'admin'}"> 
         <li><a href="<c:url value="/admin"/>">Admin</a></li> 
         </c:if> 
         
         <c:if test="${pageContext.request.userPrincipal.name != 'admin'}">
          <li><a href="<c:url value="/cart/getCartId" />"> <!--  Cart</a></li> -->
          <span class="glyphicon glyphicon-shopping-cart"></span> Your Cart</a></li>
         </c:if>
         
         </c:if>
         <c:if test="${pageContext.request.userPrincipal.name == null}">
         <li><a href="<c:url value="/login" />"><span class="glyphicon glyphicon-log-in"></span> Login</a></li> 
         <li><a href="<c:url value="/SignUp" />"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
         </c:if>
       </ul>  
     </div>
  </div>
  </nav>
</div>