<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>

<title>Add Category</title>

<%@ include file="/WEB-INF/views/template/header.jsp" %>

<style>

/* .jumbotron {
	position: relative;
	background: url("../resources/images/bg5.jpg") no-repeat center;
	color: black;
	width: 100%;
	height: 100%;
	background-size: cover;
	overflow: hidden;
	margin-top: 0;
	margin-bottom: 0;
} */
  
  .table td
  {
  /* border: #800040 solid 1px !important; */
  background-color: white;
  text-align:center;
   }
  
  .table th
  {
  text-align:center;
  background-color: #d2f4d6;
  }
    
</style>
   
<div class="jumbotron text-center">
<div class="container" id="categoryTable" align="center">
  <h2><strong><u>Add Category</u></strong></h2>
<c:url value="/category/add" var="url"></c:url>
<form:form action="${url }"  commandName="categorycommand">
   
   <div class="table-responsive">
     <table id="editcategory">   
               <tr>
                 <td><label for="cid"></label></td>
                 <td><form:hidden path="cid"/></td>
               </tr>
                <tr>
					<td style="width: 120px"><b>Category Name</b></td>
					<td><form:input path="cname" id="cname" required="true"/></td>
					<td><form:errors path="cname" cssClass="error">Name</form:errors></td>
				</tr>
				<tr>
					<td><b>Stock Details</b></td>
					<td><form:input path="stock" required="true"/></td>
					<td><form:errors path="stock" cssClass="error"></form:errors></td>
				</tr>
								
			    <tr>
			    <td><input type="submit" value="Add Category" class="btn btn-primary active"></td>
			    </tr>
</table>
</div>
</form:form>
<br/>
<h2><strong><u>Category List</u></strong></h2>
<!--  <table class="table table-bordered table-striped" id="table"> -->
<br/>
<table class="table table-striped table-hover">
				<tr>
					<th width="80">ID</th>
					<th width="100">Name</th>
					<th width="120">Stock Details</th>
				    <th width="80">Edit</th>
					<th width="80">Delete</th>
				</tr>
				<tbody>
					<c:forEach var="c" items="${categoryList}">
						<tr>
							<td>${c.cid}</td>
							<td>${c.cname}</td>
							<td>${c.stock}</td> 
						    <td><a href="<c:url value="/category/edit/${c.cid }" />">
					        <span class="glyphicon glyphicon-pencil">Edit</span></a></td>
					        <td><a href="<c:url value="/category/remove/${c.cid }" />">
					        <span class="glyphicon glyphicon-trash">Delete</span></a></td>
						
						</tr>
					</c:forEach>
				</tbody>
			</table>
</div>
</div>

<%@ include file="/WEB-INF/views/template/footer.jsp" %> 
</html>