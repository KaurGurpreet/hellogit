<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="template/header.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Edit Product Form</title>

<%-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>

<link href="<c:url value="/css/bootstrap.min.css" />" rel="stylesheet">

<link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap-glyphicons.css" rel="stylesheet">

<script src="<c:url value="/js/bootstrap.min.js" />"></script>  --%>

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

footer {
	background-color: #f2f2f2;
	padding: 15px;
	margin-top: 0;
	margin-bottom: 0;
}
</style>

<div class="jumbotron text-center">
	<h2>
		<strong><u>Edit Product</u></strong>
	</h2>
	<br>
	<div class="row">
		<div
			class="col-xs-6 col-sm-4 col-md-6 col-sm-offset-4 col-md-offset-3 well">
			<div class="container"><br><br>
				<c:url value="/editProduct" var="url"></c:url>
				<form:form action="${url }" method="post" commandName="product" enctype="multipart/form-data" >

					<div class="form-group">
						<label for="pid">Product ID</label>
						<form:input path="pid" class="form-control" disabled="true" />
						<form:errors path="pid" cssStyle="color:#ff0000"></form:errors>
					</div>


					<div class="form-group">
						<label for="name">Product Name</label>
						<form:input path="name" class="form-control" />
						<form:errors path="name" cssStyle="color:#ff0000"></form:errors>
					</div>

					<div class="form-group">
						<label for="description">Description</label>
						<form:input path="description" class="form-control" />
						<form:errors path="description" cssStyle="color:#ff0000"></form:errors>
					</div>

					<div class="form-group">
						<label for="price">Price</label>
						<form:input path="price" class="form-control" />
						<form:errors path="price" cssStyle="color:#ff0000"></form:errors>
					</div>

					<div class="form-group">
						<label for="quantity">Quantity</label>
						<form:input path="quantity" class="form-control" />
						<form:errors path="quantity" cssStyle="color:#ff0000"></form:errors>
					</div>

					<div class="form-group">
						<label for="category">Category</label>
						<!-- List<Category> c =model.getAttribute("categories");
                                out.println(c.id)
                                out.println(c.categoryDetails);
                         -->
						<c:forEach var="c" items="${categoryList }">
							<form:radiobutton path="category.cid" value="${c.cid }" />${c.cname }
                        </c:forEach>
						<form:errors path="category" cssStyle="color:#ff0000"></form:errors>
					</div>

					<%-- <div class="form-group">
						<label for="supplier">Supplier</label>
						<c:forEach var="s" items="${supplierList }">
							<form:radiobutton path="supplier.sid" value="${s.sid }" />${s.supname}
						 </c:forEach>
						<form:errors path="supplier.sid" cssStyle="color:#ff0000"></form:errors>
					</div> --%>
					
					<%-- <div class="form-group">
						<label for="supplier.supname">Supplier</label> 
						 <form:select path="supplier.supname">
						    <form:option value="None">--Select Supplier--</form:option>
						     <form:options var="sup" items="${supplierList }" />  
						 </form:select>
					     <form:errors path="supplier.supname" cssStyle="color:#ff0000"></form:errors> 
					     </div> --%>

				    <div class="form-group">
						<label for="supplier">Supplier</label> 
						 <form:select path="supplier">
						    <form:option value="None">--Select Supplier--</form:option>
						     
						     <c:forEach var="sup" items="${supplierList }">
							 <form:options value="${sup.supname }" /> 
							 </c:forEach> 
						</form:select>
					<form:errors path="supplier" cssStyle="color:#ff0000"></form:errors> 
					</div> 
					
					 <div class="form-group">
						<label for="image">Image</label>
						<center>
							<form:input path="image" type="file" />
						</center>
					</div>

					<input type="submit" value="Edit Product" class="btn btn-primary">
				<br>
				<br>
			</form:form>
			</div>
		</div>
	</div>
</div>
<%@ include file="template/footer.jsp"%>
</html>