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

         <link rel="stylesheet" href="style.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>

        <!--por algum motivo o css e js do bootstrap local não tava funcionando bem com o modal-->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap-theme.min.css">
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
    </head>
    <body>
        <button type="submit" class="btn btn-default" data-toggle="modal" data-target="#myModal">Clique</button>

        
        <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header" style=" background-color:#195E63">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                        <h4 class="modal-title" id="myModalLabel" style="color:#ECE1C3">Desafio</h4>
                    </div>
                    <div class="modal-body">
                        <div class="row">
                            <div class="col-sm-6">
                                <h5 style="text-align: left;"><b>Sobre a imagem, responda:</b></h5>
                                <br>
                                <p style="text-align: justify;">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat?</p>
                                <br>

                                <form>
                                    <div class="radio">
                                        <label><input type="radio" name="resposta" value="resp1"> Resposta1</label>
                                    </div>
                                    <div class="radio">
                                        <label><input type="radio" name="resposta" value="resp2"> Resposta2</label>
                                    </div>
                                    <div class="radio">
                                        <label><input type="radio" name="resposta" value="resp3"> Resposta3</label>
                                    </div>
                                    <div class="radio">
                                        <label><input type="radio" name="resposta" value="resp4"> Resposta4</label>
                                    </div>
                                </form> 

                            </div>
                             <div class="col-sm-6">
                                <img src="imgs\proc.jpg" alt="Proclamação da República" class="thumbnail img-responsive">
                                <div class="caption">
                                    <h3 style=" text-align: center;">Proclamação da República</h3>
                                    <p hidden="true" >Proclamação da República</p>
                                </div>
                            </div>
                        </div>


                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-primary" style=" background-color:#195E63;">
                            Confira a resposta
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
