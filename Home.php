<?php 
    require_once("conexao.php");
?>

<!doctype html>
<html>
    <head>
        <meta charset="utf-8">
        <title>Curso de CSS</title>
        <script src="js/jquery-1.11.0.min.js" type="text/javascript"></script>
        <!--https://code.google.com/p/jquery-cascade/-->
        <script src="js/jquery.cascade-select.js" type="text/javascript"></script>
        <link rel="stylesheet" href="CSS/style.css">
    
    </head>
<style>
    header {
    width:960px;
    height:200px;
    background-color:rgb(255,127,0);
    background-color:rgb(12,4,1);
    background-image: url(header_principal.png);
    background-repeat:no-repeat;		
}
</style>
    <body>
        <main>
            <header></header>
            <nav>
                <a href="inicial/index.html">Home</a> 
                <a href="inicial/aboutus.html">Sobre Nós</a>
                <a href="inicial/menu.html">Tipos de Materiais</a> 
                <a href="inicial/specialevents.html">Contato</a>
                <a href="inicial/dvd.html">DVD</a>

            </nav>
            
<section class="conteudo">
    
    <select id="CmbUF"> 
        <option value="">Selecione a UF</option>
        <?php
            foreach($pdo->query('SELECT cd_cidade, nome_cidade FROM cidade order by nome_cidade') as $row){
                echo '<option value="'.$row['cd_cidade'].'">'.$row['nome_cidade'].'</option>';
            }       
        ?>
    </select>
</section>
            <section class="apoio"></section>

            <footer></footer>
        </main>
    </body>
</html>
