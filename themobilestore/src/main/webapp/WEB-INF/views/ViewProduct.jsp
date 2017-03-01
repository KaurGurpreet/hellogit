<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ include file="/WEB-INF/views/template/header.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>


<body>

<div class="jumbotron text-center">

		<%-- <div class="container">
<c:url value="viewproduct/{pid}" var="url"></c:url>
<form:form action="${url }"  commandName="product">
</form:form> --%>

		<div class="container">
			<div class="row">
				<div class="col-xs-4 item-photo">
					<img style="max-width: 100%;" src="#" />
				</div>
				<div class="col-xs-5" style="border: 0px solid gray">

					<h3>Samsung Galaxy S4 I337 16GB 4G LTE GSM Android Cell Phone</h3>
					<h5 style="color: #337ab7">
						Sold by <a href="#">Samsung</a><small style="color: #337ab7"></small>
					</h5>


					<h6 class="title-price">
						<small>PRICE OFFER</small>
					</h6>
					<h3 style="margin-top: 0px;">Rs. 35,000</h3>

					
					<div class="section">
						<h6 class="title-attr" style="margin-top: 15px;">
							<small>COLOR</small>
						</h6>
						<div>
							<div class="attr" style="width: 25px; background: #5a5a5a;"></div>
							<div class="attr" style="width: 25px; background: white;"></div>
						</div>
					</div>
				</div>
			</div>

</div>
</div>
<%@ include file="/WEB-INF/views/template/footer.jsp"%>
</body>
</html>
