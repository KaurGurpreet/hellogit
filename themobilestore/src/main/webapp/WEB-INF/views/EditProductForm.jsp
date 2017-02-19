<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false" %>
<%@ include file="/WEB-INF/views/template/header.jsp" %>

<div class="container-wrapper">
<div class="container">
<c:url value="editProduct" var="url"></c:url>
<form:form action="${url }"  commandName="product">

<div class="form-group">
<label for="id"></label>
<form:hidden  path="id"/>
</div>

<div class="form-group">
<label for="name">Product Name</label>
<form:input path="name" class="form-control"/>
<form:errors path="name" cssStyle="color:#ff0000"></form:errors>
</div>

<div class="form-group">
<label for="description">Description</label>
<form:input path="description" class="form-control"/>
<form:errors path="description" cssStyle="color:#ff0000"></form:errors>
</div>

<div class="form-group">
<label for="price">Price</label>
<form:input path="price" class="form-control" />
<form:errors path="price" cssStyle="color:#ff0000"></form:errors>
</div>

<div class="form-group">
<label for="quantity">Quantity</label>
<form:input path="quantity" class="form-control"/>
<form:errors path="quantity" cssStyle="color:#ff0000"></form:errors>
</div>

<div class="form-group">
<label for="category">Category</label>
<!-- List<Category> c =model.getAttribute("categories");
out.println(c.id)
out.println(c.categoryDetails);
 -->
<c:forEach var="c" items="${category}">
<form:radiobutton path="category.id" value="${c.id}"/>${c.cname }
</c:forEach>
<form:errors path="category" cssStyle="color:#ff0000"></form:errors>
</div>

<input type="submit" value="Edit Product" class="btn btn-default">
</form:form>

</div>

</div>

<%@ include file="/WEB-INF/views/template/footer.jsp" %>

</html>