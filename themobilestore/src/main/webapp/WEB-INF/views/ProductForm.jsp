<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ include file="/WEB-INF/views/template/header.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>

<style>
footer {
	background-color: #f2f2f2;
	padding: 15px;
	margin-top: 0;
	margin-bottom: 0;
}
</style>

<div class="jumbotron text-center">
	<h2>
		<strong><u>Add Product Form</u></strong>
	</h2>
	<br>
	<div class="row">
		<div class="col-xs-6 col-sm-4 col-md-6 col-sm-offset-4 col-md-offset-3 well">
			<div class="container">
				<c:url value="addProduct" var="url"></c:url>
				<form:form action="${url }" commandName="product" enctype="multipart/form-data">
				
					<div class="form-group">
						<label for="pid"></label>
						<form:hidden path="pid" />
					</div>

					<div class="form-group">
						<label for="name">Product Name</label>
						<form:input path="name" class="form-control" />
						<form:errors path="name" cssStyle="color:#ff0000"></form:errors>
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
						<label for="description">Description</label>
						<form:input path="description" class="form-control" />
						<form:errors path="description" cssStyle="color:#ff0000"></form:errors>
					</div>

					<div class="form-group">
						<label for="category">Category</label>                        
						<c:forEach var="c" items="${categoryList }">
							<form:radiobutton path="category.cid" value="${c.cid }" />${c.cname }
                        </c:forEach>
						<form:errors path="category.cid" cssStyle="color:#ff0000"></form:errors>
					</div>
					
			<%-- <div class="form-group">
                <label class="control-label" for="category.cname">Category</label>
                <form:select path="category.cname">
                <form:option value="" label="--- Select ---" />
                <c:forEach items="${categoryList }" var="category">
                <form:option value="${category.cname}"></form:option>
                </c:forEach>        
                </form:select> 
                <form:errors path="category.cname" cssStyle="color:#ff0000"></form:errors>
             </div> --%>

					<div class="form-group">
						<label for="supplier">Supplier</label>
					   <c:forEach var="s" items="${supplierList}"> 
						 <form:radiobutton path="supplier.sid" value="${s.sid }"/>${s.supname}
						 </c:forEach> 
						<form:errors path="supplier.sid" cssStyle="color:#ff0000"></form:errors>
					</div> 
					<%--  <div class="form-group">
						<label for="supplier.supname">Supplier</label> 
						<form:select path="supplier.supname">
						    <form:option value="None">--Select Supplier--</form:option>
							<form:options items="${supplierList }" />
						</form:select> 
						<form:errors path="supplier.supname" cssStyle="color:#ff0000"></form:errors>
					</div> --%>
                    
                    <div class="form-group">
                   <label for="image">Image</label>
                  <center><form:input path="image" type="file"/></center>
                   </div>
                    
					<input type="submit" value="Add Product" class="btn btn-primary">
				</form:form>
				<br>
				<!-- <a href="getAllProducts" class="text-center new-account">View Product List</a>  -->
			</div>
		</div>
	</div>
</div>

<%@ include file="/WEB-INF/views/template/footer.jsp"%>
</html>