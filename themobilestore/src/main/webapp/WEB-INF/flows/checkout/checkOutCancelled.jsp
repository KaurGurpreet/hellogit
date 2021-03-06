<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ include file="/WEB-INF/views/template/header.jsp" %>
<%@ page isELIgnored="false" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>CheckOut Cancelled</title>
</head>

<body>
<div class="container-wrapper">
<div class="container">
<section>
<div class="jumbotron">
<div class="container">
<h1>CheckOut Cancelled</h1>

<p>Your check out process is cancelled! You may continue shopping....</p>
</div>
</div>
</section>

<section class="container">
<p><a href="<spring:url value="/getAllProducts" />" class="btn btn-primary">Continue Shopping</a></p>
</section>

</div>
</div>
</body>
<%@ include file="/WEB-INF/views/template/footer.jsp" %> 
</html>