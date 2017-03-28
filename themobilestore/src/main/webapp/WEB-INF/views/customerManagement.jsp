<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ include file="/WEB-INF/views/template/header.jsp" %>

<style>
.jumbotron {
	position: relative;
	background: url("../resources/images/bg5.jpg") no-repeat center;
	color: black;
	width: 100%;
	height: 100%;
	background-size: cover;
	overflow: hidden;
	margin-top: 0;
	margin-bottom: 0;
}

.table th, .table td {

	text-align: center;
}

td {
	background-color: whitesmoke;
} 

</style>

<div class="jumbotron">
<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>Customer Management Page</h1>

            <p class="lead">This is the customer management page!</p>
        </div>

        <table class="table table-striped table-hover">
            <thead>
            <tr class="bg-success">
                <th>First Name</th>
                <th>Last Name</th>
                <th>Email</th>
                <th>Phone</th>
                <!-- <th>Username</th>
                <th>Enabled</th> -->
            </tr>
            </thead>
            <c:forEach items="${customerList}" var="customer">
                <tr>
                    <td>${customer.firstname}</td>
                    <td>${customer.lastname}</td>
                    <td>${customer.email}</td>
                    <td>${customer.phonenumber}</td>
                    <%-- <td>${customer.username}</td>
                    <td>${customer.enabled}</td> --%>
                </tr>
            </c:forEach>
        </table>
        
        </div>
        </div>
        <br><br><br><br>
</div>

<%@ include file="/WEB-INF/views/template/footer.jsp" %>