<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
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
  
 /*td,th {
  padding: 25px;
  border: 1px solid black;
    }*/
</style>
  
 <!--   <script>
           var product = [
                { "pid": "P001", "name": "Samsung", "price": "30,000", "path": "Samsung", "link": "View More" },
                { "pid": "P002", "name": "Oppo", "price": "25,000", "path": "Oppo", "link": "View More" },
                { "pid": "P003", "name": "HTC", "price": "20,000", "path": "htc", "link": "View More" },
                { "pid": "P004", "name": "Apple", "price": "60,000", "path": "backgroundImage", "link": "View More"},
                { "pid": "P005", "name": "Nokia", "price": "15,000", "path": "Samsung", "link": "View More" }
                
            ];
          
            $(document).ready(function()
            {
                var table = $('<table/>').appendTo($('#somediv'));
                $(product).each(function(i, product) 
                {
                    $('<tr/>').appendTo(table)
                        .append($('<td/>').text(product.pid))
                        .append($('<td/>').text(product.name))
                        .append($('<td/>').text(product.price))
                        .append($('<td/>').text(product.path))
                        .append($('<td/>').text(product.link));
                });
            });
 </script> -->
 
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
	
<!--  <div class="container" align="center"> -->

<!--  <div id="somediv">
<table>
		<tr>
		<th><strong>Product Id</strong></th>
		<th><strong>Name</strong></th>
		<th><strong>Price</strong></th>
		<th><strong>Image</strong></th>
		<th><strong>More Features</strong></th>
		</tr>
		
		<c:forEach items="${product}" var="product">
		<tr>
        <td>${product.pid}</td>
        <td>${product.name}</td>
        <td>${product.price}</td>      
        <td><img src="./resources/images/${product.path}.jpg" class="img-thumbnail" alt="image" style="width:100%"/></td>
        <td><a href="#">${product.link}</a></td>
        </tr> 
   </c:forEach>
</table>
</div> -->

<div class="container" ng-app="sortApp" ng-controller="mainController">
  
  <div class="alert alert-info">
    <p>Sort Type: {{ sortType }}</p>
    <p>Sort Reverse: {{ sortReverse }}</p>
    <p>Search Query: {{ searchProduct }}</p>
  </div>
  
  <table class="table table-bordered table-striped">
    
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
      <tr ng-repeat="roll of product">
        <td>{{ roll.pid }}</td>     
        <td>{{ roll.name }}</td>
        <td>{{ roll.price}}</td>
        <td>{{ roll.path}}</td>
        <td>{{ roll.link}}</td>
      </tr>
    </tbody>
    
  </table>
  
</div>
</div>


 <%@ include file="/WEB-INF/views/template/footer.jsp" %>

</body>
</html>