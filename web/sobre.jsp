<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->

<html>
    <head>
        <title>TODO supply a title</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <link href="resources/style.css" rel="stylesheet" />
        <link href="resources/bootstrap-theme.css" rel="stylesheet" />
        <link href="resources/bootstrap-theme.min.css" rel="stylesheet" />
        <link href="resources/bootstrap.css" rel="stylesheet" />
        <link href="resources/bootstrap.min.css" rel="stylesheet" />
        <link href="resources/js/bootstrap.min.css" rel="stylesheet" />
        <script src="resources/js/jquery/jquery.min.js"></script>
        <script src="resources/js/lib/bootstrap.min.js"></script>
        <script src="resources/js/bootstrap.min.js"></script>
        <script src="resources/js/lib/angular.js"></script>
        <script src="resources/js/lib/angular-route.js"></script>
        <script src="resources/js/lib/angular-resource.js"></script>
        <script src="resources/js/lib/angular-animate.js"></script>
        <script src="resources/ui-bootstrap-tpls-0.13.4.js"></script>
        <script src="resources/js/app.js"></script>
    </head>
    <body>
        <div class="row" style="margin:0px;">
            <nav class="navbar navbar-default">
                <div class="container-fluid">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                    </div>
                    <div id="navbar" class="navbar-collapse collapse">
                        <ul class="nav navbar-nav navbar-horiz">
                            <li ><a href="#">Home</a></li>
                            <li class="active" ><a href="#">Museu</a></li>
                            <li class="dropdown">
                                <span dropdown on-toggle="toggled(open)">
                                    <a href id="simple-dropdown" dropdown-toggle>Desafios<span class="caret"></span></a>
                                    <ul class="dropdown-menu" aria-labelledby="simple-dropdown">
                                        <li><a href="${contextPath}/object/desafios">Associe as Imagens</a></li>
                                        <li><a href="${contextPath}/object/desafios">Teste seu Conhecimento</a></li>
                                    </ul>
                                </span>
                            </li>
                            <li><a href="#">Perguntas</a></li>
                            <li><a href="#">Sobre o Museu</a></li>
                            <li><a href="#">Sobre Nós</a></li>
                        </ul>
                    </div>
                </div>
            </nav>
        </div>
        <div class="container-fluid" style="margin-left: 100px;">
            <div class="row">
                <h2>Sobre o Museu</h2>
            </div>
            <div class="row" style="padding-top: 30px;">
                <div class="col-sm-3">
                    <img src="resources/imgs/MuseuPaulista.JPG" class="img-circle" alt="Museu Paulista" style="height: 250px; width: 250px;">
                </div>
                <div class="col-sm-7">
                    <p>
                        Este é um museu virtual do Museu Paulista, mais conhecido como Museu da Independência. 
                        Ele está localizado no bairro do Ipiranga em São Paulo e faz parte do conjunto arquitetônico
                        do Parque da Independência. Atualmente encontra-se fechado para reformas. 
                    </p>
                    <p>
                        O Museu Paulista foi inaugurado em 7 de setembro de 1895 como museu de História Natural e marco 
                        representativo da Independência, da História do Brasil e Paulista. Seu primeiro núcleo de acervo 
                        foi a coleção do Coronel Joaquim Sertório, que constituía um museu particular em São Paulo.
                    </p>
                    <p>
                        Atualmente, o Museu Paulista possui um acervo de mais de 125.000 unidades, entre objetos, iconografia 
                        e documentação textual, do século 17 até meados do século 20.
                    </p>
                </div>
            </div>
            <div class="row" style="padding-top: 30px;">
                <h2>Sobre Nós</h2>
            </div>
            <div class="row" style="padding-top: 30px;">
                <div class="col-sm-3">
                    <img src="resources/imgs/logo.jpg" class="img-circle" alt="SoftDesign" style="height: 250px; width: 250px;">
                </div>
                <div class="col-sm-7">
                    <p>
                        Nós somos a SoftDesign, uma fábrica de software especializada em sistemas de museus virtuais. 
                        Temos como missão o desenvolvimento eficiente, adotando técnicas de engenharia de software e o reúso de software.
                    </p> 
                    <p>
                        Neste projeto, a proposta principal é criar um museu virtual interativo sobre a política brasileira, onde alunos do ensino fundamental II
                        possam responder desafios, fazer perguntas ao prefessor e comentários sobre as obras afim de reter melhor o conhecimento e aprender de forma lúdica.
                    </p>
                    <h3>Nossa Equipe</h3>
                    
                    <div  class="row" style="padding-top: 10px;">
                        <div class="col-sm-4">
                            <img src="resources/imgs/Gabriela.jpg" class="img-circle" alt="Gabriela Martins" style="height: 100px; width: 100px; margin-left: 100px;">
                        </div>
                        <div class="col-sm-4">
                            <img src="resources/imgs/Mauricio.jpg" class="img-circle" alt="Mauricio Spinardi" style="height: 100px; width: 100px; margin-left: 100px;">
                        </div>
                        <div class="col-sm-4">
                            <img src="resources/imgs/Monique.jpg" class="img-circle" alt="Monique Spessoto" style="height: 100px; width: 100px; margin-left: 100px;">
                        </div> 
                    </div>
                    <div  class="row" style="padding-top: 10px;">
                         <div class="col-sm-4">
                             <h4 style="text-align: center">Gabriela Martins</h4>
                        </div>
                        <div class="col-sm-4">
                            <h4 style="text-align: center">Maurício Spinardi</h4>
                        </div>
                        <div class="col-sm-4">
                            <h4 style="text-align: center">Monique Spessoto</h4>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </body>
</html>
