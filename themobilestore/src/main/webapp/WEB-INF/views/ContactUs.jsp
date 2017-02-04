<%@ include file="/WEB-INF/views/template/header.jsp" %>

<div class="jumbotron">

<div class="container"><center><h2><u>Contact Us</u></h2></center>

  <div class="row">
  <section class="content">
  <div class="col-sm-4">
    <h3><center>Our Offices</center></h3>
<hr>
<address> <!--  <font color="#FFEBCD"> -->
<strong><u>Delhi Address:</u></strong><br> Tower-B, Cyber City Complex, South-Extension,<br> New Delhi-110049 <br>
<strong>Phone:</strong> +91-981-101-5533<br>
<strong>Email:</strong> support.delhi@tms.com
</font>
</address>

<address><!--  <font color="#FFEBCD"> -->
<strong><u>Gurgaon Address:</u></strong><br> Tower-A Infotech Hub, DLF, Phase-I, <br>Gurgaon-122001<br>
<strong>Phone:</strong> +91 991-757-2810 <br>
<strong>Email:</strong> support.gurgaon@tms.com
</font>
</address>

<address><!--  <font color="#FFEBCD"> -->
<strong><u>Mubai Address:</u></strong><br> Business Center, Building 10, Worli <br>Mumbai-400018<br>
<strong>Phone:</strong> +91 888-757-2828 <br>
<strong>Email:</strong> support.mumbai@tms.com
</font>
</address>
</div>
<div class="col-sm-1"></div>
    
<div class="col-sm-7 contact-form well well-sm">
<h4><center>Write Your Message Here</center></h4>
<form id="contact" method="post" class="form" role="form">
<div class="row">
<div class="col-xs-6 col-md-6 form-group">

<input class="form-control" id="name" name="name" placeholder="Name" type="text" required autofocus />
</div>
<div class="col-xs-6 col-md-6 form-group">
<input class="form-control" id="email" name="email" placeholder="Email" type="email" required />
</div>
</div>
<textarea class="form-control" id="message" name="message" placeholder="Message" rows="5"></textarea>
<br />
<div class="row">
<div class="col-xs-12 col-md-12 form-group">
<button class="btn btn-primary pull-right" type="submit">Submit</button>
</form>
</div>
</section>
</div>
</div>
 
</div>

<%@ include file="/WEB-INF/views/template/footer.jsp" %>
</body>
</html>