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
		<strong><u>Edit Supplier</u></strong>
	</h2>
	<br>
	<div class="row">
		<div
			class="col-xs-6 col-sm-4 col-md-6 col-sm-offset-4 col-md-offset-3 well">
			<div class="container"><br><br>
				<c:url value="/editSupplier/${sid}" var="url"></c:url>
				<form:form action="${url }" commandName="suppliercommand" method="post">

					<div class="form-group">
						<label for="sid">Supplier ID</label>
						<form:input path="sid" class="form-control" disabled="true" />
					</div>


					<div class="form-group">
						<label for="supname">Name</label>
						<form:input path="supname" class="form-control" />
						<form:errors path="supname" cssStyle="color:#ff0000"></form:errors>
					</div>

					<div class="form-group">
						<label for="supaddress">Address</label>
						<form:input path="supaddress" class="form-control" />
						<form:errors path="supaddress" cssStyle="color:#ff0000"></form:errors>
					</div>
					
					<div class="form-group">
						<label for="supnumber">Contact No</label>
						<form:input path="supnumber" class="form-control" />
						<form:errors path="supnumber" cssStyle="color:#ff0000"></form:errors>
					</div>
					
					<div class="form-group">
						<label for="supemail">Email</label>
						<form:input path="supemail" class="form-control" />
						<form:errors path="supemail" cssStyle="color:#ff0000"></form:errors>
					</div>
					
					<div class="form-group">
						<label for="supproduct">Product</label>
						<form:input path="supproduct" class="form-control" />
						<form:errors path="supproduct" cssStyle="color:#ff0000"></form:errors>
					</div>
					
					<div class="form-group">
						<label for="brand">Brand</label>
						<form:input path="brand" class="form-control" />
						<form:errors path="brand" cssStyle="color:#ff0000"></form:errors>
					</div>
					
					<div class="form-group">
                    <label for="singlebutton"></label>
                      <button id="submit" name="submit" class="btn btn-primary">Edit Supplier</button>
                   </div>
                     
				<br>
				<br>
			</form:form>
			</div>
		</div>
	</div>
</div>
<%@ include file="template/footer.jsp"%>
</html>