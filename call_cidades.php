<?php           
    if (isset($_SERVER["HTTP_X_REQUESTED_WITH"]) && $_SERVER["HTTP_X_REQUESTED_WITH"] === "XMLHttpRequest"){        
        include 'conexao.php';
        $cd_cidade = filter_input(INPUT_GET, 'cd_cidade', FILTER_SANITIZE_NUMBER_INT);
        if ($cd_cidade){
            $query = $pdo->prepare('SELECT cd_bairro as value, nome_bairro as label 
			                                      FROM bairro where cd_cidade=? 
												  ORDER BY nome_bairro');
																				  
									  
            $query->bindParam(1, $cd_cidade, PDO::PARAM_INT);
            $query->execute();          
            echo json_encode($query->fetchAll());
            return;
        }       
    }
    echo NULL;
	
	