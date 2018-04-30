<?php require_once("conexao.php"); ?>
<?php require_once("funcoes_email.php"); ?>
<?php 
    if ( isset($_POST['enviar']) ){
        if ( enviarMensagem($_POST) ) {
            $mensagem = "Mensagem enviada com sucesso.";
        } else {
            $mensagem = "Mensagem Falho :(";
        }
    }
?>


<!doctype html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="keywords" content="Reciclagem de lixo eletronico, e-lixo, ponto de reciclagem, descarte de lixo eletronico">
        <title>Fatec Recicla</title>
        <link rel="stylesheet" href="CSS/style.css">

    
    </head>

    <body>
        <main>
            <header>
            <!-- Header Adcionar uma imagem futuramente -->
            </header>
            <!--Menu-->
            <nav>
                <a href="home_t.html">Home</a> 
                <a href="inicial/aboutus.html">Sobre Nós</a>
                <a href="inicial/menu.html">Tipos de Materiais</a> 
                <a href="contato.php">Contato</a>
            </nav>

<!-- Sessão 1 combo com banco de dados -->
            
<section class="conteudo">
    <!-- combos do select + banco -->
     <div id="janela_formulario">
                <form action="contato.php" method="post">
                    <input type="text" name="nome" placeholder="Digite seu nome">
                    <input type="email" name="email" placeholder="Digite seu email">
                    <label>Mensagem</label>
                    <textarea name="mensagem"></textarea>
                    <input type="submit" name="enviar" value="Enviar Mensagem">
                    
                    <?php
                        if ($_POST)
                            echo "<p>Mensagem enviada com sucesso.</p>";
                    ?>                     
                </form>
            </div>
    
</section>
            
           <!-- Sessão 2  de apoio lateral --> 
<section class="apoio">
    
</section>

            <footer>
            &copy; Fatec Recicla. Todos os direitos reservados.
            </footer>
        </main>
    </body>
</html>