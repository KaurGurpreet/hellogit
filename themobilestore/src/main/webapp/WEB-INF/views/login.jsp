<%@ include file="/WEB-INF/views/template/header.jsp" %> 

<div class="jumbotron text-center">
<div class="container">
    <div class="row">
        <div class="col-xs-4 col-sm-4 col-md-4 col-sm-offset-4 col-md-offset-4 well">
            <h2>Please Log In!</h2>
            <div class="account-wall">
                <img class="profile-img" src="./resources/images/img_avatar2.png"
                    alt="">
                <form class="form-signin">
                <input type="text" class="form-control" placeholder="Email" required autofocus>
                <input type="password" class="form-control" placeholder="Password" required>
                <button class="btn btn-lg btn-primary btn-block" type="submit">
                    Sign in</button>
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