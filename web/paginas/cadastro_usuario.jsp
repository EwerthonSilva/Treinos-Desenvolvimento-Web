<div class='page-header text-center'>
    <h1>Formulário de Cadastro <small> de Usuário</small></h1>
</div>

<div class="container">

                                            <!-- indica a classe servlet que foi criada-->
    <form class="form-horizontal" method="post" action="CadUser">
        <fieldset>

            <!-- Form Name -->
            <legend>Digite seus Dados</legend>

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

            <!-- Text input-->
            <div class="form-group">
                <label class="col-md-4 control-label" for="data">Data de Nascimento:</label>  
                <div class="col-md-4">  
                    <input id="data" name="data" placeholder="Digite sua data de nascimento" class="form-control input-md" required="" type="date">

                </div>
            </div>

            <!-- Password input-->
            <div class="form-group">
                <label class="col-md-4 control-label" for="senha1">Senha:</label>
                <div class="col-md-4">
                    <input id="senha1" name="senha1" placeholder="Crie uma senha" class="form-control input-md" required="" type="password" pattern="^.{6,10}$" title="A senha deve possuir entre 6 e 10 dígitos" oninput="validaSenha(this, senha2)">

                </div>
            </div>

            <!-- Password input-->
            <div class="form-group">
                <label class="col-md-4 control-label" for="senha2">Repetição de Senha:</label>
                <div class="col-md-4">
                    <input id="senha2" name="senha2" placeholder="Repita sua senha" class="form-control input-md" required="" type="password" pattern="^.{6,10}$" title="A senha deve possuir entre 6 e 10 dígitos" oninput="validaSenha(senha1, this)">

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