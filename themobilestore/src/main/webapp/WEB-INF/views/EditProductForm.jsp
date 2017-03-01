<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@ page isELIgnored="false" %>
    <%@ include file="template/header.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Edit Product Form</title>

<style>
footer
{
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
		<div class="col-xs-6 col-sm-6 col-md-6 col-sm-offset-4 col-md-offset-3 well">
			<div class="container">
				<c:url value="editProduct" var="url"></c:url>
				<form:form action="${url }" commandName="product">
				
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
						<c:forEach var="c" items="${categories }">
							<form:radiobutton path="category.cid" value="${c.cid }" />${c.cname }
                        </c:forEach>
						<form:errors path="category" cssStyle="color:#ff0000"></form:errors>
					</div>

					<input type="submit" value="Edit Product" class="btn btn-primary">
				</form:form>

			</div>
		</div>
	</div>
</div>

<%@ include file="/WEB-INF/views/template/footer.jsp"%>
</html>