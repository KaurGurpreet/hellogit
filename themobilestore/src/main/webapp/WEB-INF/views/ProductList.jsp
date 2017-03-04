<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<head>   
<title>Product List</title>

<%@ include file="/WEB-INF/views/template/header.jsp" %>
<link href="<c:url value="resources/css/products.css" />" rel="stylesheet">

<script>
$(document).ready(function(){
	var searchCondition='${searchCondition}';
	$('.table').DataTable({
		"lengthMenu":[[3,5,7,-1],[3,5,7,"All"]],
		"oSearch":{"sSearch":searchCondition}
	})
});
</script>
</head>
<div class="jumbotron">
    <div class="container">
    
    
   <c:if test="${pageContext.request.userPrincipal.name !=null }">
    <c:url var="url" value="productform"></c:url>  
   <security:authorize access="ROLE_ADMIN"> 
    <a href="${url }" class="btn btn-primary btn-lg active pull-right" role="button">Add New Product</a>
    </security:authorize>
   </c:if>	
    <br>
    <h2><strong><center><u>Our Product List</u></center></strong></h2>
     <br>
    <div class="table-responsive">
    <table class="table table-bordered"> 
    <thead>
      <tr>
        
        <th>Image</th>
        
        <th>Product Name</th>
        
        <th>Description</th>
        
        <th>Price</th>
        
        <th>Category</th>
        
       <!--  <th>Image</th>  -->
        
        <!-- <th>More Features</th> -->
        <th>View</th>
        <th>Delete</th>
        <th>Edit</th>
        
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
			<td>${p.category.cname }</td>
            <!--  <td><img src="./resources/images/{{ product.path}}.jpg" class="img-thumbnail" alt="image" width="80" height="80"/></td> -->
            <!-- <td><a href="#">View More</a></td> -->
            <td>
                    <c:url var="url" value="/viewproduct/${p.pid }"></c:url>  
					<a href="${url }"><span class="glyphicon glyphicon-info-sign"></span></a> 
			</td>
			<td>		
				    <c:url var="delete" value="/deleteproduct/${p.pid }"></c:url> 
					<a href="${delete }"><span class="glyphicon glyphicon-remove"></span></a>
			 </td>
			 <td>		
				    <c:url var="edit" value="/editform/${p.pid }"></c:url>
					<a href="${edit }"><span class="glyphicon glyphicon-pencil"></span></a>
			</td>
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