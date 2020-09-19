<?php
session_start();
//DB login

$pdo =new PDO('mysql:host=localhost; dbname=sbp; charset=utf8','root','');

if(!$pdo){
		echo "Erreur de connexion à la base de données.";
}

$pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

if(isset($_POST['search'])){

	// $pageS = isset($_GET['pageS']) ? (int)$_GET['pageS'] : 1;

	// $perPageS = 16;

	// $begginS = ($pageS > 1) ? ($pageS * $perPageS) - $perPageS : 0;

	$stmt = $pdo->prepare("SELECT * FROM `soundw` WHERE `Nom` LIKE ? OR `keywords` LIKE ? ORDER BY Nom ASC");

	$stmt->execute([
	"%" . $_POST['search'] . "%",
	"%" . $_POST['search'] . "%"
	]);

	$resultsw = $stmt->fetchAll(PDO::FETCH_ASSOC);

	// $totalS = $pdo->query("SELECT FOUND_ROWS() as totalS ")->fetch()['totalS'] ;

	// $pagesS = ceil($totalS / $perPageS);

}

else{

$page = isset($_GET['page']) ? (int)$_GET['page'] : 1;

$perPage = 16;

$beggin = ($page > 1) ? ($page * $perPage) - $perPage : 0;

$nomw = $pdo->prepare("SELECT SQL_CALC_FOUND_ROWS Nom, Son, source FROM soundw ORDER BY Nom ASC LIMIT {$beggin} , {$perPage}");

$nomw->execute();

$nomw= $nomw->fetchAll(PDO::FETCH_ASSOC);

$total = $pdo->query("SELECT FOUND_ROWS() as total ")->fetch()['total'] ;

$pages = ceil($total / $perPage);

}

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
		<title>Sons World</title>
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
        <form id="search" action="soundworld.php" class="form-inline my-2 my-lg-0 col-md-3" method="POST">
            <input id="searchbox" class="form-control mr-sm-2" type="search"
              name="search" placeholder="Rechercher un son" aria-label="Search" required>
            <button class="btn btn-success my-2 my-sm-0" value="search" type="submit"><i class="fas fa-search"></i></button>
          </form>	
        </div>
			</nav>

      <?php
      
 ############################################# RECHERCHE #############################################

	if(isset($_POST['search'])){
		if(count($resultsw)> 0){
			
			######################################## PAGE DOES EXIST ######################################
		
			?>
				<section>
					<article class="wrld">
						<h2 class="sndtitle" id="sndwld"><img src="img/earth-min.png" height="75" width="75" > Sons relatifs à <?php echo($_POST['search']) ?> <img src="img/earth-min.png" height="75" width="75" > </h2>
						<div class="container-fluid">
							<div class="row">
								<div class="col">
									<?php foreach ($resultsw as $rw):?>
									<div class="contsndbox world">
										<div id="sndbox">
											<div class="col" id="sndname"><?php if ($rw['source'] != ""){ ?>
												<a class="srcvid" href="#lienvid<?=$n?>" data-toggle="modal">
												<?php echo($rw['Nom']) ?>
												</a>
												<div id="lienvid<?=$n?>" class="vid modal fade" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
													<div class="modal-dialog modal-dialog-centered">
														<div class="modal-content">
															<iframe class="vidsrc" width="560" height="315" src="<?=$rw['source']?>" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
														</div>
													</div>
												</div>
											<?php $n++; } else echo($rw['Nom']); ?>
											</div>
											<audio controls>
											<source src="SBP/SWLD/<?= $rw['Son']?>" type="audio/mpeg">
											</audio>
										</div>
									</div>
								<?php endforeach;?>
								</div>
							</div>
						</div>
					</article>
				</section>
				<div id="btntop" class="container-fluid">
        	<a href="#top" id="myBtnfr2top" class="butcons" title="Go to top"><i class="fas fa-chevron-up"></i> GO UP </a> 
      	</div>
	<?php 
			}
			else{
############################################# NO RESULTS #############################################
		?>
			<section class="container-fluid">
				<article class="nosearch" class="wrld">
					<h2 class="sndquery" id="sndwld"><img src="img/earth-min.png" height="75" width="75" > Sons relatifs à <?php echo($_POST['search']) ?> <img src="img/earth-min.png" height="75" width="75" > </h2>
					<div id="noresults">
						<p>Aucun son trouvé !</p>
					</div>
				</article>
			</section>
	<?php
		}
}
	else{

	########################################### PAGE DOES NOT EXIST (404) ############################################

	if($page <1 || $page > $pages){?>
	<section class="container-fluid">
		<article id="nosearch" class="wrld">
			<div id="noresults">
				<p>La page que vous demandez n'existe pas !</p>
			</div>
		</article>
	</section>
	<?php

################################################## PAGE DOES EXIST #################################################
	} else {  ?>

			<section>
				<article class="wrld">
					<h2 class="sndtitle" id="sndw"><img src="img/earth-min.png" height="75" width="75" > Sons World <img src="img/earth-min.png" height="75" width="75" ></h2>
					<div class="container-fluid">
						<div class="row">
							<div class="col">
									<?php foreach ($nomw as $lesonw): ?>
									<div class="contsndbox world">
										<div id="sndbox">
											<div class="col" id="sndname"><?php if ($lesonw['source'] != ""){ ?>
									<a class="srcvid" href="#lienvid<?=$n?>" data-toggle="modal">
									<?php echo($lesonw['Nom']) ?>
									</a>
									<div id="lienvid<?=$n?>" class="vid modal fade" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
										<div class="modal-dialog modal-dialog-centered">
											<div class="modal-content">
												<iframe class="vidsrc" width="560" height="315" src="<?=$lesonw['source']?>" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
											</div>
										</div>
									</div>
								<?php $n++; } else echo($lesonw['Nom']); ?>
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
    	<nav aria-label="Page navigation example">
				<ul class="pagination pagination-lg justify-content-center">
				<?php if($page > 1){
			$prev = $page -1;
			echo'<li class="page-item ">
				<a class="page-link ad" href="?page='.$prev.'" tabindex="-1" aria-disabled="true">Précédent</a>
			</li>';} ?>
			<li class="page-item <?php if($page === 1){echo 'active';} ?>"><a class="page-link ad" href="?page=1">1<a></li> 
			<?php for($i = max(2, $page - 3); $i <= min($page + 3, $pages - 1); $i++):?>
			<li class="page-item <?php if($page === $i){echo 'active';} ?>"><a class="page-link ad" href="?page=<?=$i; ?>"><?=$i ?></a></li>
			<?php endfor; ?>
			<li class="page-item <?php if($page == $pages){echo 'active';} ?>"><a class="page-link ad" href="?page=<?=$pages?>"><?=$pages?><a></li> 
			<?php if($page != $pages){
				$next = $page + 1;
				echo'
			<li class="page-item">
				<a class="page-link ad" href="?page='.$next.'">Suivant</a>
			</li>'
				;}?>
				</ul>
			</nav>
		<?php 
		} 
	} 
	?>

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
