<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false" %>
<%@ include file="/WEB-INF/views/template/header.jsp" %>

<div class="container-wrapper">
<div class="container">
<c:url value="/admin/product/addProduct" var="url"></c:url>
<form:form action="${url }"  commandName="product">

<div class="form-group">
<label for="pid"></label>
<form:hidden  path=""/>
</div>

<div class="form-group">
<label for="name">Product Name</label>
<form:input path="name" class="form-control"/>
</div>

<div class="form-group">
<label for="price">Price</label>
<form:input path="price" class="form-control" />
</div>

<div class="form-group">
<label for="quantity">Quantity</label>
<form:input path="quantity" class="form-control"/>
</div>

<div class="form-group">
<label for="description">Description</label>
<form:input path="description" class="form-control"/>
</div>

<input type="submit" value="Add Product" class="btn btn-default">
</form:form>

</div>
</div>

<%@ include file="/WEB-INF/views/template/footer.jsp" %> 
</html>