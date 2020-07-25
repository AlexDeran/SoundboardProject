<?php

session_start();
//DB login

$pdo =new PDO('mysql:host=localhost; dbname=sbp; charset=utf8','root','');

if(!$pdo){
    echo "Erreur de connexion à la base de données.";
}

$error="Le nom  et/ou le son existe(nt) déja.";

if(isset($_POST['supprsnd']) && !empty($_POST['supprsnd'])){
	$nomduson = $_POST['supprsnd'];
 	$supprsnd = $pdo->prepare("DELETE FROM `soundfr` WHERE Nom = :nom ");
 	$supprsnd->bindParam(':nom',$nomduson,PDO::PARAM_STR);
	$supprsnd->execute();
}

elseif(isset($_POST['supprsndw']) && !empty($_POST['supprsndw'])){
	$nomduson = $_POST['supprsndw'];
 	$supprsnd = $pdo->prepare("DELETE FROM `soundw` WHERE Nom = :nom ");
 	$supprsnd->bindParam(':nom',$nomduson,PDO::PARAM_STR);
	$supprsnd->execute();
};

	header("Location:index.php");

?>