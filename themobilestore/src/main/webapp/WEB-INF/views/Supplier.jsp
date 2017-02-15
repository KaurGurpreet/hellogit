<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<title>Add Supplier</title>
    
<div class="jumbotron text-center">
  <h2><strong><u>Add Supplier</u></strong></h2>
  <br>
<div class="container">
<c:url value="/supplier/add" var="url"></c:url>
<form:form action="${url }"  commandName="suppliercommand">

<table class="table table-bordered table-striped" id="table">
				<tr>
					<th width="80">ID</th>
					<th width="120">Name</th>
					<th width="80">Address</th>
					<th width="80">Contact No.</th>
					<th width="80">Email</th>
					<th width="80">Brand</th>
					<th width="80">Product</th>
					<!-- <th width="80">Edit</th>
					<th width="80">Delete</th>  -->
				</tr>
				<tbody>
					<c:forEach var="sup" items="${supplier}">
						<tr>
							<td>${sup.sid}</td>
							<td>${sup.supname}</td>
							<td>${sup.supaddress}</td>
							<td>${sup.supnumber}</td>
							<td>${sup.supemail}</td>
							<td>${sup.brand}</td>
							<td>${sup.supproduct}</td>
						<!-- <td><a href="<c:url value="/admin/supplier/edit/${sup.sid}" />"><span class="glyphicon glyphicon-pencil">Edit</span></a></td>
							<td><a href="<c:url value="/admin/supplier/remove/${sup.sid}" />"><span class="glyphicon glyphicon-trash">Delete</span></a></td>  -->
						</tr>
					</c:forEach>
				</tbody>
			</table>
</form:form>
</div>
</div>

<%@ include file="/WEB-INF/views/template/footer.jsp" %> 
</html>