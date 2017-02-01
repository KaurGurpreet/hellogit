var app= angular
          .module("myModule", [])
          .controller("mainController", function($scope) {
          var products = [
{ pid: "P001", name: "Samsung", price: "30,000", path: "Samsung", link: "View More" },
{ pid: "P002", name: "Oppo", price: "25,000", path: "Oppo", link: "View More" },
{ pid: "P003", name: "HTC", price: "20,000", path: "htc", link: "View More" },
{ pid: "P004", name: "Apple", price: "60,000", path: "backgroundImage", link: "View More"},
{ pid: "P005", name: "Nokia", price: "15,000", path: "Samsung", link: "View More" }
];
  
  $scope.products = products;
    
});
