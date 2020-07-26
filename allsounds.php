<?php
session_start();
//DB login

$pdo =new PDO('mysql:host=localhost; dbname=sbp; charset=utf8','root','');

if(!$pdo){
		echo "Erreur de connexion à la base de données.";
}

$pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

if($_POST["allsnds"] == "Tous les sons"){

$nom = $pdo->query('SELECT Nom, Son FROM soundfr');

		if($nom):
				$lenom = $nom->fetchAll(PDO::FETCH_ASSOC);

		else:
				$lenom = false;
    endif;

$nomw = $pdo->query('SELECT Nom, Son FROM soundw');

		if($nomw):
				$lenomw = $nomw->fetchAll(PDO::FETCH_ASSOC);

		else:
				$lenomw = false;
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

      <?php
      
 ############################################# ALL SOUNDS #############################################

				?>
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
        <form id="search" action="index.php" class="form-inline my-2 my-lg-0 col-md-3" method="POST">
            <input id="searchbox" class="form-control mr-sm-2" type="search"
              name="search" placeholder="Rechercher un son" aria-label="Search" required>
            <button class="btn btn-success my-2 my-sm-0" value="search" type="submit"><i class="fas fa-search"></i></button>
        </form>
        <div class="container-fluid row">
          <div id="myBtnW" class="butcons">
            <a href="#sndw" title="Go to Sons World">Sons World</a>
          </div>
          <div id="myBtnWTC"class="butcons">
            <a href="#sndw" title="Go to Sons World">Mhvt th9 cnt ?!</a>
          </div>
          <div id="myBtnJDG" class="butcons">
            <a href="#sndw" title="Go to Sons World">J0n9nr dn 9r9ui9r</a>
          </div>
        </div>	
      </div>
		</nav>

	<!-- ############################################### SOUND FR ############################################### -->

			<section>
				<article class="fr">
					<h2 class="sndtitle" id="sndfr"><img src="img/ecufr.png" height="100" width="100"> Sons FR <img src="img/ecufr.png" height="100" width="100"></h2>
					<div class="container-fluid">
						<div class="row">
							<div class="col">
								<?php
								foreach ($lenom as $leson):?>
								<div class="contsndbox fra">
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
        <article class="wrld">
					<h2 class="sndtitle" id="sndw"><img src="img/earth-min.png"> Sons World <img src="img/earth-min.png" ></h2>
					<div class="container-fluid">
						<div class="row">
							<div class="col">
									<?php foreach ($lenomw as $lesonw): ?>
									<div class="contsndbox world">
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
      <div id="btnfr" class="container-fluid">
        <a href="#top" id="myBtnfr2top" class="butcons" title="Go to top"><i class="fas fa-chevron-up"></i> GO UP </a> 
      </div>
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

<?php 
}
else{
  header("Location : index.php");
}
?>
