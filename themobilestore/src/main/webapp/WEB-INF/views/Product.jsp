<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<div class="jumbotron text-center">
  <h2><strong><u>Our Product List</u></strong></h2>
  <br>
    <div class="container" ng-app="myModule" ng-controller="mainController">
 
    <div class="table-responsive">
    <c:url value="Product" var="url"></c:url>
    
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
</div>

 <%@ include file="/WEB-INF/views/template/footer.jsp" %> 
  
</body>
</html>