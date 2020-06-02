<?php
session_start();
//DB login

$pdo =new PDO('mysql:host=localhost; dbname=sbp; charset=utf8','root','');

if(!$pdo){
		echo "Erreur de connexion à la base de données.";
}

$pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

$nom = $pdo->query('SELECT Nom, Son FROM sound');

    if($nom):
				$lenom = $nom->fetchAll(PDO::FETCH_ASSOC);

    else:
        $lenom = false;
		endif;

$onlynom = $pdo->query('SELECT Nom FROM sound');

    if($onlynom):
				$lesnom = $onlynom->fetchAll(PDO::FETCH_ASSOC);

    else:
        $lesnom = false;
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
		<title>Soundbox</title>
	</head>
	<body>
		<header>
			<h1>Soundbox</h1>
		</header>
		<nav>
			<div class="container-fluid">
			<!-- <form id="search" action="search.php" class="form-inline my-2 my-lg-0" method="POST">
      	<input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
      	<button class="btn btn-success my-2 my-sm-0" type="submit">Search</button>
    	</form> -->
				<button
					type="button"
					class="btn btn-success btn-lg btn-block"
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
								Ajouter un son
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
									<label for="soundname">Nom du son</label>
									<input
										name="nom"  
										type="text"
										class="form-control"
										id="soundname"
										placeholder="Nom du son"
										required
									/>
								</div>
								<div class="form-group">
									<label for="importsound">Importez le son</label>
									<input
										type="file"
										class="form-control-file"
										id="importsound"
										name="snd"
									/>
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
					class="btn btn-danger btn-lg btn-block"
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
								Supprimer un son
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
									<label for="inputson">Choisir le son à supprimer</label>
									<select id="inputson" name="supprsnd" class="form-control">
										<?php foreach ($lesnom as $allnoms):?>
										<option><?php echo $allnoms['Nom'] ?></option>
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
		</nav>
		<section>
			<article>
				<h2 id="sndtitle">D'la pefra sa mére</h2>
				<div class="container-fluid">
					<div class="row">
						<div class="col">
							 <?php foreach ($lenom as $leson):?>
								<div>
									<div class="col"><?php echo($leson['Nom']) ?>
								</div>
								<audio controls>
									<source src="SBP/<?= $leson["Son"]?>" type="audio/mpeg">
								</audio>
							 </div>
							<?php endforeach;?>
						</div>
					</div>
				</div>
			</article>
		</section>
		<hr>
		<footer>LA FIN</footer>
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
