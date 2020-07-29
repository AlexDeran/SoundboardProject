<?php

$pdo =new PDO('mysql:host=localhost; dbname=sbp; charset=utf8','root','');

if(!$pdo){
		echo "Erreur de connexion à la base de données.";
}


$pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

$stmt = $pdo->prepare("SELECT * FROM `soundfr` WHERE `Nom` LIKE ? OR `keywords` LIKE ? ");
$stmt->execute([
	"%" . $_POST['search'] . "%",
	"%" . $_POST['search'] . "%"
]);

$resultsfr = $stmt->fetchAll();

$stmtw = $pdo->prepare("SELECT * FROM `soundw` WHERE `Nom` LIKE ? OR `keywords` LIKE ? ");
$stmtw->execute([
	"%" . $_POST['search'] . "%",
	"%" . $_POST['search'] . "%"
]);

$resultsw = $stmtw->fetchAll();

$stmtwtc = $pdo->prepare("SELECT * FROM `wtc` WHERE `Nom` LIKE ? OR `keywords` LIKE ? ");
$stmtwtc->execute([
	"%" . $_POST['search'] . "%",
	"%" . $_POST['search'] . "%"
]);

$resultswtc = $stmtwtc->fetchAll();

?>