<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<title>Add Supplier</title>

<%@ include file="/WEB-INF/views/template/header.jsp" %>

<style>

footer 
  {
      background-color: #f2f2f2;
      padding:15px;
      margin-top: 0;
      margin-bottom: 0;
  }
  
  .table td{
  background-color: #f1f1c1;
  }
  
  .table th, .table td
  {
  border: #800040 solid 1px !important;
  }
  
  th
  {
   cursor:pointer;
   text-align:center;
   font-size: 15px;
   background-color: #92A1CF;
  }
  
</style>
   
<div class="jumbotron text-center">
<div class="container" id="categoryTable" align="center">
  <h2><strong><u>Add Supplier</u></strong></h2>
<c:url value="/supplier/add" var="url"></c:url>
<form:form action="${url }"  commandName="suppliercommand">
     <div class="table-responsive">
     <table id="editsupplier">   
               <tr>
                 <td><label for="sid"></label></td>
                 <td><form:hidden  path="sid"/></td>
               </tr>
                <tr>
					<td>Supplier Name</td>
					<td><form:input path="supname" id="supname" required="true"/></td>
					<td><form:errors path="supname" cssClass="error">Name</form:errors></td>
				</tr>
				<tr>
					<td>Supplier Address</td>
					<td><form:input path="supaddress" required="true"/></td>
					<td><form:errors path="supaddress" cssClass="error"></form:errors></td>
				</tr>
				<tr>
					<td>Contact No.</td>
					<td><form:input type="tel" path="supnumber" title="id should contains 10 digit" required="true" placeholder=" "/></td>
					<td><form:errors path="supnumber">*</form:errors></td>
				</tr>
				<tr>
					<td>Email</td>
					<td><form:input path="supemail" type="email" required="true"/></td>
					<td><form:errors path="supemail" cssClass="error"></form:errors></td>
				</tr>
				<tr>
					<td>Product</td>
					<td><form:input path="supproduct" required="true"/></td>
					<td><form:errors path="supproduct" cssClass="error"></form:errors></td>
				</tr>
				<tr>
					<td>Brand</td>
					<td><form:input path="brand" required="true"/></td>
					<td><form:errors path="brand" cssClass="error"></form:errors></td>
				</tr>				
			    <tr>
			    <td><input type="submit" value="Add Supplier Info" class="btn btn-primary active"></td>
			    </tr>
</table>
</div>
</form:form>
<h2><strong><u>Supplier List</u></strong></h2>
 <table class="table table-bordered table-striped" id="table">
				<tr>
					<th width="60">ID</th>
					<th width="100">Name</th>
					<th width="80">Address</th>
					<th width="120">Contact No.</th>
					<th width="80">Email</th>
					<th width="80">Brand</th>
					<th width="80">Product</th>
					<!-- <th width="80">Edit</th>
					<th width="80">Delete</th> -->
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
							<td><a href="<c:url value="/admin/supplier/remove/${sup.sid}" />"><span class="glyphicon glyphicon-trash">Delete</span></a></td> --> 
						</tr>
					</c:forEach>
				</tbody>
			</table>
</div>
</div>

<%@ include file="/WEB-INF/views/template/footer.jsp" %> 
</html>