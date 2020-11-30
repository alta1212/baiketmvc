var myApp = angular.module('myApp', []);

myApp.controller('index', function ($scope, $http) {
    $http({
        method: 'get',
        url: '/index/getproduct?maloai= '

    })
        .then(function (jsonResults) {
            $scope.getJsonResults = jsonResults.data;
            console.log($scope.getJsonResults)
        })
    }
);
myApp.controller('lsp', function ($scope, $http) {
    $http({
        method: 'get',
        url: '/index/getlsp'

    }).then(function (jsonResults) {
            $scope.get = jsonResults.data;
            console.log($scope.getJsonResults)
    })
    
    }

);

myApp.controller('ctsach', function ($scope, $http, $location) {
   
    var masp = $location.search().masanpham
  
    $http({
        method: 'get',
        url: '/index/getct?masanpham=' + masp

    }).then(function (jsonResults) {
            $scope.tensach = jsonResults.data[0].tensp;
        $scope.gia = jsonResults.data[0].giaban;
        $scope.mota = jsonResults.data[0].mota;
        $scope.tacgia = jsonResults.data[0].tacgia;
            console.log(jsonResults.data)
        })
}
);
myApp.controller('getbyloai', function ($scope, $http, $location) {
    
    var masp = $location.search().maloaisanpham
  
        $http({
            method: 'get',
            url: '/index/getproduct?maloai=' + masp

        })
            .then(function (jsonResults) {
                $scope.getJsonResults = jsonResults.data;
                console.log($scope.getJsonResults)
            })
   
    
})