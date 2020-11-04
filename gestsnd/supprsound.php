<?php

//DB login

$pdo =new PDO('mysql:host=localhost; dbname=sbp; charset=utf8','root','');

if(!$pdo){
    echo "Erreur de connexion à la base de données.";
}


$error=`<i class="fas fa-exclamation-circle"></i> Une erreur est survenue ! Aucun son n'a été supprimé !` ;
$success='<i class="fas fa-check"></i> Le son '.$_POST['supprsnd'].' a été supprimé avec succès !';
$successw='<i class="fas fa-check"></i> Le son '.$_POST['supprsndw'].' a été supprimé avec succès !';
$successwtc='<i class="fas fa-check"></i> Le son '.$_POST['supprsndwtc'].' a été supprimé avec succès !';
$successjd='<i class="fas fa-check"></i> Le son '.$_POST['supprsndjd'].' a été supprimé avec succès !';
$successinc='<i class="fas fa-check"></i> Le son '.$_POST['supprsndinc'].' a été supprimé avec succès !';
$successmv='<i class="fas fa-check"></i> Le son '.$_POST['supprsndmv'].' a été supprimé avec succès !';

if(isset($_POST['supprsnd']) && !empty($_POST['supprsnd'])){
	$nomduson = $_POST['supprsnd'];
 	$supprsnd = $pdo->prepare("DELETE FROM `soundfr` WHERE Nom = :nom ");
 	$supprsnd->bindParam(':nom',$nomduson,PDO::PARAM_STR);
	$supprsnd->execute();
	echo('<div class="alert alert-success alert-dismissible fixed-top fade show container-fluid" role="alert">
					' .$success. ' 
					<button type="button" class="close" data-dismiss="alert" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>');
}

elseif(isset($_POST['supprsndw']) && !empty($_POST['supprsndw'])){
	$nomduson = $_POST['supprsndw'];
 	$supprsnd = $pdo->prepare("DELETE FROM `soundw` WHERE Nom = :nom ");
 	$supprsnd->bindParam(':nom',$nomduson,PDO::PARAM_STR);
	$supprsnd->execute();
	echo('<div class="alert alert-success alert-dismissible fixed-top fade show container-fluid" role="alert">
					' .$successw. ' 
					<button type="button" class="close" data-dismiss="alert" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>');
}

elseif(isset($_POST['supprsndwtc']) && !empty($_POST['supprsndwtc'])){
	$nomduson = $_POST['supprsndwtc'];
 	$supprsnd = $pdo->prepare("DELETE FROM `wtc` WHERE Nom = :nom ");
 	$supprsnd->bindParam(':nom',$nomduson,PDO::PARAM_STR);
	$supprsnd->execute();
	echo('<div class="alert alert-success alert-dismissible fixed-top fade show container-fluid" role="alert">
					' .$successwtc. ' 
					<button type="button" class="close" data-dismiss="alert" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>');
}

elseif(isset($_POST['supprsndmv']) && !empty($_POST['supprsndmv'])){
	$nomduson = $_POST['supprsndmv'];
 	$supprsnd = $pdo->prepare("DELETE FROM `mv` WHERE Nom = :nom ");
 	$supprsnd->bindParam(':nom',$nomduson,PDO::PARAM_STR);
	$supprsnd->execute();
	echo('<div class="alert alert-success alert-dismissible fixed-top fade show container-fluid" role="alert">
					' .$successmv. ' 
					<button type="button" class="close" data-dismiss="alert" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>');
}

elseif(isset($_POST['supprsndjd']) && !empty($_POST['supprsndjd'])){
	$nomduson = $_POST['supprsndjd'];
 	$supprsnd = $pdo->prepare("DELETE FROM `jday` WHERE Nom = :nom ");
 	$supprsnd->bindParam(':nom',$nomduson,PDO::PARAM_STR);
	$supprsnd->execute();
	echo('<div class="alert alert-success alert-dismissible fixed-top fade show container-fluid" role="alert">
					' .$successjd. ' 
					<button type="button" class="close" data-dismiss="alert" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>');
}

elseif(isset($_POST['supprsndinc']) && !empty($_POST['supprsndinc'])){
	$nomduson = $_POST['supprsndinc'];
 	$supprsnd = $pdo->prepare("DELETE FROM `inconnus` WHERE Nom = :nom ");
 	$supprsnd->bindParam(':nom',$nomduson,PDO::PARAM_STR);
	$supprsnd->execute();
	echo('<div class="alert alert-success alert-dismissible fixed-top fade show container-fluid" role="alert">
					' .$successinc. ' 
					<button type="button" class="close" data-dismiss="alert" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>');
}


else{
echo('<div class="alert alert-success alert-dismissible fixed-top fade show container-fluid" role="alert">
					' .$error. ' 
					<button type="button" class="close" data-dismiss="alert" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>');
}

?>