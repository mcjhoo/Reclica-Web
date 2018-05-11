<?php 
require_once("conexao.php");
    
$dados_empresa = $pdo->query('SELECT cd_empresa, nome_empresa, endereco_empresa, horario_funcionamento, maps_empresa  from empresa where cd_empresa= ' .$_GET['CmbEmpresa']);
//fetch transforma o objeto pdo->query em um array
$dados_empresa = $dados_empresa->fetch();

//chama a pagina mapa.html
$pagina=file_get_contents('mapa.html');

//"[$dados_empresa ['nome_empresa']" puxa do banco lembrar que tem q estar igual o do banco!

$pagina=str_replace(['{{NOMEEMPRESA}}', '{{ENDERECOEMPRESA}}', '{{HORAFUNCIONAMENTO}}', '{{TIPOMATERIAL}}', '{{IFRAME}}'], [$dados_empresa ['nome_empresa'], $dados_empresa ['endereco_empresa'], $dados_empresa ['horario_funcionamento'], null, $dados_empresa ['maps_empresa']], $pagina); 

//nao precisa colocar a variavel para para declarar "null" apenas coloque null na posição que deseja no caso acima "4"


echo $pagina;
?>