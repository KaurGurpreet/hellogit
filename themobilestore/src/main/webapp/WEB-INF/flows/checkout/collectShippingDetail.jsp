<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ include file="/WEB-INF/views/template/header.jsp" %>
<%@ page isELIgnored="false" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Collect Shipping Detail</title>
</head>

<div class="jumbotron text-center">
    <div class="container">
    <div class="row">
        <div class="page-header">
<p class="lead"><h1>Customer Details:</h1></p>

<!-- <p class="lead">Customer Details:</p> -->
</div>

<form:form commandName="order" class="form-horizontal">

<div class="row">

<h2><u>Shipping Address:</u></h2><br>

<div class="col-xs-6 col-md-6">
<div class="form-group">
<label for="shippingStreet">Street Name</label>
<form:input path="cart.customer.shippingAddress.streetName" id="shippingStreet" class="form-Control" />
</div>
</div>

<div class="col-xs-6 col-md-6">
<div class="form-group">
<label for="shippingApartmentNumber">Apt No.</label>
<form:input path="cart.customer.shippingAddress.aptNo" id="shippingApartmentNumber" class="form-Control" />
</div>
</div>

<div class="col-xs-6 col-md-6">
<div class="form-group">
<label for="shippingCity">City</label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<form:input path="cart.customer.shippingAddress.city" id="shippingCity" class="form-Control" />
</div>
</div>

<div class="col-xs-6 col-md-6">
<div class="form-group">
<label for="shippingState">State</label>&nbsp;&nbsp;&nbsp;
<form:input path="cart.customer.shippingAddress.State" id="shippingState" class="form-Control" />
</div>
</div>

<div class="col-xs-6 col-md-6">
<div class="form-group">
<label for="shippingCountry">Country</label>&nbsp;&nbsp;&nbsp;&nbsp;
<form:input path="cart.customer.shippingAddress.country" id="shippingCountry" class="form-Control" />
</div>
</div>

<div class="col-xs-6 col-md-6">
<div class="form-group">
<label for="shippingZip">Zipcode</label>
<form:input path="cart.customer.shippingAddress.zipcode" id="shippingZip" class="form-Control" />
</div>
</div>

</div>
<input type="hidden" name="_flowExecutionKey" />

<br/><br/>

<button class="btn btn-warning" name="_eventId_backToCollectCustomerInfo">Back</button>

<input type="submit" value="Next" class="btn btn-success" name="_eventId_shippingDetailCollected" />

<button class="btn btn-danger" name="_eventId_cancel">Cancel</button>

</form:form>
</div>
</div>
<br/><br/>
</div>
<%@ include file="/WEB-INF/views/template/footer.jsp" %>

</html>