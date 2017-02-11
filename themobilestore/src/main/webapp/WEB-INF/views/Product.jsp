<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ include file="/WEB-INF/views/template/header.jsp" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false" %>

<div class="jumbotron text-center">
  <h2><strong><u>Our Product List</u></strong></h2>
  <br>
    <div class="container" ng-app="myModule" ng-controller="mainController">
 
    <div class="table-responsive">
    <c:url value="getAllProducts" var="url"></c:url>
    <form:form action="${url }" commandName="productList">
    
    <table class="table table-bordered"> 
    <thead>
      <tr>
        <th>Product ID</th>
        
        <th>Name</th>
        
        <th>Price </th>
        
        <th>Image</th>
        
        <th>More Features</th>
      </tr>
    </thead>
    
    <tbody>
       <c:forEach var="p" items="${productList}">
		    <tr>
			<td>${p.name }</td>
			<td>${p.description }</td>
			<td>${p.category.categoryDetails}</td>
            <td><img src="./resources/images/{{ product.path}}.jpg" class="img-thumbnail" alt="image" width="80" height="80"/></td>
            <td><a href="#">View More</a></td>
            </tr>
       </c:forEach>     
    </tbody>   
  </table>
 </form:form>
 </div> 
</div>
</div>

 <%@ include file="/WEB-INF/views/template/footer.jsp" %> 
  
</body>
</html>