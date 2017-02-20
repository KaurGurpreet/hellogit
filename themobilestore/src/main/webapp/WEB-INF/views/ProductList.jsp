<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<title>Product List</title>

<%@ include file="/WEB-INF/views/template/header.jsp" %>
<link href="<c:url value="./resources/css/products.css" />" rel="stylesheet">

<div class="jumbotron">
    <div class="container">
    <a href="productform" class="btn btn-primary btn-lg active pull-right" role="button">Add New Product</a></right>
    <br>
    <h2><strong><center><u>Our Product List</u></center></strong></h2>
     <br>
    <div class="table-responsive">
    <table class="table table-bordered"> 
    <thead>
      <tr>
        <th>Product Name</th>
        
        <th>Description</th>
        
        <th>Price</th>
        
        <th>Category</th>
        
       <!--  <th>Image</th>  -->
        
        <!-- <th>More Features</th> -->
        <th>View/Edit/Delete</th>
        
      </tr>
    </thead>
    
    <tbody>
       <c:forEach var="p" items="${productList}">
		    <tr>
			<td>${p.name }</td>
			<td>${p.description }</td>
			<td>${p.price }</td>
			<td>${p.category.cname}</td>
            <!--  <td><img src="./resources/images/{{ product.path}}.jpg" class="img-thumbnail" alt="image" width="80" height="80"/></td> -->
            <!-- <td><a href="#">View More</a></td> -->
            <td>
                   <%--  <c:url var="url" value="viewproduct/${p.id}"></c:url>  --%>
					<a href="${url}"><span class="glyphicon glyphicon-info-sign"></span></a> 
					
					<%-- <c:url var="delete" value="deleteproduct/${p.id}"></c:url> --%> 
					<a href="${delete}"><span class="glyphicon glyphicon-remove"></span></a>
					
				    <%-- <c:url var="edit" value="editform/${p.id}"></c:url> --%>
					<a href="${edit}"><span class="glyphicon glyphicon-pencil"></span></a>
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