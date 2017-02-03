var app= angular
          .module("myModule", [])
          .controller("mainController", function($scope) {
        /*  var products = [
{ pid: "P001", name: "Samsung", price: "30,000", path: "Samsung", link: "View More" },
{ pid: "P002", name: "Oppo", price: "25,000", path: "Oppo", link: "View More" },
{ pid: "P003", name: "HTC", price: "20,000", path: "htc", link: "View More" },
{ pid: "P004", name: "Apple", price: "60,000", path: "AppleIphone", link: "View More"},
{ pid: "P005", name: "Nokia", price: "15,000", path: "nokia", link: "View More" }
];*/
          
          var products = [
{ pid: "P001", name: "Samsung", price: "30,000", path: "Samsung" },
{ pid: "P002", name: "Oppo", price: "25,000", path: "Oppo" },
{ pid: "P003", name: "HTC", price: "20,000", path: "htc" },
{ pid: "P004", name: "Apple", price: "60,000", path: "AppleIphone"},
{ pid: "P005", name: "Nokia", price: "15,000", path: "nokia" }
];
  
  $scope.products = products;
  $scope.sortColumn = "name";
  $scope.reverseSort = false;
  
  $scope.sortData = function(column)
  {
	  $scope.reverseSort = ($scope.sortColumn == column) ? !$scope.reverseSort :false;
	  $scope.sortColumn = column;
  }
  $scope.getSortClass = function (column)
  {
	  if ($scope.sortColumn == column)
	  {
		  return $scope.reverseSort ? "arrow-down" : "arrow-up"
  }
    return ' ';
  } 
}); 
