<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Galeria</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width">

        <link rel="stylesheet" href="style.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
      
        <!--por algum motivo o css e js do bootstrap local não tava funcionando bem com o modal-->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap-theme.min.css">
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
    </head>
    
    <body style="padding-top: 70px;">
        <!--navebar-->
        <div class="row">
            <nav class="navbar navbar-default navbar-fixed-top">
                <div class="container">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                        <a class="navbar-brand" href="#">Museu da Política Brasileira</a>
                    </div>
                    <div id="navbar" class="navbar-collapse collapse">
                        <ul class="nav navbar-nav">
                            <li class="active"><a href="#/main">Home</a></li>
                            <li><a href="#/sobreMuseu">Museu</a></li>
                            <li class="dropdown">
                                <a href="#/desafios" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Desafios<span class="caret"></span></a>
                                <ul class="dropdown-menu">
                                    <li><a href="#">Associe as Imagens</a></li>
                                    <li><a href="#">Teste seu Entendimento</a></li>
                                </ul>
                            </li>
                            <li><a href="#/sobreMuseu">Perguntas</a></li>
                            <li><a href="#/sobreMuseu">Sobre Nós</a></li>
                        </ul>
                    </div>
                </div>
            </nav>

        </div>
        <div class="row">
            <div class="container">
                <div class="row">
                    <h2>Galeria</h2>
                    <div class="row">
                        <div class="col-lg-3 col-sm-4 col-xs-6">
                            <a title="Proclamação da República" href="#">
                                <img class="thumbnail img-responsive" src="imgs/proc.jpg">
                            </a>
                            <!--p/ exemplo de descricao-->
                            <p>Mussum ipsum cacilds, vidis litro abertis. Consetis adipiscings elitis. Pra lá , depois divoltis porris, paradis. Paisis, filhis, espiritis santis. Mé faiz elementum girarzis, nisi eros vermeio, in elementis mé pra quem é amistosis quis leo. Manduma pindureta quium dia nois paga. Sapien in monti palavris qui num significa nadis i pareci latim. Interessantiss quisso pudia ce receita de bolis, mais bolis eu num gostis.</p>
                        </div>       
                    </div>
                </div>
            </div>
        </div>

        <!-- Modal -->
        <div id="myModal" class="modal fade" role="dialog">
            <div class="modal-dialog">
                
                <div class="modal-content">
                    <div class="modal-header" style=" background-color:#8EBDB6">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <h4 class="modal-title">Modal Header</h4>
                    </div>
                    <div class="modal-body">
                    </div>
                </div>
            </div>
            <div class="modal-footer">

            </div>
        </div>

    </div>
</div>
<script>
    $('.thumbnail').click(function () {
        $('.modal-body').empty();
        var title = $(this).parent('a').attr("title");
        $('.modal-title').html(title);
        var describ = $(this).parent('p');
        $('.modal-body').html(describ);
        $($(this).parents('div').html()).appendTo('.modal-body');
        $('#myModal').modal({show: true});
    });
</script>
</body>
</html>