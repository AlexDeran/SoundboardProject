<?php
session_start();
//DB login

$pdo =new PDO('mysql:host=localhost; dbname=sbp; charset=utf8','root','');

if(!$pdo){
		echo "Erreur de connexion à la base de données.";
}

$pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

 if(isset($_POST['nom'])){
	require "gestsnd/addsound.php";
	}

if(isset($_POST['supprsnd']) || isset($_POST['supprsndw']) || isset($_POST['supprsndwtc']) || isset($_POST['supprsndmv']) || isset($_POST['supprsndjd']) || isset($_POST['supprsndw'])){
	require "gestsnd/supprsound.php";
}

$onlynom = $pdo->query('SELECT Nom  FROM soundfr');

		if($onlynom):
				$lesnom = $onlynom->fetchAll(PDO::FETCH_ASSOC);

		else:
				$lesnom = false;
		endif;

$onlynomw = $pdo->query('SELECT Nom FROM soundw');

		if($onlynomw):
				$lesnomw = $onlynomw->fetchAll(PDO::FETCH_ASSOC);

		else:
				$lesnomw = false;
		endif;

$onlynomwtc = $pdo->query('SELECT Nom FROM wtc');

		if($onlynomwtc):
				$lesnomwtc = $onlynomwtc->fetchAll(PDO::FETCH_ASSOC);

		else:
				$lesnomwtc = false;
		endif;

$onlynommv = $pdo->query('SELECT Nom FROM mv');

if($onlynommv):
		$lesnommv = $onlynommv->fetchAll(PDO::FETCH_ASSOC);

else:
		$lesnommv = false;
endif;

$onlynomjd = $pdo->query('SELECT Nom FROM JDay');

		if($onlynomjd):
				$lenomjday = $onlynomjd->fetchAll(PDO::FETCH_ASSOC);

		else:
				$lenomjday = false;
		endif;


$onlynominc = $pdo->query('SELECT Nom FROM inconnus');

		if($onlynominc):
				$lenominc = $onlynominc->fetchAll(PDO::FETCH_ASSOC);

		else:
				$lenominc = false;
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

$keywordsinc = $pdo->query('SELECT Nom FROM keywrds WHERE Appartenance = "Inconnus" ORDER BY Nom ASC');
if($keywordsinc):
		$keywrdinc = $keywordsinc->fetchAll(PDO::FETCH_ASSOC);
else:
		$keywrdinc = false;
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
		<link rel="stylesheet" href="css/buttons.css" />
		<link rel="stylesheet" href="css/index.css">
		<link rel="shortcut icon" href="img/favicon_SB/favicon.ico" type="image/x-icon">
		<script src="https://kit.fontawesome.com/95e6614a3f.js" crossorigin="anonymous"></script>
		<title>Soundboard</title>
	</head>
	<body>

		<!--############################################### HEADER ###############################################-->

		<header class="container-fluid index">
					
			<h1 id="top" class="soundboard"><a id="top" href="index.php">Soundboard</a></h1>
		</header>
				<nav class="container-fluid">
					<div id="navbox" class="row">
						<div class= "gestsnd row container-fluid">
							<ul class="btns col-sm col-md-5">
								<li class="btnmain acc managesnd" data-toggle="modal"
									data-target="#exampleModalCenter">
									<span></span><span></span><span></span><span></span>
									<i class="fas fa-plus"></i>
									&nbsp;
										Ajouter un son
									<span></span><span></span><span></span><span></span>
								</li>
						</ul>
						
