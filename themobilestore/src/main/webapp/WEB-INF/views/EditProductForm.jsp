<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ include file="template/header.jsp"%>
<%@ page isELIgnored="false" %>
<html>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Edit Product Form</title>

<style>
.jumbotron {
	position: relative;
	background: url("../../resources/images/bg5.jpg") no-repeat center;
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
	<h2>
		<strong><u>Edit Product</u></strong>
	</h2>
	<br>
	<div class="row">
		<div
			class="col-xs-6 col-sm-4 col-md-6 col-sm-offset-4 col-md-offset-3 well">
			<div class="container"><br><br>
				<c:url value="/admin/editProduct/${pid }" var="url"></c:url>
				<form:form action="${url }" commandName="product1" enctype="multipart/form-data" method="post">

					<div class="form-group">
						<label for="pid">Product ID</label>
						<form:input path="pid" class="form-control" disabled="true" />
						<%-- <form:errors path="pid" cssStyle="color:#ff0000"></form:errors> --%>
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
					
			 

					<div class="form-group">
						<label for="supplier">Supplier</label>
						<c:forEach var="s" items="${supplierList }">
							<form:radiobutton path="supplier.sid" value="${s.sid }" />${s.supname}
						 </c:forEach>
						<form:errors path="supplier.sid" cssStyle="color:#ff0000"></form:errors>
					</div>
								
					 <div class="form-group">
						<label for="image">Image</label>
						<center>
							<form:input path="image" type="file" />
						</center>
					</div>
					
					<div class="form-group">
                    <label for="singlebutton"></label>
                      <button id="submit" name="submit" class="btn btn-primary">Edit Product</button>
                   </div>
                     
					<!--  <input type="submit" value="Edit Product" class="btn btn-primary"> -->
				<br>
				<br>
			</form:form>
			</div>
		</div>
	</div>
</div>
<%@ include file="template/footer.jsp"%>
</html>