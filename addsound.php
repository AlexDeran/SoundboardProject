<?php

session_start();
//DB login

$pdo =new PDO('mysql:host=localhost; dbname=sbp; charset=utf8','root','');

if(!$pdo){
    echo "Erreur de connexion à la base de données.";
}

$error="Le nom  et/ou le son existe(nt) déja.";
	if(isset($_POST['nom']) && !empty($_POST['nom']) && isset($_POST['catsnd']) && !empty($_POST['catsnd']) && isset($_FILES['snd']) && !empty($_FILES['snd'])){
	$nom = htmlspecialchars($_POST['nom']);
	$snd = ($_FILES['snd']['name']);
	$catsnd = ($_POST['catsnd']);
	if($catsnd == 'Son FR'){
		$verifsnd = $pdo->prepare("SELECT COUNT(*) FROM soundfr WHERE Nom = :nom OR Son = :snd");
		$verifsnd->bindParam(':nom',$nom,PDO::PARAM_STR);
		$verifsnd->bindParam(':snd',$snd,PDO::PARAM_STR);
		$verifsnd->execute();
		
		$result = $verifsnd->fetchColumn();
			if($result > 0){
				$resultat=$error;
						}
						
				else{
				$uploaddir = 'SBP/SFR/';
				$movefile = move_uploaded_file($_FILES['snd']['tmp_name'], $uploaddir . basename($_FILES['snd']['name']));
				$addsnd = $pdo->prepare("INSERT INTO `soundfr` (`Nom`,`Son`) VALUES (:nom, :snd)");
				$addsnd->bindParam(':nom',$nom,PDO::PARAM_STR);
				$addsnd->bindParam(':snd',$snd,PDO::PARAM_STR);
				$addsnd->execute();
				}
		header("Location:index.php");
			}
	else{
		$verifsndw = $pdo->prepare("SELECT COUNT(*) FROM soundw WHERE Nom = :nom OR Son = :snd");
		$verifsndw->bindParam(':nom',$nom,PDO::PARAM_STR);
		$verifsndw->bindParam(':snd',$snd,PDO::PARAM_STR);
		$verifsndw->execute();
		$resultw = $verifsndw->fetchColumn();
			if($resultw > 0){
				$resultatw=$error;
						}
						
				else{
				$uploaddir = 'SBP/SWLD/';
				$addsndw = $pdo->prepare("INSERT INTO `soundw` (`Nom`,`Son`) VALUES (:nom, :snd)");
				$movefile = move_uploaded_file($_FILES['snd']['tmp_name'], $uploaddir . basename($_FILES['snd']['name']));
				$addsndw->bindParam(':nom',$nom,PDO::PARAM_STR);
				$addsndw->bindParam(':snd',$snd,PDO::PARAM_STR);
				$addsndw->execute();
				}
				
		header("Location:index.php");
			};
};


?>