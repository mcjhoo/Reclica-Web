<?php
require_once("conexao.php"); // conexão com o banco
 
$cidade=''; // inicializa a variável UF
 
// para cada linha, concatena um novo "<option>" na variável $uf
foreach($pdo->query('SELECT cd_cidade, nome_cidade FROM cidade order by nome_cidade') as $row){
    $cidade.='<option value="'.$row['cd_cidade'].'">'.$row['nome_cidade'].'</option>';
}
 
// carrega a página HTML
$pagina=file_get_contents('home_t.html');
 
/*
 * Essa etapa poderia ser mesclada com a substituição de cidades (exemplo abaixo, antes do ECHO final)
 */
// substitui o {{UF}} da página com os <options>
$pagina=str_replace('{{combocidade}}', $cidade, $pagina);






// imprime a página pro usuário
echo $pagina;