<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>All Products</title>
 
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <!-- <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> -->
  
  <link href="./resources/css/bootstrap.min.css" rel="stylesheet">

     <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootswatch/3.2.0/sandstone/bootstrap.min.css">
     <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css"> 
    
    <!-- JS -->
    <script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.2.23/angular.min.js"></script>
    <script src="./resources/js/app.js">
    
    </script> 

<style>
.jumbotron 
{
  position: relative;
  background: url('./resources/images/backgroundImage.jpg') no-repeat center;
  color: #fff;
  width: 100%;
  height: 100%;
  background-size: cover;
  overflow: hidden;
  margin-top: 0;
  margin-bottom: 0;
}
  
.navbar 
 {
      margin-top: 0;
      margin-bottom: 0;
      border-radius: 0;
 }
  

  body
  { 
  padding-top:50px;
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
<body ng-app="myModule">

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

<div class="jumbotron text-center">
  <h2>Our Product List</h2> <br>

<div class="container" ng-controller="mainController">
  Search : <input type="text" placeholder="Search products" ng-model="searchText"/>
  <br><br>
 <!--   <div class="alert alert-info">
    <p>Sort Type: {{ sortType }}</p>
    <p>Sort Reverse: {{ sortReverse }}</p>
    <p>Search Query: {{ searchProduct }}</p>
  </div> -->
  
  <table class="table table-bordered">
    
    <thead>
      <tr>
        <td>
            Product ID 
        </td>
        <td>
          Name
        </td>
        <td>
          Price 
        </td>
        <td>
          Image 
        </td>
        <td>
          More Features 
        </td>
      </tr>
    </thead>
    
    <tbody>
      <tr ng-repeat="product in products">
        <td>{{ product.pid }}</td>     
        <td>{{ product.name }}</td>
        <td>{{ product.price}}</td>
        <td>{{ product.path}}</td>
        <td>{{ product.link}}</td>
      </tr>
    </tbody>
    
  </table>
  
</div>
</div>

 <%@ include file="/WEB-INF/views/template/footer.jsp" %> 
  
</body>
</html>