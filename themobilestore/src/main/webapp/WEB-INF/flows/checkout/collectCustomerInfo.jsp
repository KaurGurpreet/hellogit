<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ include file="/WEB-INF/views/template/header.jsp" %>
<%@ page isELIgnored="false" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>   
<title>Customer Info</title>
<!-- <style>
label{
    display: block;
}

</style> -->
</head>
<div class="jumbotron text-center">
    <div class="container">
    <div class="row">
        <div class="page-header">
            <p class="lead"><h1>Customer Details:</h1>


            <!-- <p class="lead">Customer Details:</p> -->
        </div>
        
        <form:form commandName="order" class="form-horizontal">
        
        <div class="row">

        <h3><u>Basic Info:</u></h3>
        
        <div class="col-xs-6 col-md-6">
         
        <div class="form-group">
            <label for="name">First Name</label>
            <form:input path="cart.customer.firstname" id="firstname" class="form-Control" />
        </div>
        </div>
        
        <div class="col-xs-6 col-md-6">
        <div class="form-group">
            <label for="name">Last Name</label>
            <form:input path="cart.customer.lastname" id="lastname" class="form-Control" />
        </div>
        </div>
        
        <div class="col-xs-6 col-md-6">
        <div class="form-group">
            <label for="email">Email Add</label>
            <form:input path="cart.customer.email" id="email" class="form-Control" />
        </div>
        </div>
        
        <div class="col-xs-6 col-md-6">
        <div class="form-group">
            <label for="phone">Phone No</label>
            <form:input path="cart.customer.phonenumber" id="phone" class="form-Control" />
        </div>
        
        </div>
        </div>
        
        <br/>
  
        <h3><u>Billing Address:</u></h3>

        <div class="col-xs-6 col-md-6">
        <div class="form-group">
            <label for="billingStreet">Street Name</label>
            <form:input path="cart.customer.billingAddress.streetName" id="billingStreet" class="form-Control" />
        </div>
        </div>

        <div class="col-xs-6 col-md-6">
        <div class="form-group">
            <label for="billingApartmentNumber">Apt No.</label>
            <form:input path="cart.customer.billingAddress.aptNo" id="billingApartmentNumber" class="form-Control" />
        </div>
        </div>

        <div class="col-xs-6 col-md-6">
        <div class="form-group">
            <label for="billingCity">City</label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <form:input path="cart.customer.billingAddress.city" id="billingCity" class="form-Control" />
        </div>
        </div>

        <div class="col-xs-6 col-md-6">
        <div class="form-group">
            <label for="billingState">State</label> &nbsp;&nbsp;&nbsp;
            <form:input path="cart.customer.billingAddress.State" id="billingState" class="form-Control" />
        </div>
        </div>

        <div class="col-xs-6 col-md-6">
        <div class="form-group">
            <label for="billingCountry">Country </label> &nbsp;&nbsp;&nbsp;
            <form:input path="cart.customer.billingAddress.country" id="billingCountry" class="form-Control" />
        </div>
        </div>

        <div class="col-xs-6 col-md-6">
        <div class="form-group">
            <label for="billingZip">Zipcode</label>
            <form:input path="cart.customer.billingAddress.zipcode" id="billingZip" class="form-Control" />
        </div>
        </div>
       
       

        <input type="hidden" name="_flowExecutionKey" />

        <br/><br/>

        <input type="submit" value="Next" class="btn btn-primary" name="_eventId_customerInfoCollected" />

        <button class="btn btn-danger" name="_eventId_cancel">Cancel</button>

        </form:form>
        
    </div>
   </div>
  </div>
  

<%@ include file="/WEB-INF/views/template/footer.jsp" %> 
</html>