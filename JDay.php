<?php 

session_start();
//DB login

$pdo =new PDO('mysql:host=localhost; dbname=sbp; charset=utf8','root','');

if(!$pdo){
		echo "Erreur de connexion à la base de données.";
}

$pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

if(isset($_POST['search'])){

$stmtjd = $pdo->prepare("SELECT * FROM `jday` WHERE `Nom` LIKE ? OR `keywords` LIKE ? ");
$stmtjd->execute([
	"%" . $_POST['search'] . "%",
	"%" . $_POST['search'] . "%"
]);

$resultsjd = $stmtjd->fetchAll();
}

$nomjd = $pdo->prepare("SELECT Nom, Son, source FROM jday ORDER BY Nom");

$nomjd->execute();

$nomjd= $nomjd->fetchAll(PDO::FETCH_ASSOC);

$n = 1;
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
        <div class= "col-9">
          <div class="container-fluid">
            <a class="btn btn-success btn-lg btn-block btnsnd returnh"
              href="index.php"
              role="button"
            >
            Retour à l'accueil
            </a>
          </div>
        </div>
        <form id="search" action="JDay.php" class="form-inline my-2 my-lg-0 col-md-3" method="POST">
            <input id="searchbox" class="form-control mr-sm-2" type="search"
              name="search" placeholder="Rechercher un son" aria-label="Search" required>
            <button class="btn btn-success my-2 my-sm-0" value="search" type="submit"><i class="fas fa-search"></i></button>
          </form>	
        </div>
			</nav>
<?php
			 	if(isset($_POST['search'])){
		if(count($resultsjd)> 0){
			
			######################################## PAGE DOES EXIST ######################################
		
			?>
				<section>
					<article class="jday">
						<h2 class="sndtitle wpad sndwtc"> Sons relatifs à <?php echo($_POST['search']) ?> </h2>
						<div class="container-fluid">
							<div class="row">
								<div class="col">
									<?php foreach ($resultsjd as $rjd):?>
									<div class="contsndbox JD">
										<div id="sndbox">
											<div class="col" id="sndname">
												<?php if ($rjd['source'] != ""){ ?>
												<a class="srcvid" href="#lienvid<?=$n?>" data-toggle="modal">
												<?php echo($rjd['Nom']) ?>
												</a>
												<div id="lienvid<?=$n?>" class="vid modal fade" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
													<div class="modal-dialog modal-dialog-centered">
														<div class="modal-content">
															<iframe class="vidsrc" width="560" height="315" src="<?=$rjd['source']?>" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
														</div>
													</div>
												</div>
											<?php $n++; } else echo($rjd['Nom']); ?>
											</div>
											<audio controls>
											<source src="SBP/JDay/<?= $rjd['Son']?>" type="audio/mpeg">
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
			else{
############################################# NO RESULTS #############################################
		?>
			<section class="container-fluid">
				<article id="nosearch">
					<h2 class="sndquery wpad sndwtc"> Sons relatifs à <?php echo($_POST['search']) ?> </h2>
					<div id="noresults">
						<p>Aucun son trouvé !</p>
					</div>
				</article>
			</section>
	<?php
		}
}
else {
?>
	<!-- ############################################### JDAY############################################### -->

			<section>
				<article class="jday">
					<h2 class="sndtitle wpad" id="sndjdg">MisterJDay</h2>
					<div class="container-fluid">
						<div class="row">
							<div class="col">
								<?php
								foreach ($nomjd as $leson):?>
								<div class="contsndbox JD">
									<div id="sndbox">
										<div class="col" id="sndname">
											<?php if ($leson['source'] != ""){ ?>
											<a class="srcvid" href="#lienvid<?=$n?>" data-toggle="modal">
											<?php echo($leson['Nom']) ?>
											</a>
											<div id="lienvid<?=$n?>" class="vid modal fade" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
												<div class="modal-dialog modal-dialog-centered">
													<div class="modal-content">
														<iframe class="vidsrc" width="560" height="315" src="<?=$leson['source']?>" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
													</div>
												</div>
											</div>
										<?php $n++; } else echo($leson['Nom']); ?>
										</div>
										<audio controls>
											<source src="SBP/JDay/<?= $leson["Son"]?>" type="audio/mpeg">
										</audio>
									</div>
								</div>
								<?php endforeach;?>
							</div>
						</div>
					</div>
        </article>
			</section>
			<hr>
	<?php } ?>
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