<!-- ############################################### MODAL ADD ############################################### -->

							<div
								class="modal fade"
								id="exampleModalCenter"
								tabindex="-1"
								role="dialog"
								aria-labelledby="exampleModalCenterTitle"
								aria-hidden="true"
							>
								<div class="modal-dialog modal-dialog-scrollable modal-dialog-centered" role="document">
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
														maxlength="50"
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
														required
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
												<div id="catsnd" class="form-group" required>
													<div>
														<div class="form-check form-check-inline col-md-4">
															<input class="form-check-input" type="radio" name="catsnd" id="catson" value="Son FR">
															<label class="form-check-label" for="catson">France</label>
														</div>
														<div class="form-check form-check-inline col-md-3">
															<input class="form-check-input" type="radio" name="catsnd" id="catson2" value="Son World">
															<label class="form-check-label" for="catson2">Monde</label>
														</div>
														<div class="form-check form-check-inline col-md-3">
															<input class="form-check-input" type="radio" name="catsnd" id="catson3" value="WTC">
															<label class="form-check-label" for="catson3">WTC</label>
														</div>
													</div>
													<div>
														<div class="form-check form-check-inline col-md-4">
															<input class="form-check-input" type="radio" name="catsnd" id="catson4" value="MV">
															<label class="form-check-label" for="catson4">MV</label>
														</div>
														<div class="form-check form-check-inline col-md-3">
															<input class="form-check-input" type="radio" name="catsnd" id="catson5" value="JDay">
															<label class="form-check-label" for="catson5">JDay</label>
														</div>
														<div class="form-check form-check-inline col-md-3">
															<input class="form-check-input" type="radio" name="catsnd" id="catson6" value="Inconnus">
															<label class="form-check-label" for="catson6">Inconnus</label>
														</div>
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
													<div class="form-group col-md-6">
														<label for="exampleFormControlSelect1"><b>France</b></label>
														<select name="keywords" class="form-control" id="exampleFormControlSelect1">
															<option></option>
															<?php foreach ($keywrdfr as $keywfr):?>
															<option><?php echo $keywfr['Nom'] ?></option>
															<?php endforeach ?>
														</select>
													</div>
													<div class="form-group col-md-6">
														<label for="exampleFormControlSelect2"><b>Monde</b></label>
														<select name="keywordsw" class="form-control" id="exampleFormControlSelect2">
															<option></option>
															<?php foreach ($keywrdw as $keyww):?>
															<option><?php echo $keyww['Nom']?></option>
															<?php endforeach ?>
														</select>
													</div>
												</div>
												<div class="form-row">
													<div class="form-group col-md-6">
														<label for="exampleFormControlSelect3"><b>WTC</b></label>
														<select name="keywordswtc" class="form-control" id="exampleFormControlSelect3">
															<option></option>
															<?php foreach ($keywrdwtc as $keywtc):?>
															<option><?php echo $keywtc['Nom']?></option>
															<?php endforeach ?>
														</select>
													</div>
														<div class="form-group col-md-6">
														<label for="exampleFormControlSelect4"><b>Inconnus</b></label>
														<select name="keywordsinc" class="form-control" id="exampleFormControlSelect4">
															<option></option>
															<?php foreach ($keywrdinc as $keyinc):?>
															<option><?php echo $keyinc['Nom']?></option>
															<?php endforeach ?>
														</select>
													</div>
												</div>
											</div>
											<div class="modal-footer">
												<button type="submit" class="btn btn-success">
													<i class="fas fa-check"></i>
													<b>VALIDER</b>
												</button>
												<button type="button" class="btn btn-danger" data-dismiss="modal">
													<i class="fas fa-times"></i>
													<b>ANNULER</b>
												</button>
											</div>
										</form>
									</div>
								</div>
							</div>

