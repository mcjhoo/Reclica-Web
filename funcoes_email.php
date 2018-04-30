<?php 
    function enviarMensagem($dados) {
        // dados do formularios
        $nome_usuario       =$dados['nome'];
        $email_usuario      =$dados['email'];
        $mensagem_usuario   =$dados['mensagem'];
        
        // Variaeis de envio
        $destino        = "jhonatansilva95@hotmail.com";
        $remetente      = "From:jhonatan@hotmail.com";
        $assunto        = "Mensagem do Site";
        
        // Mensagem
        $mensagem       = "O usuario ". $nome_usuario . "enviou uma mensagem." . "</br>";
        $mensagem       .= "email do usuario: " . $email_usuario . "</br>";
        $mensagem       .= "mensagem: " . "</br>";
        $mensagem       .= $mensagem_usuario;
        
        return mail($destino, $assunto, $mensagem, $remetente);
    }

?>
