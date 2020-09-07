<?php
session_start();
//DB login

$pdo =new PDO('mysql:host=localhost; dbname=sbp; charset=utf8','root','');

if(!$pdo){
		echo "Erreur de connexion à la base de données.";
}

$pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

 if(isset($_POST['nom'])){
	require "addsound.php";
	}

if(isset($_POST['supprsnd']) || isset($_POST['supprsndw'])){
	require "supprsound.php";
}

$onlynom = $pdo->query('SELECT Nom  FROM soundfr');

		if($onlynom):
				$lesnom = $onlynom->fetchAll(PDO::FETCH_ASSOC);

		else:
				$lesnom = false;
		endif;

$nomw = $pdo->query('SELECT Nom, Son FROM soundw');

		if($nomw):
				$lenomw = $nomw->fetchAll(PDO::FETCH_ASSOC);

		else:
				$lenomw = false;
		endif;

$onlynomw = $pdo->query('SELECT Nom FROM soundw');

		if($onlynomw):
				$lesnomw = $onlynomw->fetchAll(PDO::FETCH_ASSOC);

		else:
				$lesnomw = false;
		endif;

$nomwtc = $pdo->query('SELECT Nom, Son FROM wtc');

		if($nomwtc):
				$lenomwtc = $nomwtc->fetchAll(PDO::FETCH_ASSOC);

		else:
				$lenomwtc = false;
		endif;

$onlynomwtc = $pdo->query('SELECT Nom FROM wtc');

		if($onlynomwtc):
				$lesnomwtc = $onlynomwtc->fetchAll(PDO::FETCH_ASSOC);

		else:
				$lesnomwtc = false;
		endif;

$nomjday = $pdo->query('SELECT Nom, Son FROM jday ORDER BY Nom ASC');

		if($nomjday):
				$lenomjday = $nomjday->fetchAll(PDO::FETCH_ASSOC);

		else:
				$lenomjday = false;
		endif;		


$keywordsfr = $pdo->query('SELECT Nom FROM keywrds WHERE Appartenance = "FR" ORDER BY Nom ASC');
		if($keywordsfr):
				$keywrdfr = $keywordsfr->fetchAll(PDO::FETCH_ASSOC);
		else:
				$keywrdfr = false;
		endif;

$keywordsw = $pdo->query('SELECT Nom FROM keywrds WHERE Appartenance = "WORLD" ORDER BY Nom ASC');

		if($keywordsw):
				$keywrdw = $keywordsw->fetchAll(PDO::FETCH_ASSOC);

		else:
				$keywrdw = false;
		endif;

$keywordswtc = $pdo->query('SELECT Nom FROM keywrds WHERE Appartenance = "WTC" ORDER BY Nom ASC');
if($keywordswtc):
		$keywrdwtc = $keywordswtc->fetchAll(PDO::FETCH_ASSOC);
else:
		$keywrdwtc = false;
endif;


?>

<!DOCTYPE html>
<html lang="fr">
	<head>
		<meta charset="UTF-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0" />
		<link
			rel="stylesheet"
			href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
			integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
			crossorigin="anonymous"
		/>
		<link rel="stylesheet" href="css/style.css" />
		<link rel="shortcut icon" href="img/favicon_SB/favicon.ico" type="image/x-icon">
		<script src="https://kit.fontawesome.com/95e6614a3f.js" crossorigin="anonymous"></script>
		<title>Soundboard</title>
	</head>
	<body>

		<!--############################################### HEADER ###############################################-->

		<header class="container-fluid">
					
			<h1 id="top"><a id="top" href="index.php">Soundboard</a></h1>
		</header>

				<nav class="container-fluid">
					<div id="navbox" class="row">
						<div class= "gestsnd row container-fluid">
							<button
								type="button"
								class="btn btn-success btn-lg btnsnd col-md-5"
								data-toggle="modal"
								data-target="#exampleModalCenter"
							>
								Ajouter un son
							</button>
						

