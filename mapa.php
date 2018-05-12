<?php
/*
 * Fluxo deste script:
 * carrega conexao.php > consulta empresa selecionada > consulta e processa materiais > carrega mapa.html > substitui os PIDS > exibe página
 */

// carrega conexao
require_once ('conexao.php');

// consulta empresa selecionada
$dados_empresa = $pdo->query('select cd_empresa, nome_empresa, endereco_empresa, horario_funcionamento, maps_empresa from empresa where cd_empresa='.$_GET['CmbEmpresa']);
$dados_empresa = $dados_empresa->fetch(); // transforma o PDOStatement em array associativo. Agora sim podemos usar ele :)

/*
 * Agora consulta a tabela material em busca dos materiais aceitos pela empresa.
 * A tabela possui os materiais separados em linhas (ocorrências), assim será necessário processar
 *  cada linha antes de exibir. Primeiro, consulta os materiais. Para cada resultado, armazena o nome_material
 *  num array. Por fim, na substituição, mescla-se os elementos do array usando vírgula.
 *
 */
$materiais=[];
foreach ($pdo->query('select nome_material from material where cd_empresa='.$_GET['CmbEmpresa']) as $linha_material) {
    $materiais[]=$linha_material['nome_material'];
}

// carrega a página
$pagina = file_get_contents('mapa.html');

// substitui os PIDs
// NOTE: mesclagem dos elementos do array $materiais usando vírgula
$pagina = str_replace(['{{NOMEEMPRESA}}', '{{ENDERECOEMPRESA}}', '{{HORAFUNCIONAMENTO}}', '{{TIPOMATERIAL}}', '{{IFRAME}}'], [$dados_empresa['nome_empresa'], $dados_empresa['endereco_empresa'], $dados_empresa['horario_funcionamento'], implode(', ', $materiais), $dados_empresa['maps_empresa']], $pagina);

// exibe a página
echo $pagina;