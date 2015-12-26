<div class='page-header text-center'>
    <h1>Formulário de Cadastro <small> de Newsletter</small></h1>
</div>

<div class="container">


    <form class="form-horizontal" method="post" action="CadNewsletter" data-ajax="1" data-saida="#box_alertas">
        <fieldset>

            <!-- Form Name -->
            <legend>CADASTRO NA NEWSLETTER</legend>

            <!-- Text input-->
            <div class="form-group">
                <label class="col-md-4 control-label" for="nome">Nome:</label>  
                <div class="col-md-4">
                    <input id="nome" name="nome" placeholder="Digite seu nome" class="form-control input-md" required="" type="text">

                </div>
            </div>

            <!-- Text input-->
            <div class="form-group">
                <label class="col-md-4 control-label" for="email">E-Mail:</label>  
                <div class="col-md-4">
                    <input id="email" name="email" placeholder="Digite seu E-Mail" class="form-control input-md" required="" type="email">

                </div>
            </div>
            <!-- Button (Double) -->
            <div class="form-group">
                <label class="col-md-4 control-label" for=""></label>
                <div class="col-md-8">
                    <button id="" name="" class="btn btn-warning" type="reset">Limpar</button>
                    <button id="" name="" class="btn btn-primary" type="submit">Enviar</button>
                </div>
            </div>

        </fieldset>
    </form>

</div>