<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ include file="/WEB-INF/views/template/header.jsp"%>
<html>

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

  .table th, .table td {

	text-align: center;
}

td {
	background-color: whitesmoke
} 
 
/*th {
	cursor: pointer;
	text-align: center;
	font-size: 20px;
	background-color: #EFBBCC /* #92A1CF; */
}*/
</style>

<script>

    $(document).ready(function(){
        var searchCondition = '${searchCondition}';

        $('.table').DataTable({
            "lengthMenu": [[3,5,7, -1], [3,5,7, "All"]],
            "oSearch" : {"sSearch": searchCondition}
        });
    });
</script>


<div class="jumbotron text-center">
	
	<div ng-app="app" ng-controller="ProductController">
		<div ng-init="getCart(${cartId})">
			<div class="container">
            <br><br>
				<h2>
		           <u>Your Cart Items</u>
	            </h2>
	            <br><br>
	            <a href="#" ng-click="clearCart()"
								class="btn btn-danger pull-left"> 
								<span class="glyphicon glyphicon-remove-sign"></span> Clear Cart</a>
								
				<a href="<c:url value="/getAllProducts" />"  class="btn btn-warning active" role="button" >
				<span class="glyphicon glyphicon-backward"></span> Continue Shopping</a> 
								
				<a href="<spring:url value="/order/${cartId }"></spring:url>"
				   class="btn btn-success pull-right"><span class="glyphicon glyphicon-shopping-cart"></span> Check Out</a>
	            
				<br><br><br>
             <form>
				<div class="table-responsive">
					<!-- <table class="table table-bordered"> -->
					 <table class="table table-striped table-hover"> 
						<thead>
							<tr class="bg-success">
								<th>Name</th>
								<th>Quantity</th>						
								<th>Total Price</th>
								<th>Remove</th>

							</tr>
						</thead>
                      
						<tr ng-repeat="cartItem in cart.cartItems">
							<td>{{cartItem.product.name}}</td>
							<td>{{cartItem.quantity}}</td>
							<!-- <td>
								<input type="number" class="form-control text-center" value="1">
							</td> -->
							<!-- <td><select><option>{{cartItem.quantity}}</option></select></td> -->
							<td>{{cartItem.totalPrice}}</td>
							<td><a href="#" ng-click="removeFromCart(cartItem.id)"> 
							<!-- <span class="glyphicon glyphicon-remove"></span> -->
						    <!-- <span class="badge"> 
							<span class="glyphicon glyphicon-remove"></span></span> -->
						    <span class="label label-danger"><span class="glyphicon glyphicon-remove"></span></span>
							</a></td>
						</tr>
						
					     <tr class="bg-success">
						 <th></th>
						 <th></th>
						 <th>Grand Total</th>
						 <th>{{calculateGrandTotal()}}</th>
						 </tr> 

					</table>
					
				</div>
				</form>
				<br/><br/>
				<%-- <a href="<c:url value="/getAllProducts" />"  class="btn btn-info btn-lg pull-left">Continue Shopping</a> --%>
				 <!-- <strong>Grand Total : Rs. {{calculateGrandTotal()}}</strong>  -->
			</div> 
			<br><br> <br><br>
			<br><br> <br><br>
			<br><br> <br><br>
		</div>
	</div>
</div>
<script src="<c:url value="/resources/js/angular.js" />"></script>
<script src="<c:url value="/resources/js/controller.js"></c:url>"></script>
<%@ include file="template/footer.jsp"%>
</html>