<!-- ############################################# FIN MODAL ADD ############################################### -->
								<ul class="btns col-sm col-md-5">
									<li class="btnmain suppr managesnd" data-toggle="modal"
										data-target="#exampleModalCenter3">
										<span></span><span></span><span></span><span></span>
										<i class="fas fa-trash-alt"></i>
										&nbsp;
											Supprimer un son
										<span></span><span></span><span></span><span></span>
									</li>
							</ul>											
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
								<div class="modal-dialog modal-dialog-scrollable modal-dialog-centered" role="document">
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
													<div class="form-group col-md-4">
														<label for="inputson"><b>France</b></label>
														<select id="inputson" name="supprsnd" class="form-control">
															<option></option>
															<?php foreach ($lesnom as $allnoms):?>
															<option><?php echo $allnoms['Nom'] ?></option>
															<?php endforeach ?>
														</select>
													</div>
													<div class="form-group col-md-4">
														<label for="inputsonw"><b>Monde</b></label>
														<select id="inputsonw" name="supprsndw" class="form-control">
															<option></option>
															<?php foreach ($lesnomw as $allnomsw):?>
															<option><?php echo $allnomsw['Nom'] ?></option>
															<?php endforeach ?>
														</select>
													</div>
													<div class="form-group col-md-4">
														<label for="inputsonwtc"><b>WTC</b></label>
														<select id="inputsonwtc" name="supprsndwtc" class="form-control">
															<option></option>
															<?php foreach ($lesnomwtc as $allnomswtc):?>
															<option><?php echo $allnomswtc['Nom'] ?></option>
															<?php endforeach ?>
														</select>
													</div>
												</div>
												<div class="form-row">
													<div class="form-group col-md-4">
														<label for="inputsonmv"><b>MV</b></label>
														<select id="inputsonmv" name="supprsndmv" class="form-control">
															<option></option>
															<?php foreach ($lesnommv as $mv):?>
															<option><?php echo $mv['Nom'] ?></option>
															<?php endforeach ?>
														</select>
													</div>
													<div class="form-group col-md-4">
														<label for="inputsonjd"><b>JDay</b></label>
														<select id="inputsonjd" name="supprsndjd" class="form-control">
															<option></option>
															<?php foreach ($lenomjday as $jday):?>
															<option><?php echo $jday['Nom'] ?></option>
															<?php endforeach ?>
														</select>
													</div>
													<div class="form-group col-md-4">
														<label for="inputsoninc"><b>Inconnus</b></label>
														<select id="inputsoninc" name="supprsndinc" class="form-control">
															<option></option>
															<?php foreach ($lenominc as $inc):?>
															<option><?php echo $inc['Nom'] ?></option>
															<?php endforeach ?>
														</select>
													</div>
												</div>
											</div>
											<div class="modal-footer">
												<button class="btn btn-success" type="submit">
												<i class="fas fa-trash-alt"></i>
												<b>VALIDER</b>
												</button>
												<button type="button" class="btn btn-danger" data-dismiss="modal">
												<i class="fas fa-times"></i>
												<b>ANNULER</b>
												</button>
											</div>
										</form>
									</div>
								</div>
							</div>
						</div>

	<!-- ############################################### BOUTONS ############################################### -->
													
					<div id="btn1strow" class="row">
						<div class="col-3">
							<div class="container-fluid">
								<ul class="btns">
									<a href="fr/soundfr.php">
										<li class="btnmain frindex">
											<span></span><span></span><span></span><span></span>
											<h1 aria-label="FRANCE"></h1>
											<span></span><span></span><span></span><span></span>
										</li>
									</a>
								</ul>
							</div>
						</div>
						<div class="col-3">
							<div class="container-fluid">
								<ul class="btns">
									<a href="world/soundworld.php">
										<li class="btnmain windex">
												<span></span><span></span><span></span><span></span>
											<h1 aria-label="MONDE"></h1>
													<span></span><span></span><span></span><span></span>
										</li>
									</a>
								</ul>
							</div>
						</div>
						<div class="col-3">
							<div class="container-fluid">
								<ul class="btns">
									<a href="wtc/wtc.php">
										<li class="btnmain wtcindex">
											<span></span><span></span><span></span><span></span>
												<h1 aria-label="What&nbsp;The&nbsp;Cut&nbsp;?!"></h1>
											<span></span><span></span><span></span><span></span>
										</li>
									</a>
								</ul>
							</div>
						</div>
					</div>
					<div id="btn1strow" class="row">
						<div class="col-3">
							<div class="container-fluid">
								<ul class="btns">
									<a href="mv/mv.php">
										<li class="btnmain mvindex">
											<span></span><span></span><span></span><span></span>
												<h1 aria-label="MisterMV"></h1>
											<span></span><span></span><span></span><span></span>
										</li>
									</a>
								</ul>
							</div>
						</div>
						<div class="col-3">
							<div class="container-fluid">
								<ul class="btns">
									<a href="jday/JDay.php">
										<li class="btnmain jdindex">
											<span></span><span></span><span></span><span></span>
												<h1 aria-label="MisterJDay"></h1>
											<span></span><span></span><span></span><span></span>
										</li>
									</a>
								</ul>
							</div>
						</div>
						<div class="col-3">
							<div class="container-fluid">
								<ul class="btns">
									<a href="inconnus/inconnus.php">
										<li class="btnmain incindex">
											<span></span><span></span><span></span><span></span>
												<h1 aria-label="Les&nbsp;Inconnus"></h1>
											<span></span><span></span><span></span><span></span>
										</li>
									</a>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
		</nav>
			
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