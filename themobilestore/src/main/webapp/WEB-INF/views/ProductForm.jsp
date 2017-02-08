<%@ include file="/WEB-INF/views/template/header.jsp" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="spring" %>
<style>
footer 
  {
      background-color: #f2f2f2;
      padding:15px;
      margin-top: 0;
      margin-bottom: 0;
  }
</style>

<div class="jumbotron text-center">
  <h2><strong><u>Add Product!</u></strong></h2>
  <br>
<div class="container" ng-app="myModule" ng-controller="mainController">  
<div class="table-responsive"> 
<spring:form action="processProductData"  commandName="product">
<table class="table table-bordered">
<tr>
<td>Product ID</td>
<td><spring:input type="text" path="pid"></spring:input></td>
</tr>
<tr>
<td>Product Name</td>
<td> <spring:input type="text" path="name"></spring:input></td>
</tr>

<tr>
<td>Product Price</td>
<td><spring:input type="text" path="price"></spring:input></td>
</tr>

<tr>
<td>Product Quantity</td>
<td><spring:input type="text" path="quantity"></spring:input></td>
</tr>

<tr>
<td>Product Description</td>
<td><spring:input type="text" path="description"></spring:input></td>
</tr>

<tr>
<td colspan="2"><input type="submit" value="Add Product"></td>
</tr>

</table>

</spring:form>
</div>
</div>
</div>



<%@ include file="/WEB-INF/views/template/footer.jsp" %> 
</html>