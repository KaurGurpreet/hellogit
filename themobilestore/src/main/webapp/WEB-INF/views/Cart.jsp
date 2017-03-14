<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ include file="/WEB-INF/views/template/header.jsp" %>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Cart</title>

<style>
.jumbotron {
	position: relative;
	background: url("./../resources/images/bg5.jpg") no-repeat center;
	color: black;
	width: 100%;
	height: 100%;
	background-size: cover;
	overflow: hidden;
	margin-top: 0;
	margin-bottom: 0;
} 

th
  {
   cursor:pointer;
   text-align:center;
   font-size: 20px;
   background-color: #EFBBCC
   /* #92A1CF; */
  }

</style>

</head>
<body>
<div class="jumbotron text-center">
<div ng-app="app" ng-controller="ProductController">
<div ng-init="getCart(${cartId})">
<table class="table table-striped">
<thead>
<tr>
   <th>Name</th>
   <th>Quantity</th>
   <th>Total Price</th>
   <th>Remove</th>
   
</tr>
</thead>

<tr ng-repeat="cartItem in cart.cartItems">
<td>{{cartItem.product.name}}</td>
<td>{{cartItem.quantity}}</td>
<td>{{cartItem.totalPrice}}</td>
<td><a href="" class="label label-danger active" pull-left ng-click="removeFromCart.(cartItem.id)">
<span class="glyphicon glyphicon-remove"></span>Remove</a></td>
</tr>

</table>

</div>
</div>
<br><br>
<br><br>
</div>
<script src="<c:url value="/resources/js/angular.js" />"></script> 
<script src="<c:url value="/resources/js/controller.js"></c:url>"></script>

<%@ include file="template/footer.jsp"%>
</body>
</html>