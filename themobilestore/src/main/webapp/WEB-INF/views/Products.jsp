<%@ include file="/WEB-INF/views/template/header.jsp" %>

<div class="jumbotron text-center">
  <h2><strong><u>Our Product List</u></strong></h2>
  <br>
    <div class="container" ng-app="myModule" ng-controller="mainController">
    Search : <input type="text" placeholder="Search products" ng-model="searchText.name"/> 
    <br><br>
     <!--  Sort By : <select ng-model="sortColumn">
              <option value="pid"> Product ID Asc</option>
              <option value="name"> Name Asc</option>
              <option value="price"> Price Asc</option>
             </select> <br> <br> -->
 
    <div class="table-responsive">
    <table class="table table-bordered"> 
    <thead>
      <tr>
        <th ng-click="sortData('pid')">
        Product ID <div ng-class="getSortClass('pid')"></div>
        </th>
        <th ng-click="sortData('name')">
        Name <div ng-class="getSortClass('name')"></div>
        </th>
        <th ng-click="sortData('price')">
        Price <div ng-class="getSortClass('price')"></div> 
        </th>
        <th ng-click="sortData('path')">
        Image <div ng-class="getSortClass('path')"></div>
        </th>
        <th>More Features</th>
      </tr>
    </thead>
    
    <tbody>
       <tr ng-repeat="product in products | orderBy:sortColumn:reverseSort | filter:searchText"> 
        <!--  <tr ng-repeat="product in products | orderBy:sortColumn"> -->
        <td>{{ product.pid }}</td>     
        <td>{{ product.name }}</td>
        <td>{{ product.price}}</td>
        <td><img src="./resources/images/{{ product.path}}.jpg" class="img-thumbnail" alt="image" width="80" height="80"/></td>
       <!--   <td><a href="#">{{ product.link}}</a></td> -->
       <td><a href="#">View More</a></td>
      </tr>
    </tbody>   
  </table>
 </div> 
</div>
</div>

 <%@ include file="/WEB-INF/views/template/footer.jsp" %> 
  
</body>
</html>