<!-- ############################################### MODAL ADD ############################################### -->

							<div
								class="modal fade"
								id="exampleModalCenter"
								tabindex="-1"
								role="dialog"
								aria-labelledby="exampleModalCenterTitle"
								aria-hidden="true"
							>
								<div class="modal-dialog modal-dialog-centered" role="document">
									<div class="modal-content">
										<div class="modal-header">
											<h5 class="modal-title" id="exampleModalCenterTitle">
												<b>Ajouter un son</b>
											</h5>
											<button
												type="button"
												class="close"
												data-dismiss="modal"
												aria-label="Close"
											>
												<span aria-hidden="true">&times;</span>
											</button>
										</div>
										<div class="modal-body">
											<form id="addsnd" action="index.php" class="form" role="form" enctype="multipart/form-data" method="POST">
												<div class="form-group">
													<label for="soundname"><b>Nom du son</b></label>
													<input
														name="nom"  
														type="text"
														class="form-control"
														id="soundname"
														placeholder="Nom du son"
														maxlength="25"
														required
													/>
												</div>
												<div class="form-group">
													<label for="importsound"><b>Importez le son</b></label>
													<input
														type="file"
														class="form-control-file"
														id="importsound"
														name="snd"
													/>
												</div>
												<div class="form-group">
													<label for="videosrc"><b>Source vidéo</b></label>
													<input
														name="videosrc"  
														type="text"
														class="form-control"
														id="srcvideo"
														placeholder="Par exemple : https://youtube.com/embed/..."
														maxlength="200"
													/>
												</div>
												<label for="catsnd"><strong> Quel type de son ?</strong></label>
												<div id="catsnd" class="form-group">
													<div class="form-check form-check-inline">
														<input class="form-check-input" type="radio" name="catsnd" id="catson" value="Son FR">
														<label class="form-check-label" for="catson">Son FR</label>
													</div>
													<div class="form-check form-check-inline">
														<input class="form-check-input" type="radio" name="catsnd" id="catson2" value="Son World">
														<label class="form-check-label" for="catson2">Son World</label>
													</div>
													<div class="form-check form-check-inline">
														<input class="form-check-input" type="radio" name="catsnd" id="catson3" value="WTC">
														<label class="form-check-label" for="catson3">WTC</label>
													</div>
													<div class="form-check form-check-inline">
														<input class="form-check-input" type="radio" name="catsnd" id="catson4" value="JDay">
														<label class="form-check-label" for="catson3">JDay</label>
													</div>
													<div class="form-check form-check-inline">
														<input class="form-check-input" type="radio" name="catsnd" id="catson5" value="Inconnus">
														<label class="form-check-label" for="catson3">Les Inconnus</label>
													</div>
												</div>
												<div class="form-group">
													<label for="keywordnew"><b>Associer un ou plusieurs mot(s) clé(s)</b></label>
													<input
														name="keywordnew"  
														type="text"
														class="form-control"
														id="keywords"
														placeholder="Entrer un ou plusieurs mot(s) clé(s)"
													/>
												</div>
												<label for="exampleFormControlSelect1"><b>Ou sélectionner un mot clé déjà existant</b></label>
												<div class="form-row">
													<div class="form-group col-md-4">
														<label for="exampleFormControlSelect1"><b>FR</b></label>
														<select name="keywords" class="form-control" id="exampleFormControlSelect1">
															<option></option>
															<?php foreach ($keywrdfr as $keywfr):?>
															<option><?php echo $keywfr['Nom'] ?></option>
															<?php endforeach ?>
														</select>
													</div>
													<div class="form-group col-md-4">
														<label for="exampleFormControlSelect1"><b>WORLD</b></label>
														<select name="keywordsw" class="form-control" id="exampleFormControlSelect2">
															<option></option>
															<?php foreach ($keywrdw as $keyww):?>
															<option><?php echo $keyww['Nom']?></option>
															<?php endforeach ?>
														</select>
													</div>
													<div class="form-group col-md-4">
														<label for="exampleFormControlSelect1"><b>WTC</b></label>
														<select name="keywordswtc" class="form-control" id="exampleFormControlSelect2">
															<option></option>
															<?php foreach ($keywrdwtc as $keywtc):?>
															<option><?php echo $keywtc['Nom']?></option>
															<?php endforeach ?>
														</select>
													</div>
												</div>
											</div>
											<div class="modal-footer">
												<button type="submit" class="btn btn-success">
													Valider
												</button>
												<button type="button" class="btn btn-danger" data-dismiss="modal">
													Annuler
												</button>
											</div>
										</form>
									</div>
								</div>
							</div>

<!-- ############################################# FIN MODAL ADD ############################################### -->

							<button
									type="button"
									class="btn btn-danger btn-lg btnsnd col-md-5"
									data-toggle="modal"
									data-target="#exampleModalCenter3"
								>
									Supprimer un son
							</button>
						</div>

