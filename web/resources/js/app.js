angular.module('app', ['ngRoute', 'ngResource', 'ngAnimate', 'ui.bootstrap'])
        .constant('user', {points : 0}) 
        .constant('perg1Disabled', {state: false})
        .constant('perg2Disabled', {state: false})
        .constant('perg3Disabled', {state: false})  
        .config(['$routeProvider',
  function($routeProvider) {
     console.log($routeProvider);
    $routeProvider.
      when('/object/hello', {
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
  .controller('TestController', ['$scope', '$location', function($scope, $location){
          alert($location.url);
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
    .controller('GalleryController', ['$scope', '$modal', '$http', function($scope, $modal, $http){
           
          $scope.openImage = function(img, text, name, size){
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
                   name: function(){
                       return name;
                   }
               }
             });
           };
   }])
   .controller('ModalController', ['$scope', 'image', '$modalInstance', '$modal', 'text', 'name', function($scope, image, $modalInstance, $modal, text, name){
          
          $scope.title = name;
          $scope.image = image;
          $scope.text = text;
          
          $scope.openSecondModal = function(){
               var modalInstance = $modal.open({
               animation: $scope.animationsEnabled,
               size:'lg', 
               templateUrl: 'myModalDesafio.html', 
               controller: 'DesafioController', 
               resolve: {
                   image: function(){
                       return image;
                   },
                   name: function(){
                       return name;
                   }
               }
               
             });
          }
          
          changeText();
          
          function changeText(){
              switch(name.trim()){
                  case "A Independ�ncia do Brasil. Independence of Brazil, 1888 - Pedro Am�rico.":
                      $scope.text = "A Independ�ncia � um processo ocorrido de 1821 a 1825 e coloca em violenta oposi��o os Reinos do Brasil e de Portugal. Depois de anos de conflito armado, Portugal finalmente cedeu, e em 29 de agosto de 1825 foi assinado o Tratado de Amizade e Alian�a.";
                      $scope.desafioExiste=true;
                  break;
                  case "Primeiro reinado. Abdica��o de Pedro I do Brasil - Aur�lio de Figueiredo.":
                      $scope.text = "O primeiro reinado do Brasil � o nome dado ao per�odo em que D. Pedro I governou o Brasil como Imperador, entre 1822 e 1831, ano de sua abdica��o.  Foi marcado por uma grande crise econ�mica, financeira, social e pol�tica.";
                      $scope.desafioExiste=true;
                break;
                  case "Per�odo regencial. A primeira caricatura do Brasil reg�ncia - Manuel de Ara�jo.":
                      $scope.desafioExiste=false;
                      $scope.text = "O per�odo regencial � como ficou conhecido o dec�nio de 1831 a 1840. Nele se firmaram a unidade territorial do pa�s e a estrutura��o das For�as Armadas, al�m de serem discutidos o grau de autonomia das prov�ncias e a centraliza��o do poder.";
                  break;
                  case "Segundo reinado. D. Pedro II na abertura da Assembl�ia Geral - Pedro Am�rico.":
                      $scope.desafioExiste=false;
                      $scope.text = "Per�odo que vai do final do regencial (1831-1840) � proclama��o da rep�blica (1889). Iniciou em 23 de julho de 1840, com a maioridade de Pedro de Alc�ntara, e teve o seu t�rmino em 15 de novembro de 1889, com a proclama��o da rep�blica brasileira.";
                  break;
                  case "Proclama��o da Rep�blica - Benedito Calixto.":
                      $scope.desafioExiste=true;
                      $scope.text = "A Proclama��o da Rep�blica Brasileira foi um levante pol�tico-militar ocorrido em 15 de novembro de 1889 que derrubou a monarquia constitucional parlamentarista e, por conseguinte, encerrou a soberania do imperador D. Pedro II.";
                  break;
                  case "A Bandeira dos Estado Unidos do Brasil.":
                      $scope.desafioExiste=true;
                      $scope.text = "A Primeira Rep�blica Brasileira, normalmente chamada de Rep�blica Velha, foi o per�odo da hist�ria do Brasil que se estendeu da proclama��o da Rep�blica at� a Revolu��o de 1930.";
                  break;
                  case "Get�lio Vargas aos 27 anos.":
                      $scope.desafioExiste=false;
                      $scope.text = "Era Vargas � o per�odo da hist�ria do Brasil entre 1930 e 1945, quando Get�lio Vargas governou o Brasil por 15 anos e de forma cont�nua. Compreende a Segunda e Terceira Rep�blica (Estado Novo).";
                  break;
                  case "Esplanada dos Minist�rios de Bras�lia, em 1959.":
                      $scope.desafioExiste=true;
                      $scope.text = "O per�odo conhecido como Rep�blica Populista se inicia com a ren�ncia for�ada do Presidente Get�lio Vargas, em outubro de 1945, e termina em 31 de mar�o de 1964, pelas for�as militares que iniciaram o regime militar no Brasil.";
                  break;
                  case "Golpe de 1964.":
                      $scope.desafioExiste=true;
                      $scope.text = "A Ditadura militar no Brasil foi o regime instaurado em 1 de abril de 1964, e durou at� 15 de mar�o de 1985. De car�ter autorit�rio e nacionalista, acabou quando J. Sarney assumiu a presid�ncia, o que deu in�cio � Nova Rep�blica.";
                  break;
                  case "A Constitui��o de 1988.":
                      $scope.desafioExiste=true;
                      $scope.text = "A Nova Rep�blica � o nome do per�odo da Hist�ria do Brasil que se seguiu ao fim da ditadura militar. � caracterizado pela ampla democratiza��o pol�tica do Brasil e sua estabiliza��o econ�mica.";
                  break;
              default: 
                  $scope.text = "";
              }
          }
          
          $scope.closeModal = function(){
                $modalInstance.dismiss('closeModal');
           };
   }])
   .controller('DesafioController', ['$scope',  '$modalInstance', '$modal', 'image', 'name', 'user', 'perg1Disabled', 'perg2Disabled', 'perg3Disabled',
       function($scope, $modalInstance, $modal, image, name, user, perg1Disabled, perg2Disabled, perg3Disabled){
          $scope.respostasDisabled = false;
          $scope.resp1model = false;
          $scope.resp2model = false;
          $scope.resp3model = false;
          $scope.resp4model = false;
          $scope.alertmsg = "Resposta correta";
          $scope.alerttype = "alert alert-danger"
           $scope.image = image;
        $scope.showAlert = true; 
          $scope.name = name;
          $scope.closeModal = function(){
                $modalInstance.dismiss('closeModal');
           };
           $scope.points = 0;
           
          changeText();
          
          function changeText(){
              switch(name.trim()){
                  case "Per�odo regencial. A primeira caricatura do Brasil reg�ncia - Manuel de Ara�jo.":
                      $scope.question = "Qual o dec�nio conhecido como per�odo regencial?";
                      $scope.resp1 = "1861-1870";
                      $scope.resp2 = "1931-1940";
                      $scope.resp3 = "1911-1921";
                      $scope.resp4 = "1831-1840";
                      $scope.respostasDisabled = perg1Disabled.state;
                  break;
                  case "Segundo reinado. D. Pedro II na abertura da Assembl�ia Geral - Pedro Am�rico.":
                      $scope.question = "Quando se encerrou o per�odo regencial?";
                      $scope.resp1 = "15 de outubro de 1999";
                      $scope.resp2 = "15 de setembro de 1939";
                      $scope.resp3 = "15 de setembro de 1879";
                      $scope.resp4 = "15 de setembro de 1889";
                      $scope.respostasDisabled = perg2Disabled.state;
                  break;
                  case "Get�lio Vargas aos 27 anos.":
                      $scope.question = " Quantos anos Vargas ficou no poder?";
                      $scope.resp1 = "11 anos";
                      $scope.resp2 = "12 anos";
                      $scope.resp3 = "13 anos";
                      $scope.resp4 = "15 anos";
                      $scope.respostasDisabled = perg3Disabled.state;
                  break;
              default: 
                  $scope.question = "";
              }
              if($scope.respostasDisabled){
                    $scope.showAlert = false; 
                  $scope.alertmsg = "Voc� j� respondeu corretamente a essa quest�o";
                 $scope.alerttype = "alert alert-warning";
              }
          }
      
           $scope.confereRespostas = function(){
               if($scope.resp4model && !$scope.respostasDisabled) { 
                    $scope.showAlert = false; 
                    user.points += 10;
                    $scope.alertmsg = "Sua resposta est� correta, parab�ns! Sua pontua��o � " + user.points;
                    $scope.alerttype = "alert alert-success";
                    $scope.respostasDisabled = true;
                    switch(name.trim()){
                            case "Per�odo regencial. A primeira caricatura do Brasil reg�ncia - Manuel de Ara�jo.":
                                perg1Disabled.state = true;
                                console.log(perg1Disabled.state);
                            break;
                            case "Segundo reinado. D. Pedro II na abertura da Assembl�ia Geral - Pedro Am�rico.":
                                perg2Disabled.state = true;
                            break;
                            case "Get�lio Vargas aos 27 anos.":
                                perg3Disabled.state = true;
                            break;
                        }
                    
                    
                } else if(!$scope.respostasDisabled){ 
                    $scope.showAlert = false; 
                    $scope.alertmsg = "Sua resposta est� incorreta, tente novamente!";
                    $scope.alerttype = "alert alert-danger";
                    user.points -= 1;
                }
           }
           
           
           
   }]);