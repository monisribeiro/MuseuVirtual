angular.module('app', ['ngRoute', 'ngResource'])
        .config(['$routeProvider',
  function($routeProvider) {
    $routeProvider.
      when('/', {
        templateUrl: 'partials/main.html'
      }).
      when('/galeria', {
        templateUrl: 'partials/galeria.html'
      }).
      when('/desafios', {
        templateUrl: 'partials/desafios.html'
      }).
      when('/perguntas', {
        templateUrl: 'partials/perguntas.html'
      }).
      when('/sobreMuseu', {
        templateUrl: 'partials/sobreMuseu.html'
      }).
      when('/sobreNos', {
        templateUrl: 'partials/sobreNos.html'
      }).
      otherwise({
        redirectTo: '/'
      });
  }])
      .controller('MainController', ['$scope', '$location', function($scope, $location){
          $scope.redirectDesafios = redirectDesafios;
          $scope.redirectGaleria = redirectGaleria;
          
          function redirectDesafios(){
              
              $location.path("desafios");
          }
          
          function redirectGaleria(){
              $location.path("galeria");
          }
  }])
    .controller('GalleryController', ['$scope', '$http', function($scope, $http){
  }]);

