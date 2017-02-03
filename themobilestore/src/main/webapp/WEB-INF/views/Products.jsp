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

    <!--   <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootswatch/3.2.0/sandstone/bootstrap.min.css"> -->
     <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css"> 
     
     <link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap-glyphicons.css" rel="stylesheet">
    
    <!-- JS -->
    <script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.2.23/angular.min.js"></script>
    <script src="./resources/js/app.js">
    
    </script> 

<style>
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
  
.navbar 
 {
      margin-top: 0;
      margin-bottom: 0;
      border-radius: 0;
 }

input, select
  {
    color:black;
  }
  
  th
  {
   cursor:pointer;
   text-align:center;
   font-size: 20px;
  }
  
  tr
  {
  font-size: 15px;
  }
  
  /*a:link
  {
    color: #FFA700;
    background-color: transparent;
    text-decoration: none;
  }*/
  .arrow-up
  {
  width:0;
  height:0;
  border-left: 5px solid transparent;
  border-right: 5px solid transparent;
  border-bottom: 10px solid black;
  display: inline-block;
 }

.arrow-down
{
  width:0;
  height:0;
  border-left: 5px solid transparent;
  border-right: 5px solid transparent;
  border-top: 10px solid black;
  display: inline-block;
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
        <li><a href="home">Home</a></li>
       </ul>
     </div> 
   </div> 
</nav>

<div class="jumbotron text-center">
  <h2>Our Product List</h2> <br>

<div class="container" ng-app="myModule" ng-controller="mainController">
    Search : <input type="text" placeholder="Search products" ng-model="searchText.name"/> 
  <br><br>
  <!--  Sort By : <select ng-model="sortColumn">
              <option value="pid"> Product ID Asc</option>
              <option value="name"> Name Asc</option>
              <option value="price"> Price Asc</option>
             </select> <br> <br> -->
 
  
  <table class="table table-bordered">
    
    <thead>
      <tr>
        <th ng-click="sortData('pid')">
        Product ID <div ng-class="getSortClass('pid')"></div>
        </th>
        <th ng-click="sortData('name')">
        Name <div ng-class="getSortClass('name')"></div>
        </th>
        <th ng-click="sortData('price')">
        Price <div ng-class="getSortClass('price')"></div> 
        </th>
        <th ng-click="sortData('path')">
        Image <div ng-class="getSortClass('path')"></div>
        </th>
        <th>More Features</th>
      </tr>
    </thead>
    
    <tbody>
       <tr ng-repeat="product in products | orderBy:sortColumn:reverseSort | filter:searchText"> 
        <!--  <tr ng-repeat="product in products | orderBy:sortColumn"> -->
        <td>{{ product.pid }}</td>     
        <td>{{ product.name }}</td>
        <td>{{ product.price}}</td>
        <td><img src="./resources/images/{{ product.path}}.jpg" class="img-thumbnail" alt="image" width="80" height="80"/></td>
       <!--   <td><a href="#">{{ product.link}}</a></td> -->
       <td><a href="#">View More</a></td>
      </tr>
    </tbody>
    
  </table>
  
</div>
</div>

 <%@ include file="/WEB-INF/views/template/footer.jsp" %> 
  
</body>
</html>