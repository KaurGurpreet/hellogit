<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%-- <%@ page isELIgnored="false"%> --%>
<%@ include file="template/header.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Edit Product Form</title>

<style>
.jumbotron {
	position: relative;
	background-image: url("./../resources/images/bg4.jpg") no-repeat center;
	color: black;
	width: 100%;
	height: 100%;
	background-size: cover;
	overflow: hidden;
	margin-top: 0;
	margin-bottom: 0;
} 

footer {
	background-color: #f2f2f2;
	padding: 15px;
	margin-top: 0;
	margin-bottom: 0;
}
</style>

<div class="jumbotron text-center">
<h3><u><strong>Product Detail</strong></u></h3>
<div class="container">
<br><br>

<div class="row">
                
                <div class="col-md-5">
                    <img src="<c:url value="./../resources/images/${product.pid }.jpg" />" alt="image" style="width:100%"/>
                </div>
               
                 <div class="col-md-5">
                    <p>Product Name: ${product.name}</p>
                    <p>Description: ${product.description}</p>
                    <p><strong>Category</strong>: ${product.category.cname}</p>
                    <p><strong>Price</strong>: Rs. ${product.price}</p>
                    
		    </div>
</div>
<br><br>
<div class="container">
<a href="#"  class="btn btn-warning btn-lg active">
          <span class="glyphicon glyphicon-shopping-cart"></span>Add to Cart</a>
        <a href="#"  class="btn btn-success btn-lg active">Continue Shopping</a>
</div>
</div>

</div>
<br>
<br>
<br>
<%@ include file="template/footer.jsp"%>
</html>
