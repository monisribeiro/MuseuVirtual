<%-- 
    Document   : perguntas
    Created on : 30/10/2015, 18:06:18
    Author     : gabriela
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
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
        <div class="container-fluid">
            <div class="col-sm-4"> 
                <div class="row">
                    <h3 style="margin-left: 10px;">Envie uma Pergunta ao Professor</h3>
                </div>  
                <div class="row"style="margin-top: 50px;">


                    <div class="row">
                        <div class="form-group" style="margin-left: 30px;">
                            <label >Assunto:</label>
                            <input type="text" class="form-control">
                        </div>
                    </div>
                    <div class="row">
                        <div class="form-group" style="margin-left: 30px;">
                            <label>Pergunta:</label>
                            <textarea cols="20" rows="10" class="form-control"></textarea>
                        </div>
                    </div>
                    <div class="col-sm-8"></div>
                    <div class="col-sm-4" style="padding-left: 30px;">
                        <button type="button" class="btn btn-primary" style="background-color:#195E63;">
                            Enviar Pergunta
                        </button>
                    </div>
                </div>
            </div>
            <div class="col-sm-8" style="padding-top: 20px;">
                <div class="panel panel-default" style="margin-left: 50px;">
                    <div class="panel-heading">
                        <h2 class="panel-title" style="text-align: center">Perguntas Arquivadas</h2>
                    </div>
                    <div class="panel-body">
                        <!--campo de busca-->
                        <div class="row">
                            <div class="col-sm-8">
                            </div>
                            <div class="col-sm-4" >
                                <!--campo de busca-->
                                <div style="display:inline-block;margin-top:20px;width:100%;padding-left:10px;">
                                    <form  action="search" method="post">
                                        <input type="text" name="search" class="form-control" style="display:block; float:left; width:80%" placeholder="Buscar Pergunta">
                                        <input type="submit" class="btn btn-default" value="Ok" style="display:block; float:right; width:20%"/>
                                    </form>
                                </div>
                                <div class="row">
                                   <!--TODO perguntas arquivadas--> 
                                </div>
                            </div>
                        </div>


                    </div>
                </div>
            </div>

        </div>

    </body>
</html>
