<?php

session_start();
//DB login

$pdo =new PDO('mysql:host=localhost; dbname=sbp; charset=utf8','root','');

if(!$pdo){
    echo "Erreur de connexion à la base de données.";
}

$error="Le nom  et/ou le son existe(nt) déja.";
	 if(isset($_POST['supprsnd']) && !empty($_POST['supprsnd'])):

		$nomduson = $_POST['supprsnd'];
		
 		$supprsnd = $pdo->prepare("DELETE FROM `sound` WHERE Nom = :nom ");
 		$supprsnd->bindParam(':nom',$nomduson,PDO::PARAM_STR);
		$supprsnd->execute();
endif;

	header("Location:index.php");

?>