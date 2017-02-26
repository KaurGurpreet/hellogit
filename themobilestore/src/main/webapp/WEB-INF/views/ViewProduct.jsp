<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ include file="/WEB-INF/views/template/header.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>
  
</head>
<body>

<div class="jumbotron text-center">
  <h1>TheMobileStore</h1> 
  <div class="container">
<c:url value="viewproduct/{pid}" var="url"></c:url>
<form:form action="${url }"  commandName="productCommand">
</form:form>
</div>
</div>
</body>
</html>