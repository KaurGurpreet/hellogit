<%@ include file="/WEB-INF/views/template/header.jsp" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false" %>

<div class="jumbotron text-center">
  <h2><strong><u>Our Product List</u></strong></h2>
  <br>
    <div class="container">
 
    <div class="table-responsive">
    <table class="table table-bordered"> 
    <thead>
      <tr>
        <th>Product ID</th>
        
        <th>Name</th>
        
        <th>Price </th>
        
       <!--  <th>Image</th>  -->
        
        <th>More Features</th>
      </tr>
    </thead>
    
    <tbody>
       <c:forEach var="p" items="${productList}">
		    <tr>
			<td>${p.name }</td>
			<td>${p.description }</td>
			<td>${p.category.categoryDetails}</td>
            <!--  <td><img src="./resources/images/{{ product.path}}.jpg" class="img-thumbnail" alt="image" width="80" height="80"/></td> -->
            <td><a href="#">View More</a></td>
            </tr>
            <tr>
              <td colspan="4"><input type="submit" value="Add New Product"></td>
            </tr>
       </c:forEach>     
    </tbody>   
  </table>
 </div> 
</div>
</div>

 <%@ include file="/WEB-INF/views/template/footer.jsp" %> 
  
</body>
</html>