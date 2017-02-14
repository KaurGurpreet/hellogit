<%@ include file="/WEB-INF/views/template/header.jsp" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false" %>

<style>
.btn btn-info
{
background-color: #800020;
}
</style>

<div class="jumbotron text-center">
  <h2><strong><u>Our Product List</u></strong></h2>
  <br>
    <div class="container">
 
    <div class="table-responsive">
    <table class="table table-bordered"> 
    <thead>
      <tr>
        <th>Product Name</th>
        
        <th>Description</th>
        
        <th>Price</th>
        
        <th>Category</th>
        
       <!--  <th>Image</th>  -->
        
        <th>More Features</th>
      </tr>
    </thead>
    
    <tbody>
       <c:forEach var="p" items="${productList}">
		    <tr>
			<td>${p.name }</td>
			<td>${p.description }</td>
			<td>${p.price }</td>
			<td>${p.category.categoryDetails}</td>
            <!--  <td><img src="./resources/images/{{ product.path}}.jpg" class="img-thumbnail" alt="image" width="80" height="80"/></td> -->
            <td><a href="#">View More</a></td>
            </tr>
       </c:forEach>     
    </tbody>   
  </table>
 </div> 
 <br> <br>
 <center><a href="productform" class="btn btn-success" role="button">Add New Product</a></center>
</div>
</div> 

 <%@ include file="/WEB-INF/views/template/footer.jsp" %> 
  
</body>
</html>