<?php
require_once ('conexao.php');

// cidade selecionada: consulta bairros
if (!empty($_GET['cidade'])) {
    $bairros=[];
    foreach ($pdo->query('select cd_bairro, nome_bairro from bairro where cd_cidade='.$_GET['cidade']) as $row) {
        $bairros[]=['id'=>$row['cd_bairro'], 'descr'=>$row['nome_bairro']];
    }
    return json_encode($bairros);
} else if (!empty($_GET['bairro'])) { // bairro selecionado: consulta empresas
    $empresas=[];
    foreach ($pdo->query('select cd_empresa, nome_empresa from empresa where cd_bairro='.$_GET['bairro']) as $row) {
        $empresas[]=['id'=>$row['cd_empresa'], 'descr'=>$row['nome_empresa']];
    }
    return json_encode($empresas);
} else
    return null;