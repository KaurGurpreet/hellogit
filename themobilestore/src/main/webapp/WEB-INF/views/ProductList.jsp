<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<head>   
<title>Product List</title>

<%@ include file="/WEB-INF/views/template/header.jsp" %>
<%-- <link href="<c:url value="resources/css/products.css" />" rel="stylesheet"> --%>
<script src="<c:url value="/resources/js/jquery-3.1.1.min.js" />"></script> 
<script src="https://cdn.datatables.net/1.10.10/js/jquery.dataTables.min.js"></script>
<link href="https://cdn.datatables.net/1.10.10/css/jquery.dataTables.min.css" rel="stylesheet">

<script>
$(document).ready(function(){
	var searchCondition='${searchCondition}';
	$('.table').DataTable({
		"lengthMenu":[[3,5,7,-1],[3,5,7,"All"]],
		"oSearch":{"sSearch":searchCondition}
	})
});
</script>

<style>
.table th, .table td {

	text-align: center;
}

td {
	background-color: whitesmoke
} 
</style>
</head>
<div class="jumbotron">
    <div class="container">
    
    
   <c:if test="${pageContext.request.userPrincipal.name == 'admin'}">
    <c:url var="url" value="productform"></c:url>  
    <a href="${url }" class="btn btn-primary btn-lg pull-right" role="button">
    <span class="glyphicon glyphicon-hand-right"></span> Add New Product</a>
   </c:if>	
    <br>
    <h2><strong><center><u>Our Product List</u></center></strong></h2>
     <br>
    <div class="table-responsive">
   <!--  <table class="table table-bordered"> --> 
   <table class="table table-striped table-hover">
    <thead>
      <tr class="bg-success">
        
        <th width="100">Image</th>
        
        <th width="100">Product Name</th>
        
        <th width="100">Description</th>
        
        <th width="100">Price</th>
        
        <th width="100">Quantity</th>
        
        <th width="100">Category</th>
                
        <th width="100">View</th>
        
        <c:if test="${pageContext.request.userPrincipal.name == 'admin'}">
        <th width="100">Delete</th>
        <th width="100">Edit</th>
        </c:if>
        
      </tr>
    </thead>
    
    <tbody>
       <c:forEach var="p" items="${productList}">
		    <tr>
		    <td><c:url var="src" value="resources/images/${p.pid }.jpg"></c:url>
		    <img src="${src }" class="img-thumbnail" alt="image" width="80" height="80"/></td>
			<td>${p.name }</td>
			<td>${p.description }</td>
			<td>${p.price }</td>
			<td>${p.quantity }
			<td>${p.category.cname }</td>
            <!--  <td><img src="./resources/images/{{ product.path}}.jpg" class="img-thumbnail" alt="image" width="80" height="80"/></td> -->
            <!-- <td><a href="#">View More</a></td> -->
            <td>
                    <c:url var="url" value="/viewproduct/${p.pid }"></c:url>  
					<a href="${url }"><span class="glyphicon glyphicon-info-sign"></span></a> 
			</td>
			<c:if test="${pageContext.request.userPrincipal.name == 'admin'}">	
			<td>
				    <c:url var="delete" value="/deleteproduct/${p.pid }"></c:url> 
					<a href="${delete }"><span class="glyphicon glyphicon-remove"></span></a>
					
			 </td>
			 <td>	
				    <c:url var="edit" value="/editform/${p.pid }"></c:url>
					<a href="${edit }"><span class="glyphicon glyphicon-pencil"></span></a>
			</td>
			</c:if>
		   </tr>
       </c:forEach>     
    </tbody>   
  </table>
 </div> 
 <br> <br>
 
</div>
</div> 

 <%@ include file="/WEB-INF/views/template/footer.jsp" %> 
</html>