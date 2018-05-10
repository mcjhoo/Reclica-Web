<?php require_once("conexao.php"); ?>
<?php require_once("funcao_email.php"); ?>
<?php 
    if ( isset($_POST['enviar']) ){
        if ( enviarMensagem($_POST) ) {
            $mensagem = "Mensagem enviada com sucesso.";
        } else {
            $mensagem = "Mensagem Falho";
        }
    }
?> 

<!doctype html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="keywords" content="Reciclagem de lixo eletronico, e-lixo, ponto de reciclagem, descarte de lixo eletronico">
        <title>Fatec e-descarte</title>
        <link rel="stylesheet" href="CSS/style.css">
        <!-- <link rel="stylesheet" href="CSS/contato.css"> -->
    
    </head>

    <body>
        <main>
            <header>
                <img src="imagens/header_principal.jpg">
            </header>
            <!--Menu-->
            <nav>
                <a href="home_2.php">Home</a> 
                <a href="sobre.html">Sobre Nós</a>
                <a href="tipo_materiais.html">Tipos de Materiais</a> 
                <a href="contato.php">Contato</a>
            </nav>

<!-- Sessão 1 combo com banco de dados -->
            
<section class="conteudo">
    <!-- combos do select + banco -->
     <div id="janela_formulario">
         <p class="formcontato">Duvidas? Sugestões? Não encontrou oque desejava?</p>
         <p class="formcontato">Envie-nos uma mensagem que lhe retornaremos em breve.</p>
         <form action="contato.php" method="post">
                    <label>Nome</label>
                    <input type="text" name="nome" placeholder="Digite seu nome"><br>
                    <label>E-mail</label>
                    <input type="email" name="email" placeholder="Digite seu email"><br>
                    <label>Mensagem</label><br>
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
    <img src="imagens/informativo.PNG">
    <h2 class="justificado">Competição coleta lixo de eletrônico</h2>
    <p class="justificado">Gincana reúne 70 escolas públicas e particulares da capital. No fim do mês, durante um festival, os vencedores serão anunciados. Confira a reportada da globo <a href="https://globoplay.globo.com/v/6694885/"><b>aqui</b></a></p>
</section>

            <footer>
            &copy; Fatec e-descarte. Todos os direitos reservados.
            </footer>
        </main>
    </body>
</html>