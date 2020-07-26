<?php
session_start();
//DB login

$pdo =new PDO('mysql:host=localhost; dbname=sbp; charset=utf8','root','');

if(!$pdo){
		echo "Erreur de connexion à la base de données.";
}

$pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

$nom = $pdo->query('SELECT Nom, Son FROM soundfr');

		if($nom):
				$lenom = $nom->fetchAll(PDO::FETCH_ASSOC);

		else:
				$lenom = false;
		endif;

$onlynom = $pdo->query('SELECT Nom FROM soundfr');

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

if(isset($_POST['search'])){
	require "search.php";
}

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

require "addsound.php";

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
		<script src="https://kit.fontawesome.com/95e6614a3f.js" crossorigin="anonymous"></script>
		<title>Soundboard</title>
	</head>
	<body>

		<!--############################################### HEADER ###############################################-->

		<header class="container-fluid">
			<h1 id="top"><a id="top" href="index.php">Soundboard</a></h1>
		</header>

			<?php

	############################################### RECHERCHE GLOBALE e###############################################

			if(isset($_POST['search'])){
				if(count($resultsfr)> 0 && count($resultsw) > 0) {?>
				
				<nav id="navbox" class="row">
					<div class= "col-8">
						<div class="container-fluid">
							<a class="btn btn-success btn-lg btn-block btnsnd returnh"
								href="index.php"
								role="button"
							>
							Retour à l'accueil
							</a>
						</div>
					</div>
					<form id="searchbox2" action="index.php" class="form-inline my-2 my-lg-0 col-3" method="POST">
						<input id="searchbox" class="form-control mr-sm-2" type="search"
							name="search" placeholder="Rechercher un son" aria-label="Search" required>
						<button class="btn btn-success my-2 my-sm-0" value="search" type="submit"><i class="fas fa-search"></i></button>
					</form>
				</nav>
				<section>
					<article class="frsearch">
						<h2 class="sndtitle" id="sndsearch"> Sons relatifs à <?php echo($_POST['search']) ?> </h2>
						<div class="container-fluid">
							<div class="row">
								<div class="col">
									<?php foreach ($resultsfr as $r):?>
										<div class="contsndbox fra">
											<div id="sndbox">
												<div class="col" id="sndname"><?php echo($r['Nom']) ?>
												</div>
												<audio controls>
													<source src="SBP/SFR/<?= $r['Son']?>" type="audio/mpeg">
												</audio>
											</div>
										</div>
									<?php endforeach;?>
								</div>
							</div>
						</div>
					</article>
					<article class="wrldsearch">
						<div class="container-fluid">
							<div class="row">
								<div class="col">
									<?php foreach ($resultsw as $rw): ?>
									<div class="contsndbox world">
										<div id="sndbox">
											<div class="col" id="sndname"><?php echo($rw['Nom']) ?>
										</div>
										<audio controls>
											<source src="SBP/SWLD/<?= $rw["Son"]?>" type="audio/mpeg">
										</audio>
									</div>
								</div>
								<?php endforeach;?>
							</div>
						</div>
					</article>
				</section>
				<div id="btnfr" class="container-fluid">
					<a href="#top" id="myBtnfr2top" title="Go to top"><i class="fas fa-chevron-up"></i> GO UP </a> 
				</div>
				<?php }

		################################################ RECHERCHE FR ###############################################

				elseif(count($resultsfr)> 0 && count($resultsw) == 0){ ?>
				<nav class="container-fluid">
					<div id="navbox" class="row">
						<div class= "col-8">
							<div class="container-fluid">
								<a class="btn btn-success btn-lg btn-block btnsnd returnh"
									href="index.php"
									role="button"
								>
								Retour à l'accueil
								</a>
							</div>
						</div>
						<form id="searchbox2" action="index.php" class="form-inline my-2 my-lg-0 col-3" method="POST">
							<input id="searchbox" class="form-control mr-sm-2" type="search"
								name="search" placeholder="Rechercher un son" aria-label="Search" required>
							<button class="btn btn-success my-2 my-sm-0" value="search" type="submit"><i class="fas fa-search"></i></button>
						</form>
					</div>
				</nav>
				<section>
					<article class="fr fronly">
						<h2 class="sndtitle" id="sndsearch"> Sons relatifs à <?php echo($_POST['search']) ?> </h2>
						<div class="container-fluid">
							<div class="row">
								<div class="col">
									<?php foreach ($resultsfr as $r):?>
									<div class="contsndbox fra">
										<div id="sndbox">
											<div class="col" id="sndname"><?php echo($r['Nom']) ?>
											</div>
											<audio controls>
											<source src="SBP/SFR/<?= $r['Son']?>" type="audio/mpeg">
											</audio>
										</div>
									</div>
								<?php endforeach;?>
								</div>
							</div>
						</div>
					</article>
				</section>
				<div id="btnfr" class="container-fluid">
					<a href="#top" id="myBtnfr2top" title="Go to top"><i class="fas fa-chevron-up"></i> GO UP </a> 
				</div>
				<?php }

	############################################### RECHERCHE WORLD ###############################################

					elseif(count($resultsw)> 0 && count($resultsfr) == 0){ ?>
						<nav class="container-fluid">
							<div id="navbox" class="row">
								<div class= "col-8">
									<div class="container-fluid">
										<a class="btn btn-success btn-lg btn-block btnsnd returnh"
											href="index.php"
											role="button"
										>
										Retour à l'accueil
										</a>
									</div>
								</div>
								<form id="searchbox2" action="index.php" class="form-inline my-2 my-lg-0 col-3" method="POST">
									<input id="searchbox" class="form-control mr-sm-2" type="search"
										name="search" placeholder="Rechercher un son" aria-label="Search" required>
									<button class="btn btn-success my-2 my-sm-0" value="search" type="submit"><i class="fas fa-search"></i></button>
								</form>
							</div>
						</nav>
						<section>
							<article class="wrld wrldonly">
								<h2 class="sndtitle" id="sndsearch"> Sons relatifs à <?php echo($_POST['search']) ?> </h2>
								<div class="container-fluid">
									<div class="row">
										<div class="col">
												<?php foreach ($resultsw as $rw): ?>
												<div class="contsndbox world">
													<div id="sndbox">
														<div class="col" id="sndname"><?php echo($rw['Nom']) ?>
													</div>
													<audio controls>
														<source src="SBP/SWLD/<?= $rw["Son"]?>" type="audio/mpeg">
													</audio>
												</div>
											</div>
											<?php endforeach;?>
										</div>
									</div>
								</div>
							</article>
						</section>
						<div id="btnfr" class="container-fluid">
							<a href="#top" id="myBtnfr2top" title="Go to top"><i class="fas fa-chevron-up"></i> GO UP </a> 
						</div>
						<?php 
							} 

					############################################### NO SOUND ###############################################

						else{?>
						<nav class="container-fluid">
							<div id="navbox" class="row">
								<div class= "col-8">
									<div class="container-fluid">
							<a class="btn btn-success btn-lg btn-block btnsnd returnh"
											href="index.php"
											role="button"
										>
										Retouner à l'accueil
										</a>
									</div>
								</div>
								<form id="searchbox2" action="index.php" class="form-inline my-2 my-lg-0 col-3" method="POST">
									<input id="searchbox" class="form-control mr-sm-2" type="search"
										name="search" placeholder="Rechercher un son" aria-label="Search" required>
								<button class="btn btn-success my-2 my-sm-0" value="search" type="submit"><i class="fas fa-search"></i></button>
							</form>
						</div>
					</nav>
					<section class="container-fluid">
						<article id="nosearch">
						<h2 class="sndquery" id="sndsearch"> Sons relatifs à <?php echo($_POST['search']) ?> </h2>
							<div id="noresults">
								<?php echo('Aucun son trouvé !');
									?>
							</div>
						</article>
					</section>
					<?php
					}
				}
 ############################################# NORMAL PAGE (NO SEARCH) #############################################

				else{?>
				<nav class="container-fluid">
					<div id="navbox" class="row">
						<div class= "gestsnd row container-fluid">
							<button
								type="button"
								class="btn btn-success btn-lg btnsnd col-md-4"
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
											<form id="addsnd" action="addsound.php" class="form" role="form" enctype="multipart/form-data" method="POST">
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
												<label for="catsnd"><strong> Quel type de son ?</strong></label>
												<div id="catsnd" class="form-group">
													<div class="form-check form-check-inline">
														<input class="form-check-input" type="radio" name="catsnd" id="catson" value="Son FR">
														<label class="form-check-label" for="catson">Son FR</label>
													</div>
													<div class="form-check form-check-inline">
														<input class="form-check-input" type="radio" name="catsnd" id="catson2" value="Son World">
														<label class="form-check-label" for="catson2"> Son World</label>
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
														<label for="exampleFormControlSelect1"><b>FR</b></label>
														<select name="keywords" class="form-control" id="exampleFormControlSelect1">
															<option></option>
															<?php foreach ($keywrdfr as $keywfr):?>
															<option><?php echo $keywfr['Nom'] ?></option>
															<?php endforeach ?>
														</select>
													</div>
													<div class="form-group col-md-6">
														<label for="exampleFormControlSelect1"><b>WORLD</b></label>
														<select name="keywordsw" class="form-control" id="exampleFormControlSelect2">
															<option></option>
															<?php foreach ($keywrdw as $keyww):?>
															<option><?php echo $keyww['Nom']?></option>
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
									class="btn btn-danger btn-lg btnsnd col-md-4"
									data-toggle="modal"
									data-target="#exampleModalCenter3"
								>
									Supprimer un son
							</button>
							<form id="search" action="index.php" class="form-inline my-2 my-lg-0 col-md-3" method="POST">
								<input id="searchbox" class="form-control mr-sm-2" type="search"
									name="search" placeholder="Rechercher un son" aria-label="Search" required>
								<button class="btn btn-success my-2 my-sm-0" value="search" type="submit"><i class="fas fa-search"></i></button>
							</form>	
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
											<form action="supprsound.php" class="form" role="form" method="POST">
												<div class="modal-body">
													<label for="form-row"><b>Choisir le son à supprimer</b></label>
													<div class="form-row">
														<div class="form-group col-md-6">
															<label for="inputson"><b>FR</b></label>
															<select id="inputson" name="supprsnd" class="form-control">
																<option></option>
																<?php foreach ($lesnom as $allnoms):?>
																<option><?php echo $allnoms['Nom'] ?></option>
																<?php endforeach ?>
															</select>
														</div>
														<div class="form-group col-md-6">
															<label for="inputsonw"><b>WORLD</b></label>
															<select id="inputsonw" name="supprsndw" class="form-control">
																<option></option>
																<?php foreach ($lesnomw as $allnomsw):?>
																<option><?php echo $allnomsw['Nom'] ?></option>
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
									<input id="frbuttton" class="butcons" type="submit" name="soundfr" value="Sons FR" title="Voir les Sons FR"></input>
								</form>
								<form id="showw" action="soundworld.php" class="form-inline my-2 my-lg-0 " method="POST">
									<input id="myBtn2" class="butcons"  type="submit" name="soundw" value="Sons World" title="Voir les Sons World"></input>
								</form>
								<form id="showall" action="allsounds.php" class="form-inline my-2 my-lg-0 " method="POST">
									<input id="myBtnAll" class="butcons"  type="submit" name="allsnds" value="Tous les sons" title="Voir tous les sons"></input>
								</form>
							</div>
							<div id="searchnworld" class="row">
								<form id="showwtc" action="" class="form-inline my-2 my-lg-0 3" method="POST">
									<input id="myBtnWTC" class="butcons" type="submit" name="soundwtc" value="Mhvt th9 cnt ?!" title="ZA WARUDO"></input>
								</form>
								<form id="showJDG" action="" class="form-inline my-2 my-lg-0 3" method="POST">
									<input id="myBtnJDG" class="butcons" type="submit" name="soundjdg" value="J0n9nr dn 9r9ui9r" title="ZA WARUDO"></input>
								</form>
							</div>
					</div>
				</div>
			</nav>
			<?php }?>
			<hr>

	<!-- ############################################### FOOTER ############################################### -->

	<footer>Bravo à toi, tu es en bas.</footer>
	<script src="js/app.js"></script>
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