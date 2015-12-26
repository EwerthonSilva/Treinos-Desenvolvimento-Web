<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
        <title>Bootstrap 101 Template</title>
        <!-- Bootstrap -->
        <link href="css/bootstrap.css" rel="stylesheet">
        <link href="css/estilos.css" rel="stylesheet">
        <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
          <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->
    </head>
    <body>

        <div class="banner">
            <div class="container">
                <div class="col-md-2 col-sm-4 col-xs-12">
                    <div class="glyphicon glyphicon-camera icone-banner"></div>
                </div>
                <div class="col-md-10 col-sm-8 col-xs-12">
                    <h1>Bootstrap 3</h1>
                    <p>Framework CSS3 and HTML5</p>
                </div>    
            </div>
        </div>
        
        <nav class="navbar navbar-default navbar-static-top">
            <div class="container-fluid">
                <!-- Brand and toggle get grouped for better mobile display -->
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="#">Bootstrap 3</a>
                </div>

                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                    <ul class="nav navbar-nav">
                        <li class="active"><a id="link_inicial" href="#link_inicial" data-url="paginas/inicial.jsp">Home</a></li>
                        <li><a id="link1" href="#link1" data-url="paginas/link1.jsp">Link1</a></li>
                        <li><a id="link2" href="#link2" data-url="paginas/link2.jsp">Link2</a></li>
                        <li><a id="link3" href="#link3" data-url="paginas/link3.jsp">Link3</a></li>
                        
                    </ul>

                    <ul class="nav navbar-nav navbar-right">
                        <li><a id="link4" href="#link4" data-url="paginas/cadNewsletter.jsp">Cadastro NewsLetter</a></li>
                        <li><a id="link_cadastro_usuario" href="#link_cadastro_usuario" data-url="paginas/cadastro_usuario.jsp">Cadastre-se</a></li>
                        <li><a id="link_sobre" href="#link_sobre" data-url="paginas/sobre.jsp">Sobre</a></li>
                        
                    </ul>
                </div><!-- /.navbar-collapse -->
            </div><!-- /.container-fluid -->
        </nav>

        <div class="container-fluid">
            <div class="row">
                <div class="col-xs-12" id="conteudo">

                    <!-- Div do conteúdo principal -->
                    <jsp:include page="paginas/inicial.jsp" />

                    <!-- fim da Div do conteúdo principal -->
                </div>
            </div>
            <div class="row">
                <div class="col-xs-12 well text-center text-muted">
                    <!-- Div do rodapé -->
                    Copyright &copy; 2015. All Rights Reserved. 

                </div>
            </div>
        </div>    


        <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
        <script src="js/jquery-2.1.3.js"></script>
        <!-- Include all compiled plugins (below), or include individual files as needed -->
        <script src="js/bootstrap.js"></script>
        <!-- funções personalizadas do site -->
        <script src="js/funcoes_home.js"></script>
    </body>
</html>