<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>
<%@ include file="template/header.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Edit Product Form</title>

<style>

.jumbotron 
 {
  position: relative;
  background-image: url('images/bg4.jpg') no-repeat center;
  color: black;
  width: 100%;
  height: 100%;
  background-size: cover;
  overflow: hidden;
  margin-top: 0;
  margin-bottom: 0;
 }

footer {
	background-color: #f2f2f2;
	padding: 15px;
	margin-top: 0;
	margin-bottom: 0;
}
</style>

<div class="jumbotron text-center">

<div class="container">
<c:url value="/viewproduct/{pid}" var="url"></c:url>
<form:form action="${url }"  commandName="product"></form:form> 

			<div class="row">
				<div class="col-xs-4 item-photo">
				<c:forEach var="p" items="${productList}">
				<c:url var="src" value="resources/images/${p.pid }.jpg"></c:url>
		    	<img style="max-width: 100%" src="${src }" alt="image"/>
		    	</c:forEach>
				</div>
				<div class="col-xs-5" style="border: 0px solid gray">

					<h3>Samsung Galaxy S4 I337 16GB 4G LTE GSM Android Cell Phone</h3>
					<h5 style="color: #337ab7">
						Sold by <a href="#">Samsung</a><small style="color: #337ab7"></small>
					</h5>


					<h6 class="title-price">
						<small>PRICE OFFER</small>
					</h6>
					<h3 style="margin-top: 0px;">Rs. 35,000</h3>

					
					<div class="section">
						<h6 class="title-attr" style="margin-top: 15px;">
							<small>COLOR</small>
						</h6>
						<div>
							<div class="attr" style="width: 25px; background: #5a5a5a;"></div>
							<div class="attr" style="width: 25px; background: white;"></div>
						</div>
					</div>
				</div>
			</div>

</div>
</div>
<br><br><br><br>
<br><br><br><br>
<%@ include file="template/footer.jsp"%>
</html>
