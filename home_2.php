<?php
require_once("conexao.php"); // conexão com o banco
 
$cidade=''; // inicializa a variável UF
$bairro='';
$empresa='';
// para cada linha, concatena um novo "<option>" na variável $uf

foreach($pdo->query('SELECT cd_cidade, nome_cidade FROM cidade order by nome_cidade') as $row){
    $cidade .='<option value="'.$row['cd_cidade'].'">'.$row['nome_cidade'].'</option>';
}
 
// carrega a página HTML
$pagina=file_get_contents('home_t.html');

// substitui o PID cidade
$pagina=str_replace('{{combocidade}}', $cidade, $pagina);

// imprime a página pro usuário
echo $pagina;