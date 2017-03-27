<%@ include file="/WEB-INF/views/template/header.jsp" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<head>   
<title>Product List</title>

<style>
a {
  color: #680c62;
  background-color: transparent;
  text-decoration: none;
}

h2{
font-size: 35px;
}
</style>
</head>
<div class="jumbotron text-center">
<!-- <div class="container-wrapper"> -->
    <div class="container">
        <div class="page-header">
            <h1>Administrator page</h1>

            <p class="lead">Welcome to the administrator page!</p>
        </div>

        <c:if test="${pageContext.request.userPrincipal.name != null}">
            <h2>
                Welcome: ${pageContext.request.userPrincipal.name} |
                <a href="<c:url value="/j_spring_security_logout"/>">Logout</a>
            </h2>

        </c:if>

        <h2>
            <a href="<c:url value="/admin/productInventory" /> "><u>Product Inventory</u></a>
        </h2>

        <p>Click Here to Add, Modify and View the Products!</p>

        <br/><br/>

        <h2>
            <a href="<c:url value="/admin/customer" /> "><u>Customer Management</u></a>
        </h2>

        <p>Click Here to view the customer information!</p>
        
</div>
</div>

<%@ include file="/WEB-INF/views/template/footer.jsp" %>