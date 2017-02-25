<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>View Products</title>
  <%@ include file="/WEB-INF/views/template/header.jsp" %>
  <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
  <%@ page isELIgnored="false" %>
  
</head>
<body>

<div class="jumbotron text-center">
  <h1>TheMobileStore</h1> 
  <div class="container">
<c:url value="viewproduct/{id}" var="url"></c:url>
<form:form action="${url }"  commandName="product">
</form:form>
</div>
</div>
</body>
</html>