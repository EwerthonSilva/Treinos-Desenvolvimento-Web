// listener para ser acionado quando tentar enviar um formulário
$('body').on('submit', 'form', function (e) {
    
    //armazena o id do formulario dentro da variável $form
    $form = $(this);//o $(this) contem o id a qual esta associado
    
    //verifica se o formulario é ajax
    if($form.attr("data-ajax")=="1") {
        
        // trava o botao submit com a mensagem loading
        $form.find(":submit").button('loading');
        
        //impede o redirecionamento de página do form tradicional
        e.preventDefault();
        
        //faz a requisição ajax
        $.ajax({
            
            //metodo de envio
            type: $form.attr('method'),
                      //atributo
            
            //recupera a propriedade action do form
            url:  $form.attr('action'),
            
            //a função serialize empacota os imputs para serem enviadas
            data: $form.serialize(),
            
            //impede que o navegador crie um cache
            cache: false,
            
            //success ocorre se houver um feedback do servidor
            success: function (data) {
                
                //converte string de resposta em json
                var json = $.parseJSON(data);
                //alert(json.msg);
                // 
                //mostra a mensagem de alerta
                alerta(json.success, json.msg, $($form.attr("data-saida")));
                
                //restaura a propriedade padrão do botão
                $form.find(":submit").button('reset');

                //reseta o formulario (deixo-o em branco)
                $form[0].reset();
            },
            error: function (data) {
                alerta(false, "Erro ao comunicar-se com o servidor.", $($form.attr("data-saida")));
                $form[0].reset();
            }
        });
    }
});
