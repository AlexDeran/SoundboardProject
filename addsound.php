<?php

session_start();
//DB login

$pdo =new PDO('mysql:host=localhost; dbname=sbp; charset=utf8','root','');

if(!$pdo){
    echo "Erreur de connexion à la base de données.";
}


$error="Le nom  et/ou le son existe(nt) déja.";
	 if(isset($_POST['nom']) && !empty($_POST['nom']) && isset($_FILES['snd']) && !empty($_FILES['snd'])):
	$nom = htmlspecialchars($_POST['nom']);
	$snd = ($_FILES['snd']['name']);
 	$verifsnd = $pdo->prepare("SELECT COUNT(*) FROM sound WHERE Nom = :nom OR Son = :snd");
 	$verifsnd->bindParam(':nom',$nom,PDO::PARAM_STR);
 	$verifsnd->bindParam(':snd',$snd,PDO::PARAM_STR);
 	$verifsnd->execute();
	$result = $verifsnd->fetchColumn();
	
   if($result > 0){
     $resultat=$error;
 				}
				
 		else{
 		$addsnd = $pdo->prepare("INSERT INTO `sound` (`Nom`,`Son`) VALUES (:nom, :snd)");
 		$addsnd->bindParam(':nom',$nom,PDO::PARAM_STR);
 		$addsnd->bindParam(':snd',$snd,PDO::PARAM_STR);
 		$addsnd->execute();
		}

	header("Location:index.php");
endif;
?>