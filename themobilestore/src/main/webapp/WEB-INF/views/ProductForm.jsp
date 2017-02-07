<%@ include file="/WEB-INF/views/template/header.jsp" %>

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
  <h2><strong><u>Add Product Form</u></strong></h2>
  <br>
<div class="row">
   <div class="col-xs-4 col-sm-4 col-md-4 col-sm-offset-4 col-md-offset-4 well">
<div class="container">
<form:form action=""  commandName="product">
<div class="form-group">
<label for="pid"></label>
<form:hidden  path=""/>
</div>

<div class="form-group">
<label for="name">Product Name</label>
<form:input path="name" class="form-control"/>
</div> 

<div class="form-group">
<label for="price">Price</label>
<form:input path="price" class="form-control" />
</div> 


<div class="form-group">
<label for="quantity">Quantity</label>
<form:input path="quantity" class="form-control"/>
</div>

<div class="form-group">
<label for="description">Description</label>
<form:input path="description" class="form-control"/>
</div>

<input type="submit" value="Add Product" class="btn btn-default">
</form:form> 

</div>
</div>
</div>
</div>

<%@ include file="/WEB-INF/views/template/footer.jsp" %> 
</html>