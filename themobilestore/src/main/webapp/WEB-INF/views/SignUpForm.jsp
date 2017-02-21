<%@ include file="/WEB-INF/views/template/header.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<div class="jumbotron">
	<div class="container">
		<div class="row">
			<div class="col-xs-3 col-sm-4 col-md-5 col-sm-offset-4 col-md-offset-4 well">

				<h2>
					<center><strong><a href="#"><span class="glyphicon glyphicon-globe"></span></a>SIGN-UP!</strong></center>
				</h2>
				<br>

				<c:url var="url" value="addCustomer"></c:url>

				<form:form action="${url }" commandName="customer">

					<div class="row">

						<div class="col-xs-6 col-md-6">
             
							<div class="form-group">
								<center><form:label path="firstname">FIRST NAME</form:label></center>
								<form:input path="firstname"></form:input>
								<form:errors path="firstname" cssStyle="color:#ff0000"></form:errors>
							</div>
                        </div>
							<!-- <input class="form-control" name="firstname" placeholder="First Name" type="text" required autofocus/> -->

							<div class="col-xs-6 col-md-6">

								<div class="form-group">
									<center><form:label path="lastname">LAST NAME</form:label></center>
									<form:input path="lastname"></form:input>
									<form:errors path="lastname" cssStyle="color:#ff0000"></form:errors>
								</div>
							</div>
						</div>	
							<!-- <input class="form-control" name="lastname" placeholder="Last Name" type="text" required/> -->

							<div class="form-group">
								<center><form:label path="email">EMAIL ID</form:label></center>
								<center><form:input path="email"></form:input></center>
								<form:errors path="email" cssStyle="color:#ff0000"></form:errors>
							</div>
							<!-- <input class="form-control" name="youremail" placeholder="Your Email" type="email"/> -->

							<div class="form-group">
								<center><form:label path="phonenumber">PHONE No.</form:label></center>
								<center><form:input path="phonenumber"></form:input></center>
								<form:errors path="phonenumber" cssStyle="color:#ff0000"></form:errors>
							</div>

						<!-- <input class="form-control" name="reenteremail" placeholder="Re-enter Email" type="email"/> -->

							<div class="form-group">
								<center><form:label path="users.username">USERNAME</form:label></center>
								<center><form:input path="users.username"></form:input></center>
								<form:errors path="users.username" cssStyle="color:#ff0000"></form:errors>
							</div>

						<!-- <input class="form-control" name="username" placeholder="Username" type="username"/> -->

							<div class="form-group">
								<center><form:label path="users.password">PASSWORD</form:label></center>
								<center><form:input path="users.password" type="password"></form:input></center>
								<form:errors path="users.password" cssStyle="color:#ff0000"></form:errors>
							</div>

							<!--  <input class="form-control" name="password" placeholder="New Password" type="password"/> <br> -->

							<br />

							<button class="btn btn-lg btn-primary btn-block" type="submit">Sign-Up</button>
							<br>

</form:form>
</div>
</div>
</div>
</div>
<%@ include file="/WEB-INF/views/template/footer.jsp"%>