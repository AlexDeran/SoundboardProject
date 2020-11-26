<?php 

session_start();
//DB login

$pdo =new PDO('mysql:host=localhost; dbname=sbp; charset=utf8','root','');

if(!$pdo){
		echo "Erreur de connexion à la base de données.";
}

else{
	$pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

	$page = isset($_GET['page']) ? (int)$_GET['page'] : 1;

	$perPage = 15;

	$beggin = ($page > 1) ? ($page * $perPage) - $perPage : 0;

	$nomwtc = $pdo->prepare("SELECT SQL_CALC_FOUND_ROWS Nom, Son, source FROM wtc ORDER BY Nom ASC LIMIT {$beggin} , {$perPage}");

	$nomwtc->execute();

	$nomwtcut= $nomwtc->fetchAll(PDO::FETCH_ASSOC);

	$total = $pdo->query("SELECT FOUND_ROWS() as total ")->fetch()['total'] ;

	$pages = ceil($total / $perPage);

}

$n = 1;

	?>

<!DOCTYPE html>
<html lang="fr">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link
			rel="stylesheet"
			href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
			integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
			crossorigin="anonymous"
		/>
		<link rel="stylesheet" href="../css/style.css" />
	
		<link rel="stylesheet" href="../css/wtc.css" />
		<link rel="shortcut icon" href="../img/favicon_SB/favicon.ico" type="image/x-icon">
		<script src="https://kit.fontawesome.com/95e6614a3f.js" crossorigin="anonymous"></script>

	<title>What The Cut?!</title>
</head>
<body>
<?php

	########################################### PAGE DOES NOT EXIST (404) ############################################

	if($page <1 || $page > $pages){
		header('Location:../404.html');
}
################################################## PAGE DOES EXIST #################################################

 else {  ?>
<header class="pgtitle">	
		<h1 class="sndtitle wtc"><img src="../img/wtc.jpg" height="100" width="165"></h1>
	</header>
	<nav class="container-fluid">
		<div id="navbox" class="row">
			<div class= "col-3">
				<div class="container-fluid">
					<ul class="btns">
						<a href="../index.html">
							<li class="btnmain acc">
								<span></span><span></span><span></span><span></span>
								<i class="fas fa-home"></i>
								<i class="fas fa-caret-left"></i>
								&nbsp;
									Retour à l'accueil
								<span></span><span></span><span></span><span></span>
							</li>
						</a>
					</ul>
				</div>
			</div>
			<div class= "col-3">
					<div class="container-fluid">
						<ul class="btns">
							<a href="idwtc.php">
								<li class="btnmain suppr">
									<span></span><span></span><span></span><span></span>
									<i class="fab fa-hotjar"></i> 
									&nbsp;
										Nouveaux sons
									<span></span><span></span><span></span><span></span>
								</li>
							</a>
						</ul>
					</div>
				</div>	
			<span id="stopsnd" class="blk"></span>
			<form id="searchbox2" action="searchwtc.php" class="form-inline my-2 my-lg-0" method="GET">
				<input id="searchbox" class="form-control mr-sm-2" type="search"
					name="searchwtc" placeholder="Rechercher un son" aria-label="Search" required>
				<button class="btn btn-success my-2 my-sm-0" value="search" type="submit"><i class="fas fa-search"></i></button>
			</form>
		</div>
	</nav>
	<section>
		<article class="soundswtc">
			<div class="container-fluid">
				<div class="row">
					<div class="col">
					<?php foreach($nomwtcut as $sons) : ?>
						<div class="sndboxwtc">
							<audio id="myAudio">
								<source src="../gestsnd/SBP/WTC/<?= $sons['Son']?>" type="audio/mpeg">
								Your browser does not support the audio element.
							</audio>
							<div class="imgsnd"><img src="../img/WTC.png" height="75" width="120" onmousedown="play('../gestsnd/SBP/WTC/<?= $sons['Son']?>')"></div>
							<div class="col" id="sndnamewtc">
							<?php if ($sons['source'] != ""){ ?>
								<a class="srcvidwtc" href="#lienvid<?=$n?>" data-toggle="modal">
								<?php echo($sons['Nom']);?>
								</a>
								<div id="lienvid<?=$n?>" class="vid modal fade" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
									<div class="modal-dialog modal-dialog-centered">
										<div class="modal-content">
											<iframe class="vidsrc" width="560" height="315" src="<?=$sons['source']?>" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
										</div>
									</div>
								</div>
								<?php $n++; } else echo($sons['Nom']); ?>
							</div>
						</div>
						<?php endforeach ?>
					</div>
				</div>
			</div>
		</article>
	</section>

				<!-- ########################################## PAGINATION ########################################## -->

	<nav aria-label="Page navigation example">
		<ul class="pagination pagination-lg justify-content-center">
				<?php if($page > 1){
				$prev = $page -1;
				echo'
			<li class="page-item">
				<a class="page-link ad" href="?page='.$prev.'" tabindex="-1" aria-disabled="true">Précédent</a>
			</li>';} 
			if($pages > 1){
			?>
			<li class="page-item <?php if($page === 1){echo 'active';} ?>"><a class="page-link ad" href="?page=1">1<a></li> 
			<?php ;}
			 for($i = max(2, $page - 3); $i <= min($page + 3, $pages - 1); $i++):?>
			<li class="page-item <?php if($page === $i){echo 'active';} ?>"><a class="page-link ad" href="?page=<?=$i; ?>"><?=$i ?></a></li>
			<?php endfor;
				if($pages > 1){
			?>
			
			<li class="page-item <?php if($page == $pages){echo 'active';} ?>"><a class="page-link ad" href="?page=<?=$pages?>"><?=$pages?><a></li> 

				<?php ;}
				 if($page != $pages){
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
	?>

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
			<script src="../js/app.js"></script>
	</body>
</html>

