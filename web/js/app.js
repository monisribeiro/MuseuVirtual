angular.module('app', ['ngRoute', 'ngResource', 'ngAnimate', 'ui.bootstrap'])
        .config(['$routeProvider',
  function($routeProvider) {
    $routeProvider.
      when('/main', {
        templateUrl: 'partials/main.html'
      }).
      when('/galeria', {
        templateUrl: 'partials/galeria.html'
      }).
      when('/galeria/imagem', {
        templateUrl: 'partials/visualizacaoImagem.html'
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
    .controller('GalleryController', ['$scope', '$modal', function($scope, $modal){
           $scope.text = "Mussum ipsum cacilds, vidis litro abertis. Consetis adipiscings elitis. Pra lá , depois divoltis porris, paradis. Paisis, filhis, espiritis santis. Mé faiz elementum girarzis, nisi eros vermeio, in elementis mé pra quem é amistosis quis leo. Manduma pindureta quium dia nois paga. Sapien in monti palavris qui num significa nadis i pareci latim. Interessantiss quisso pudia ce receita de bolis, mais bolis eu num gostis."
           $scope.title = "Thumbnail label"
           
          $scope.openImage = function(img, text, title, size){
            var modalInstance = $modal.open({
               animation: $scope.animationsEnabled,
               size:size, 
               templateUrl: 'myModalContent.html', 
               controller: 'ModalController', 
               resolve: {
                   image: function(){
                       return img;
                   },
                   text: function(){
                       return text;
                   },
                   title: function(){
                       return title;
                   }
               }
             });
           };
   }])
   .controller('ModalController', ['$scope', 'image', '$modalInstance', 'text', 'title', function($scope, image, $modalInstance, text, title){
           $scope.title = title;
           $scope.image = image;
          $scope.text = text;
          
          $scope.closeModal = function(){
                $modalInstance.dismiss('closeModal');
           };
   }]);