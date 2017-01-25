<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Sign Up</title>
 
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  
  <link href="./resources/css/bootstrap.min.css" rel="stylesheet">
  
  <link href="./resources/css/carousel.css" rel="stylesheet">
  
  <link href="./resources/css/main.css"  rel="stylesheet">
 <style> 
 /* .jumbotron 
 {
    position: relative;
    background: #B2FFFF center;
    width: 100%;
    height: 100%;
    background-size:cover;
    overflow: hidden;
    margin-top: 0;
    margin-bottom: 0;   
 }*/
 
.jumbotron {
    position: relative;
    background: #fff url('./resources/images/backgroundImage.jpg') center center;   
    width: 100%;
    height: 100%;
    background-size: cover;
    overflow: hidden;
    margin-top: 0;
    margin-bottom: 0;
}
 
/* .jumbotron {
    position: relative;
    margin-bottom: 0px;
    background-image: backgroundImage.jpg;
    background-position: 0% 25%;
    width: 100%;
    height: 100%;
    background-size: cover;
    background-repeat: no-repeat;
    color: purple;
 
}*/
 
</style>
  
</head>
<body>
<div class="jumbotron">
<div class="span3">
    
<h2>Sign Up</h2>
    
 <form>
    
  <label>First Name</label>
    
  <input type="text" name="firstname" class="span3" required="required"><br><br>
    
  <label>Last Name</label>
    
  <input type="text" name="lastname" class="span3"><br><br>
    
  <label>Email Address</label>
    
  <input type="email" name="email" class="span3"><br><br>
    
  <label>Username</label>
    
  <input type="text" name="username" class="span3"><br><br>
    
  <label>Password</label>
    
  <input type="password" name="password" class="span3"><br><br>
    
  <label><input type="checkbox" name="terms"> I agree with the <a href="#">Terms and Conditions</a>.</label><br>
    
  <input type="submit" value="Sign up" class="btn btn-primary pull-left">
    
<div class="clearfix"></div>    
</form>
</div>
</div>
</body>
</html>