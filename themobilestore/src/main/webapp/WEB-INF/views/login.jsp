<%@ include file="/WEB-INF/views/template/header.jsp" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %> 

<div class="jumbotron text-center">
<div class="container">
    <div class="row">
        <div class="col-xs-4 col-sm-4 col-md-4 col-sm-offset-4 col-md-offset-4 well">
            <h2>Please Log In!</h2>
            <div class="account-wall">
                <img class="profile-img" src="./resources/images/img_avatar2.png"
                    alt="">
                    <c:if test="${not empty msg}">
                    <div class="msg">${msg}</div>
                     </c:if>
  
                     <!--j_spring_security_check"--> 
               <!-- <form name="loginForm" action="<c:url value="/j_spring_security_check"/>" method="post"> -->
                <form class="form-signin" action="<c:url value="/j_spring_security_check"/>" method="post">
                   
                   <c:if test="${not empty error}">
                   <div class="error"style="color: #ff0000;">${error}</div>
                   </c:if>
                
                <input type="text" class="form-control" name="email" placeholder="Email" required autofocus>
                <input type="password" class="form-control" name="password" placeholder="Password" required>
                <a href="login"><button class="btn btn-lg btn-primary btn-block" type="submit">Log in</button></a>
                 <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                <label class="checkbox pull-left">
                    <input type="checkbox" value="remember-me">
                    Remember me
                </label>
                <a href="#" class="pull-right need-help">Need help? </a><span class="clearfix"></span>
                </form>
            </div>
            <a href="SignUp" class="text-center new-account">Create an account </a>
        </div>
    </div>
</div>
</div>
<%@ include file="/WEB-INF/views/template/footer.jsp" %>
</body>
</html>