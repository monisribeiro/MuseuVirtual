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
        <meta name="viewport" content="width=device-width">

        <script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.3.14/angular.min.js"></script>

        <script type="text/javascript" src="https://code.jquery.com/jquery.js"></script>
        <script type="text/javascript" src="js/bootstrap.min.js"></script>

        <link href="bootstrap-theme.css" rel="stylesheet" />
        <link href="bootstrap-theme.min.css" rel="stylesheet" />
        <link href="bootstrap.css" rel="stylesheet" />
        <link href="bootstrap.min.css" rel="stylesheet" />
        <link href="style.css" rel="stylesheet">

    </head>
    <body>
        <!--header-->
        <div class="row">
            <header class="jumbotron"></header>
        </div>
        <!--separate header from body-->
        <div class="row">
            <div class="col-sm-12"></div>
        </div>
        <!--menu-->
        <div id ="menu" class="row">
            <div class="col-sm-3">
                <div id="menu-title">
                    <div class="row">
                        <div class="well">
                             <h5>Menu</h5>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <ul id="sidebar" class="nav nav-pills nav-stacked">
                        <li><a href="#">Galeria</a></li>
                        <li><a href="#">Desafios</a></li>
                        <li><a href="#">Perguntas</a></li>
                        <li><a href="#">Sobre o museu</a></li>
                        <li><a href="#">Sobre nós</a></li>
                    </ul>
                </div>
            </div>
            <!--main-->
            <div id ="main" class ="col-sm-9">
                <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
                    <!-- Wrapper for slides -->
                    <div class="carousel-inner" role="listbox">
                        <div class="item active">
                            <img src="imgs/proc.jpg" alt="Museu da Política Brasileira">

                        </div>
                        <div class="item">
                            <img src="imgs/proc.jpg" alt="...">

                        </div>
                    </div>
                </div>
                <div class="row">
                    <!--museum title-->
                    <div id="title-carousel">
                        <div class="carousel-caption">
                            <div class="row">
                                <div class="page-header">
                                    <h1 class="text-center" id="main-title">Museu da Política Brasileira</h1>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!--buttons-->
                    <div id="buttons-carousel">
                        <div class="carousel-caption">
                            <div class="row">
                                <div class="col-sm-6">
                                    <div class="row">
                                        <div class="col-sm-4"></div>
                                        <div class="col-sm-4">
                                            <button type="button" class="btn btn-primary">
                                                Inicie o tour
                                            </button>
                                        </div>
                                        <div class="col-sm-2"></div>
                                    </div>

                                </div>
                                <div class="col-sm-6">
                                    <div class="row">
                                        <div class="col-sm-2"></div>
                                        <div class="col-sm-4">
                                            <button type="button" class="btn btn-primary">
                                                 Teste seus conhecimentos
                                            </button>
                                        </div>
                                        <div class="col-sm-4"></div>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--separate body from footer-->
        <div class="row">
            <div class="col-lg-12"></div>
        </div>
        <!--footer-->
        <div class="row">
            <footer class="jumbotron"></footer>
        </div>
    </body>
</html>
