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
		<header class="container-fluid">
			<h1 id="top"><a id="top" href="index.php">Soundboard</a></h1>
		</header>

		<?php

				######################### recherche fr #########################

			if(isset($_POST['search'])){
				if(count($resultsfr)> 0){?>
				<nav class="container-fluid">
					<div id="navbox" class="row">
						<div class= "col-8">
							<div class="container-fluid">
								<a class="btn btn-success btn-lg btn-block btnsnd"
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
					<article>
						<h2 class="sndtitle" id="sndfr"><img src="img/ecufr.png" height="100" width="100"> Sons FR <img src="img/ecufr.png" height="100" width="100"></h2>
						<div class="container-fluid">
							<div class="row">
								<div class="col">
									<?php foreach ($resultsfr as $r):?>
										<div id="contsndbox">
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
						</article>
					</section>
					<?php }

									######################### recherche world #########################

					elseif(count($resultsw)> 0){ ?>
						<nav class="container-fluid">
							<div id="navbox" class="row">
								<div class= "col-8">
									<div class="container-fluid">
										<a class="btn btn-success btn-lg btn-block btnsnd"
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
							<article>
								<h2 class="sndtitle" id="sndw"><img src="img/earth-min.png"> Sons World <img src="img/earth-min.png" ></h2>
								<div class="container-fluid">
									<div class="row">
										<div class="col">
												<?php foreach ($resultsw as $rw): ?>
												<div id="contsndbox">
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
						<?php 
						} 

												######################### no sound #########################

						else{?>
						<nav class="container-fluid">
							<div id="navbox" class="row">
								<div class= "col-8">
									<div class="container-fluid">
										<a class="btn btn-success btn-lg btn-block btnsnd"
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
					<section  class="container-fluid">
						<div id="noresults">
						<?php echo('Aucun son trouvé !');
							?>
						</div>
					</section>
					<?php
					}
				}

				######################### normal page (no search) #########################

				else{?>
				<nav class="container-fluid">
					<div id="navbox" class="row">
						<div class= "gestsnd col-8">
							<div class="container-fluid">
								<button
									type="button"
									class="btn btn-success btn-lg btn-block btnsnd"
									data-toggle="modal"
									data-target="#exampleModalCenter"
								>
									Ajouter un son
								</button>
							</div>

								<!-- Modal -->
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
								<div class="container-fluid">
									<button
										type="button"
										class="btn btn-danger btn-lg btn-block btnsnd"
										data-toggle="modal"
										data-target="#exampleModalCenter3"
									>
										Supprimer un son
									</button>
								</div>

								<!-- Modal -->
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
													<div class="form-group">
														<label for="inputson"><b>Choisir le son à supprimer</b></label>
														<select id="inputson" name="supprsnd" class="form-control">
															<option disabled><b>SONS FR</b></option>
															<?php foreach ($lesnom as $allnoms):?>
															<option><?php echo $allnoms['Nom'] ?></option>
															<?php endforeach ?>
															<option disabled><b>SONS WORLD</b></option>
															<?php foreach ($lesnomw as $allnomsw):?>
															<option><?php echo $allnomsw['Nom'] ?></option>
															<?php endforeach ?>
														</select>
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
							<div id="searchnworld" class="col-3">
								<form id="search" action="index.php" class="form-inline my-2 my-lg-0" method="POST">
									<input id="searchbox" class="form-control mr-sm-2" type="search"
										name="search" placeholder="Rechercher un son" aria-label="Search" required>
									<button class="btn btn-success my-2 my-sm-0" value="search" type="submit"><i class="fas fa-search"></i></button>
								</form>	
							<div id="myBtn2">
								<a href="#sndw" title="Go to Sons World">Sons World</a>
							</div>
						</div>
					</div>
				</div>
			</nav>
			<section>
				<article>
					<h2 class="sndtitle" id="sndfr"><img src="img/ecufr.png" height="100" width="100"> Sons FR <img src="img/ecufr.png" height="100" width="100"></h2>
					<div class="container-fluid">
						<div class="row">
							<div class="col">
								<?php
								foreach ($lenom as $leson):?>
								<div id="contsndbox">
									<div id="sndbox">
										<div class="col" id="sndname">
											<?php echo($leson['Nom']) ?>
										</div>
										<audio controls>
											<source src="SBP/SFR/<?= $leson["Son"]?>" type="audio/mpeg">
										</audio>
									</div>
								</div>
								<?php endforeach;?>
							</div>
						</div>
					</div>
				</article>
				<div id="btnfr" class="container-fluid">
					<a href="#top" id="myBtnfr2top" title="Go to top"> GO UP <i class="fas fa-chevron-up"></i></a> 
				</div>
				<article>
					<h2 class="sndtitle" id="sndw"><img src="img/earth-min.png"> Sons World <img src="img/earth-min.png" ></h2>
					<div class="container-fluid">
						<div class="row">
							<div class="col">
									<?php foreach ($lenomw as $lesonw): ?>
									<div id="contsndbox">
										<div id="sndbox">
											<div class="col" id="sndname"><?php echo($lesonw['Nom']) ?>
										</div>
										<audio controls>
											<source src="SBP/SWLD/<?= $lesonw["Son"]?>" type="audio/mpeg">
										</audio>
									</div>
								</div>
								<?php endforeach;?>
							</div>
						</div>
					</div>
				</article>
			</section>
			<?php }?>
			<hr>
	<footer>Bravo à toi, tu es en bas.
			<a href="#top" id="myBtn" title="Go to top">Tu remontes ou j'te remonte ?</a> 
	</footer>
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
