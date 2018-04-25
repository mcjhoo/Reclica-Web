<?php 
    //Passo 1 - abrir conexão
    $conecta = mysqli_connect("localhost","root","","recicla_web");
    
    //Passo 2 - Testar conexão
    if (mysqli_connect_errno() ){
        die("Conexão falhou: " . mysqli_connect_errno());
    }
?>