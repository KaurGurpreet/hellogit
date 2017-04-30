<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%-- <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %> --%>
<%@ include file="template/header.jsp"%>
<html>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>View Product Form</title>

 <!-- <script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.0.1/angular.min.js"></script>  -->
     

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

</style>

<div class="jumbotron text-center">
<div ng-app="app">
<h2><u><strong>Product Details</strong></u></h2>
<div class="container">
<br><br>

            <div class="row">
                
                <div class="col-md-5">
                    <img src="<c:url value="./../resources/images/${product.pid }.jpg" />" alt="image" style="width:100%"/>
                </div>
               
               <div class="col-md-5">
               <p><strong>Product Name</strong> :  ${product.name}</p>
               <p><strong>Description</strong>  :  ${product.description}</p>
               <p><strong>Category</strong>     :  ${product.category.cname}</p>
               <p><strong>Price</strong>        :  Rs. ${product.price}</p>
               <p><strong>Quantity</strong>     :  ${product.quantity }</p>
                

               </div>
               
          </div>
<br><br>

                  <%--  <c:if test="${role='ROLE_ADMIN'}">
                        <c:set var="url" value="/admin/productform" />
                   </c:if> --%>
                   
                   <%-- <c:set var = "role" scope="page" value="${param.role}" />
                    <c:set var = "url" scope="page" value="/getAllProducts" />
                    <c:if test="${role='admin'}">
                        <c:set var="url" scope="page" value="/admin/productInventory" />
                    </c:if> --%>
                    
<c:if test="${pageContext.request.userPrincipal.name != null}">
<div class="container" ng-controller="ProductController">
        <c:if test="${pageContext.request.userPrincipal.name != 'admin'}">
        <c:url value="/addCartItem/${product.pid }" var="url"></c:url>
        <a href="#" ng-click="addToCart(${product.pid })"  class="btn btn-warning btn-lg">
        <span class="glyphicon glyphicon-shopping-cart"></span>Add to Cart</a>
        </c:if>          
               
        <%-- <c:if test="${pageContext.request.userPrincipal.name == 'admin'}"> --%>
         <a href="<c:url value="/getAllProducts" />"  class="btn btn-success btn-lg active">
         <span class="glyphicon glyphicon-backward"></span> View More Products</a>
         <%-- </c:if>  --%>
         
          <c:if test="${pageContext.request.userPrincipal.name != 'admin'}">
          <%-- <a href="<c:url value="/cart/getCartId" />" class="btn btn-danger btn-lg"> --%>
           <a href="<c:url value="/cart/getCartId" />" class="btn btn-primary btn-lg active"> 
          <span class="glyphicon glyphicon-hand-right"></span> View Cart</a> 
          </c:if>
  </div>  
</c:if>


<%-- <c:if test="${pageContext.request.userPrincipal.name != 'admin'}">
<div class="container" ng-controller="ProductController">
 <c:url value="/addCartItem/${product.pid }" var="url"></c:url>
<a href="#" ng-click="addToCart(${product.pid })"  class="btn btn-warning btn-lg">
          <span class="glyphicon glyphicon-shopping-cart"></span>Add to Cart</a>
          
          <a href="<c:url value="/getAllProducts" />"  class="btn btn-success btn-lg active">
          <span class="glyphicon glyphicon-backward"></span> Continue Shopping</a>
          
          <a href="<c:url value="/cart/getCartId" />" class="btn btn-danger btn-lg">
           <a href="<c:url value="/cart/getCartId" />" class="btn btn-primary btn-lg active"> 
          <span class="glyphicon glyphicon-hand-right"></span> View Cart</a>
</div>
 </c:if> --%>
 
</div>
<br>
</div>
<br/><br/>
</div>
<script src="<c:url value="/resources/js/angular.js" />"></script> 
<script src="<c:url value="/resources/js/controller.js"></c:url>"></script>

<%@ include file="template/footer.jsp"%>

</html>
