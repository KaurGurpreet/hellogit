<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ include file="/WEB-INF/views/template/header.jsp" %>

<script>

    $(document).ready(function(){
        var searchCondition = '${searchCondition}';

        $('.table').DataTable({
            "lengthMenu": [[3,5,7, -1], [3,5,7, "All"]],
            "oSearch" : {"sSearch": searchCondition}
        });
    });
</script>

<style>
.table th, .table td {

	text-align: center;
}

td {
	background-color: whitesmoke;
} 

.jumbotron {
	position: relative;
	background: url("./../resources/images/bg5.jpg") no-repeat center;
	color: black;
	width: 100%;
	height: 100%;
	background-size: cover;
	overflow: hidden;
	margin-top: 0;
	margin-bottom: 0;
}


</style>

<div class="jumbotron text-center">
<div class="container-wrapper">

    <div class="container">
        <div class="page-header">
            <h1>Product Inventory Page</h1>


            <p class="lead">This is the product inventory page</p>

    <c:url var="url" value="/admin/productform"></c:url>  
    <a href="${url }" class="btn btn-primary btn-lg pull-right" role="button">
    <span class="glyphicon glyphicon-hand-right"></span> Add New Product</a>
<br/><br/><br/>
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
        
        <th width="100">Delete</th>
        
        <th width="100">Edit</th>
        
        
        <%-- <c:if test="${pageContext.request.userPrincipal.name == 'admin'}">
        <th width="100">Delete</th>
        <th width="100">Edit</th>
        </c:if> --%>
        
      </tr>
    </thead>
    
    <tbody>
       <c:forEach var="pd" items="${productList}">
		    <tr>
		    <td><c:url var="src" value="./../resources/images/${pd.pid }.jpg"></c:url>
		    <img src="${src }" class="img-thumbnail" alt="image" width="80" height="80"/></td>
			<td>${pd.name }</td>
			<td>${pd.description }</td>
			<td>${pd.price }</td>
			<td>${pd.quantity }
			<td>${pd.category.cname }</td>
            <td>
                    <c:url var="url" value="/viewproduct/${pd.pid }"></c:url>  
					<a href="${url }"><span class="glyphicon glyphicon-info-sign"></span></a> 
			</td>
			<%-- <c:if test="${pageContext.request.userPrincipal.name == 'admin'}">	 --%>
			<td>
				    <c:url var="delete" value="/admin/deleteproduct/${pd.pid }"></c:url> 
					<a href="${delete }"><span class="glyphicon glyphicon-remove"></span></a>
					
			 </td>
			 <td>	
				    <c:url var="edit" value="/admin/editform/${pd.pid }"></c:url>
					<a href="${edit }"><span class="glyphicon glyphicon-pencil"></span></a>
			</td>
			<%-- </c:if> --%>
		   </tr>
       </c:forEach>     
    </tbody>
   </table>
 <br> <br>
 
</div>
</div> 
</div>
</div>
 <%@ include file="/WEB-INF/views/template/footer.jsp" %> 
 