<?php
    $pdo = new PDO('mysql:dbname=recicla_web;host=localhost', 'root', 'vertrigo', 
                    array(PDO::MYSQL_ATTR_INIT_COMMAND => "SET NAMES 'utf8'"));
?>