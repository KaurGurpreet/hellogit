<%@ include file="/WEB-INF/views/template/header.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<div class="jumbotron">
	<div class="container">
		<div class="row">
			<div class="col-xs-3 col-sm-4 col-md-5 col-sm-offset-4 col-md-offset-4 well">

				<h2>
					<center>
						<a href="#"><span class="glyphicon glyphicon-globe"></span></a>SIGNUP here!
					</center>
				</h2>
				<br>

				<c:url var="url" value="SignUp"></c:url>

				<form:form action="${url }" commandName="customer">

					<div class="row">

						<div class="col-xs-6 col-md-6">

							<div class="form-group">
								<form:label path="firstname">FIRST NAME</form:label>
								<form:input path="firstname"></form:input>
							</div>
                        </div>
							<!-- <input class="form-control" name="firstname" placeholder="First Name" type="text" required autofocus/> -->

							<div class="col-xs-6 col-md-6">

								<div class="form-group">
									<form:label path="lastname">LAST NAME</form:label>
									<form:input path="lastname"></form:input>
								</div>
							</div>
						</div>	
							<!-- <input class="form-control" name="lastname" placeholder="Last Name" type="text" required/> -->

							<div class="form-group">
								<form:label path="email">EMAIL</form:label>
								<form:input path="email"></form:input>
							</div>
							<!-- <input class="form-control" name="youremail" placeholder="Your Email" type="email"/> -->

							<div class="form-group">
								<form:label path="phonenumber">PHONE NUMBER</form:label>
								<form:input path="phonenumber"></form:input>
							</div>

							<!-- <input class="form-control" name="reenteremail" placeholder="Re-enter Email" type="email"/> -->

							<div class="form-group">
								<form:label path="users.username">USERNAME</form:label>
								<form:input path="users.username"></form:input>
							</div>

							<!-- <input class="form-control" name="username" placeholder="Username" type="username"/> -->

							<div class="form-group">
								<form:label path="users.password">PASSWORD</form:label>
								<form:input path="users.password" type="password"></form:input>
							</div>

							<!--  <input class="form-control" name="password" placeholder="New Password" type="password"/> <br> -->

							<br /> <br />

							<button class="btn btn-lg btn-primary btn-block" type="submit">Signup</button>
							<br>

</form:form>
</div>
</div>
</div>
</div>
<%@ include file="/WEB-INF/views/template/footer.jsp"%>