<!-- ############################################### MODAL SUPPR ############################################### -->

								<div
									class="modal fade"
									id="exampleModalCenter3"
									tabindex="-1"
									role="dialog"
									aria-labelledby="exampleModalCenterTitle"
									aria-hidden="true"
								>
									<div class="modal-dialog modal-dialog-centered" role="document">
										<div class="modal-content">
											<div class="modal-header">
												<h5 class="modal-title" id="exampleModalCenterTitle">
													<b>Supprimer un son</b>
												</h5>
												<button
													type="button"
													class="close"
													data-dismiss="modal"
													aria-label="Close"
												>
													<span aria-hidden="true">&times;</span>
												</button>
											</div>
											<form action="index.php" class="form" role="form" method="POST">
												<div class="modal-body">
													<label for="form-row"><b>Choisir le son à supprimer</b></label>
													<div class="form-row">
														<div class="form-group col-md-3">
															<label for="inputson"><b>FR</b></label>
															<select id="inputson" name="supprsnd" class="form-control">
																<option></option>
																<?php foreach ($lesnom as $allnoms):?>
																<option><?php echo $allnoms['Nom'] ?></option>
																<?php endforeach ?>
															</select>
														</div>
														<div class="form-group col-md-3">
															<label for="inputsonw"><b>WORLD</b></label>
															<select id="inputsonw" name="supprsndw" class="form-control">
																<option></option>
																<?php foreach ($lesnomw as $allnomsw):?>
																<option><?php echo $allnomsw['Nom'] ?></option>
																<?php endforeach ?>
															</select>
														</div>
														<div class="form-group col-md-3">
															<label for="inputsonw"><b>WTC</b></label>
															<select id="inputsonwtc" name="supprsndwtc" class="form-control">
																<option></option>
																<?php foreach ($lesnomwtc as $allnomswtc):?>
																<option><?php echo $allnomswtc['Nom'] ?></option>
																<?php endforeach ?>
															</select>
														</div>
														<div class="form-group col-md-3">
															<label for="inputsonw"><b>JDay</b></label>
															<select id="inputsonjd" name="supprsndjd" class="form-control">
																<option></option>
																<?php foreach ($lenomjday as $jday):?>
																<option><?php echo $jday['Nom'] ?></option>
																<?php endforeach ?>
															</select>
														</div>
													</div>
												</div>
												<div class="modal-footer">
													<button type="submit" class="btn btn-success">
														Valider
													</button>
													<button type="button" class="btn btn-danger" data-dismiss="modal">
														Annuler
													</button>
												</div>
											</form>
										</div>
									</div>
								</div>
							</div>

	<!-- ############################################### BOUTONS ############################################### -->
													
							<div id="searchnworld" class="row butindex">
								<form id="showfr" action="soundfr.php" class="form-inline my-2 my-lg-0 " method="POST">
									<input id="frbuttton" class="butcons container-fluid" type="submit" name="soundfr" value="Sons FR" title="Voir les Sons FR"></input>
								</form>
								<form id="showw" action="soundworld.php" class="form-inline my-2 my-lg-0" method="POST">
									<input id="myBtn2" class="butcons container-fluid"  type="submit" name="soundw" value="Sons World" title="Voir les Sons World"></input>
								</form>
							</div>
							<div id="smallbuttons" class="row">
								<form id="showwtc" action="wtc.php" class="form-inline my-2 my-lg-0 3" method="POST">
									<input id="myBtnWTC" class="butcons" type="submit" name="soundwtc" value=" " title="What the Cut ?!"></input>
								</form>
								<form id="showJDG" action="jdg.php" class="form-inline my-2 my-lg-0 3" method="POST">
									<input id="myBtnJDG" class="butcons" type="submit" name="soundjdg" value=" " title="Joueur du Grenier"></input>
								</form>
								<form id="showJDay" action="JDay.php" class="form-inline my-2 my-lg-0 3" method="POST">
									<input id="myBtnJDay" class="butcons" type="submit" name="soundjday" value=" " title="MisterJDay"></input>
								</form>
								<form id="showinc" action="inconnus.php" class="form-inline my-2 my-lg-0 3" method="POST">
									<input id="myBtninc" class="butcons" type="submit" name="soundinc" value=" " title="Les Inconnus"></input>
								</form>
							</div>
					</div>
				</div>
			</nav>

	<!-- ############################################### FOOTER ############################################### -->

	<footer>Bravo à toi, tu es en bas.</footer>
	<script
		src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
		integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n"
		crossorigin="anonymous"
	></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
		integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
		crossorigin="anonymous"
	></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
		integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"
		crossorigin="anonymous"
	></script>
	</body>
</html>