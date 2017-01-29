<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>All Products</title>
 
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  
  <link href="./resources/css/bootstrap.min.css" rel="stylesheet">
  
  <link href="./resources/css/carousel.css" rel="stylesheet">
  
  <link href="./resources/css/main.css"  rel="stylesheet">
  
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
  
  footer 
  {
      background-color: #f2f2f2;
      padding:15px;
      margin-top: 0;
      margin-bottom: 0;
  }
  
 td {
  
    padding: 30px;
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

<script>
            var product = [
                { "pid": "P001", "name": "Samsung", "price": "30,000" },
                { "pid": "P002", "name": "Oppo", "price": "25,000" },
                { "pid": "P003", "name": "HTC", "price": "20,000" },
                { "pid": "P004", "name": "Apple", "price": "60,000" },
                { "pid": "P005", "name": "Nokia", "price": "15,000" }
                
            ];
            $(document).ready(function() {
                var table = $('<table/>').appendTo($('#somediv'));
                $(product).each(function(i, product) {
                    $('<tr/>').appendTo(table)
                        .append($('<td/>').text(product.pid))
                        .append($('<td/>').text(product.name))
                        .append($('<td/>').text(product.price));
                });
            });
 </script>
<div class="jumbotron text-center">
  <h2>Our Product List</h2> 
<!-- <div class="jumbotron"> -->
<div class="container">
<div id="somediv">	
<table>
 <c:forEach items="${product}" var="product">
    <tr>
        <td>${product.pid}</td>
        <td>${product.name}</td>
        <td>${product.price}</td>
    </tr>
 </c:forEach>
</table>
</div>
</div>
</div>
 
 <%@ include file="/WEB-INF/views/template/footer.jsp" %>
 
</body>
</html>