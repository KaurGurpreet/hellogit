<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Sign Up Form</title>
 
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  
  <link href="./resources/css/bootstrap.min.css" rel="stylesheet">
  
  <link href="./resources/css/carousel.css" rel="stylesheet">
  
  <link href="./resources/css/main.css"  rel="stylesheet">
  
  <link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap-glyphicons.css" rel="stylesheet">
  
<style> 
  
  .navbar 
    {
      margin-top: 0;
      margin-bottom: 0;
      border-radius: 0;
    }
  
  .jumbotron  
 {
    position: relative;
    /*background: #B2FFFF center;*/
    background: url('./resources/images/backgroundImage.jpg') no-repeat center;
    width: 100%;
    height: 100%;
    background-size:cover;
    overflow: hidden;
    margin-top: 0;
    margin-bottom: 0;   
 }
 
  
.form-control
  { 
   margin-bottom: 10px;
  }
  
  footer 
  {
      background-color: #f2f2f2;
      padding:15px;
  }
 
  @media screen and (max-width:480px)
     {
       #sidebar { display: none;}
     }
  
 
</style>
 
</head>

<body>
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="#">TheMobileStore</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li><a href="home">Home</a></li>
       </ul>
     </div> 
   </div> 
</nav>  
       

<div class="jumbotron">
<div class="container">
 <div class="row">
        
  <!-- <div class="col-xs-12 col-sm-12 col-md-4 well well-sm"> -->
  <div class="col-xs-4 col-sm-4 col-md-4 col-sm-offset-4 col-md-offset-4 well">
            
   <legend><center><a href="#"><i class="glyphicon glyphicon-globe"></i></a> Sign up!</center></legend>
            
    <form action="#" method="post" class="form" role="form">
            
     <div class="row">
                
      <div class="col-xs-6 col-md-6">
                    
       <input class="form-control" name="firstname" placeholder="First Name" type="text" required autofocus/>

       </div>            
      <div class="col-xs-6 col-md-6">
                    
       <input class="form-control" name="lastname" placeholder="Last Name" type="text" required/>
                
      </div>
            
     </div>      
    <input class="form-control" name="youremail" placeholder="Your Email" type="email"/>
            
    <input class="form-control" name="reenteremail" placeholder="Re-enter Email" type="email"/>
            
    <input class="form-control" name="password" placeholder="New Password" type="password"/> <br>       
    <label for="">Birth Date</label>
            
      <div class="row">
              
       <div class="col-xs-4 col-md-4">
                    
        <select class="form-control">
                        
         <option value="Month">Month</option>
                   
        </select>
                
        </div>
             
      <div class="col-xs-4 col-md-4">
                    
        <select class="form-control">
                        
         <option value="Day">Day</option>
                    
        </select>
                
      </div>
          
      <div class="col-xs-4 col-md-4">
                    
        <select class="form-control">
                        
         <option value="Year">Year</option>
                    
        </select>
                
       </div>
            
      </div>
            
      <label class="radio-inline">
                
      <input type="radio" name="sex" id="inlineCheckbox1" value="male"/>
 Male
</label>
          
      <label class="radio-inline">
               
      <input type="radio" name="sex" id="inlineCheckbox2" value="female"/>
Female
</label>
<br/>
<br/>
            
      <button class="btn btn-lg btn-primary btn-block" type="submit">
Sign up</button><br>
           
     </form>
        
    </div>
    
  </div>
</div>
</div>

<%@ include file="/WEB-INF/views/template/footer.jsp" %>