<%@ include file="/WEB-INF/views/template/header.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<div class="jumbotron">
	<div class="container">
		<div class="row">
			<div
				class="col-xs-4 col-sm-3 col-md-5 col-sm-offset-4 col-md-offset-4 well well-lg">

				<h2>
					<center>
						<strong><a href="#"><span
								class="glyphicon glyphicon-globe"></span></a>SIGN-UP!</strong>
					</center>
				</h2>
				<br>

				<c:url var="url" value="addCustomer"></c:url>

				<form:form action="${url }" commandName="customerCommand">

					<div class="row">

						<div class="col-xs-6 col-md-6">

							<div class="form-group">
								<form:label path="firstname">FIRST NAME</form:label>
								<form:input path="firstname"></form:input>
								<form:errors path="firstname" cssStyle="color:#ff0000"></form:errors>
							</div>
						</div>
						<!-- <input class="form-control" name="firstname" placeholder="First Name" type="text" required autofocus/> -->


						<div class="col-xs-6 col-md-6">

							<div class="form-group">
								<form:label path="lastname">LAST NAME</form:label>
								<form:input path="lastname"></form:input>
								<form:errors path="lastname" cssStyle="color:#ff0000"></form:errors>
							</div>
						</div>
					</div>
					<!-- <input class="form-control" name="lastname" placeholder="Last Name" type="text" required/> -->

					<div class="row">
						<div class="col-xs-6 col-md-6">
							<div class="form-group">
								<form:label path="email">EMAIL ID</form:label>
								<form:input path="email"></form:input>
								<form:errors path="email" cssStyle="color:#ff0000"></form:errors>
							</div>
						</div>
						<!-- <input class="form-control" name="youremail" placeholder="Your Email" type="email"/> -->
						<div class="col-xs-6 col-md-6">
							<div class="form-group">
								<form:label path="phonenumber">PHONE No.</form:label>
								<form:input path="phonenumber"></form:input>
								<form:errors path="phonenumber" cssStyle="color:#ff0000"></form:errors>
							</div>
						</div>
					</div>
					<!-- <input class="form-control" name="reenteremail" placeholder="Re-enter Email" type="email"/> -->

					<div class="row">
						<div class="col-xs-6 col-md-6">
							<div class="form-group">
								<form:label path="username">USERNAME</form:label>
								<form:input path="username"></form:input>
								<form:errors path="username" cssStyle="color:#ff0000"></form:errors>
								
							</div>
						</div>
						
						<!-- <input class="form-control" name="username" placeholder="Username" type="username"/> -->

						<div class="col-xs-6 col-md-6">
							<div class="form-group">
								<form:label path="password">PASSWORD</form:label>
								<form:input path="password" type="password"></form:input>
								<form:errors path="password" cssStyle="color:#ff0000"></form:errors>
								
							</div>
						</div>
						<!--  <input class="form-control" name="password" placeholder="New Password" type="password"/> <br> -->
						
					</div>
					<center>
						<h4>Billing Address</h4>
					</center>
					<hr>
					<div class="row">
						<div class="col-xs-6 col-md-6">
							<div class="form-group">
								<form:label path="billingAddress.aptNo">Apt No</form:label>
								<form:input path="billingAddress.aptNo"></form:input>
								<form:errors path="billingAddress.aptNo"
									cssStyle="color:#ff0000"></form:errors>
							</div>
						</div>
						<div class="col-xs-6 col-md-6">
							<div class="form-group">
								<form:label path="billingAddress.streetName">Street Name</form:label>
								<form:input path="billingAddress.streetName"></form:input>
								<form:errors path="billingAddress.streetName"
									cssStyle="color:#ff0000"></form:errors>
							</div>
						</div>
					</div>

					<div class="row">
						<div class="col-xs-6 col-md-6">
							<div class="form-group">
								<form:label path="billingAddress.city">City</form:label>
								<form:input path="billingAddress.city"></form:input>
								<form:errors path="billingAddress.city" cssStyle="color:#ff0000"></form:errors>
							</div>
						</div>
						<div class="col-xs-6 col-md-6">
							<div class="form-group">
								<form:label path="billingAddress.zipcode">Zip Code</form:label>
								<form:input path="billingAddress.zipcode"></form:input>
								<form:errors path="billingAddress.zipcode"
									cssStyle="color:#ff0000"></form:errors>
							</div>
						</div>
					</div>

					<div class="row">
						<div class="col-xs-6 col-md-6">
							<div class="form-group">
								<form:label path="billingAddress.state">State</form:label>
								<form:input path="billingAddress.state"></form:input>
								<form:errors path="billingAddress.state"
									cssStyle="color:#ff0000"></form:errors>
							</div>
						</div>
						<div class="col-xs-6 col-md-6">
							<div class="form-group">
								<form:label path="billingAddress.country">Country</form:label>
								<form:input path="billingAddress.country"></form:input>
								<form:errors path="billingAddress.country"
									cssStyle="color:#ff0000"></form:errors>
							</div>
						</div>
					</div>
					
					<center>
						<h4>Shipping Address</h4>
					</center>
					<hr>
					<div class="row">
						<div class="col-xs-6 col-md-6">
							<div class="form-group">
								<form:label path="shippingAddress.aptNo">Apt No</form:label>
								<form:input path="shippingAddress.aptNo"></form:input>
								<form:errors path="shippingAddress.aptNo"
									cssStyle="color:#ff0000"></form:errors>
							</div>
						</div>
						<div class="col-xs-6 col-md-6">
							<div class="form-group">
								<form:label path="shippingAddress.streetName">Street Name</form:label>
								<form:input path="shippingAddress.streetName"></form:input>
								<form:errors path="shippingAddress.streetName"
									cssStyle="color:#ff0000"></form:errors>
							</div>
						</div>
					</div>

					<div class="row">
						<div class="col-xs-6 col-md-6">
							<div class="form-group">
								<form:label path="shippingAddress.city">City</form:label>
								<form:input path="shippingAddress.city"></form:input>
								<form:errors path="shippingAddress.city" cssStyle="color:#ff0000"></form:errors>
							</div>
						</div>
						<div class="col-xs-6 col-md-6">
							<div class="form-group">
								<form:label path="shippingAddress.zipcode">Zip Code</form:label>
								<form:input path="shippingAddress.zipcode"></form:input>
								<form:errors path="shippingAddress.zipcode"
									cssStyle="color:#ff0000"></form:errors>
							</div>
						</div>
					</div>

					<div class="row">
						<div class="col-xs-6 col-md-6">
							<div class="form-group">
								<form:label path="shippingAddress.state">State</form:label>
								<form:input path="shippingAddress.state"></form:input>
								<form:errors path="shippingAddress.state"
									cssStyle="color:#ff0000"></form:errors>
							</div>
						</div>
						<div class="col-xs-6 col-md-6">
							<div class="form-group">
								<form:label path="shippingAddress.country">Country</form:label>
								<form:input path="shippingAddress.country"></form:input>
								<form:errors path="shippingAddress.country"
									cssStyle="color:#ff0000"></form:errors>
							</div>
						</div>
					</div>

					<br />

					<button class="btn btn-lg btn-primary btn-block" type="submit">Sign-Up</button>
					<br>

				</form:form>
			</div>
		</div>
	</div>
</div>
<%@ include file="/WEB-INF/views/template/footer.jsp"%>