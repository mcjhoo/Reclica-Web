<?php
if (!empty($_GET['CmbCidade']) && !empty($_GET['CmbBairro']) && !empty($_GET['CmbEmpresa'])){
    header('location:mapa.php?CmbEmpresa=' .$_GET['CmbEmpresa']); 

}

require_once("conexao.php"); // conexão com o banco
 
$cidade=''; // inicializa a variável UF
$bairro='';
$empresa='';
// para cada linha, concatena um novo "<option>" na variável $uf


foreach($pdo->query('SELECT cd_cidade, nome_cidade FROM cidade order by nome_cidade') as $row){
    if (!empty($_GET['CmbCidade']) && $_GET['CmbCidade'] == $row['cd_cidade'])  {
        $cidade .= '<option value="'.$row['cd_cidade'].'" selected>'.$row['nome_cidade'].'
</option>';
    } else {
        $cidade .='<option value="'.$row['cd_cidade'].'">'.$row['nome_cidade'].'</option>';
    }
}
 
// carrega a página HTML
$pagina=file_get_contents('home_t.html');
 

// Essa etapa poderia ser mesclada com a substituição de cidades (exemplo abaixo, antes do ECHO final)


if (!empty($_GET['CmbCidade'])) {
    foreach($pdo->query('SELECT cd_bairro, nome_bairro FROM bairro WHERE cd_cidade = '.$_GET['CmbCidade'].' order by nome_bairro') as $row){
            $bairro .='<option value="'.$row['cd_bairro'].'" selected>'.$row['nome_bairro'].'</option>';
    }
}

if (!empty($_GET['CmbCidade']) && !empty($_GET['CmbBairro'])){
   foreach($pdo->query('SELECT cd_empresa, nome_empresa FROM empresa WHERE cd_bairro = '.$_GET['CmbBairro'].' order by nome_empresa') as $row){
    $empresa .='<option value="'.$row['cd_empresa'].'">'.$row['nome_empresa'].'</option>';
    }
    
}
    
    
$pagina=str_replace(['{{combocidade}}', '{{combobairro}}', '{{comboempresa}}'], [$cidade, $bairro, $empresa], $pagina);

// imprime a página pro usuário
echo $pagina;