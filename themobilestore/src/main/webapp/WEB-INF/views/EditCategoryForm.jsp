<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ include file="template/header.jsp"%>
<%@ page isELIgnored="false" %>
<html>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Edit Category Form</title>

<style>
.jumbotron {
	position: relative;
	background: url("../resources/images/bg5.jpg") no-repeat center;
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
		<strong><u>Edit Category</u></strong>
	</h2>
	<br>
	<div class="row">
		<div
			class="col-xs-6 col-sm-4 col-md-6 col-sm-offset-4 col-md-offset-3 well">
			<div class="container"><br><br>
				<c:url value="/editCategory/${cid }" var="url"></c:url>
				<form:form action="${url }" commandName="categorycommand" method="post">

					<div class="form-group">
						<label for="cid">Category ID</label>
						<form:input path="cid" class="form-control" disabled="true" />
						<%-- <form:errors path="pid" cssStyle="color:#ff0000"></form:errors> --%>
					</div>


					<div class="form-group">
						<label for="cname">Category Name</label>
						<form:input path="cname" class="form-control" />
						<form:errors path="cname" cssStyle="color:#ff0000"></form:errors>
					</div>

					<div class="form-group">
						<label for="stock">Description</label>
						<form:input path="stock" class="form-control" />
						<form:errors path="stock" cssStyle="color:#ff0000"></form:errors>
					</div>
					
					<div class="form-group">
                    <label for="singlebutton"></label>
                      <button id="submit" name="submit" class="btn btn-primary">Edit Category</button>
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