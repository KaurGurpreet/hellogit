<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ include file="/WEB-INF/views/template/header.jsp" %>
<%@ page isELIgnored="false" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Thank Customer</title>
</head>
<body>
<div class="container-wrapper">
<div class="container">
<section>
<div class="jumbotron">
<div class="container">
<h1>Thank you for your business!</h1>

<p>Your order will be shipped in two business days!</p>
</div>
</div>
</section>

<section class="container">
<p><a href="<spring:url value="/" />" class="btn btn-default">OK</a></p>
</section>

</div>
</div>
<%@ include file="/WEB-INF/views/template/footer.jsp" %> 
</body>
</html>
