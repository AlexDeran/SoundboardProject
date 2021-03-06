<?php

session_start();
//DB login

$pdo =new PDO('mysql:host=localhost; dbname=sbp; charset=utf8','root','');

if(!$pdo){
		echo "Erreur de connexion à la base de données.";
}

$pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

	$pageid = isset($_GET['pageid']) ? (int)$_GET['pageid'] : 1;

	$perPageid = 13;

	$begginid = ($pageid > 1) ? ($pageid * $perPageid) - $perPageid : 0;

	$id = $pdo->prepare("SELECT SQL_CALC_FOUND_ROWS Nom, Son, source FROM soundfr ORDER BY ID DESC LIMIT {$begginid} , {$perPageid}");

	$id->execute();

	$idfinal = $id->fetchAll(PDO::FETCH_ASSOC);

	$totalid = $pdo->query("SELECT FOUND_ROWS() as totalid ")->fetch()['totalid'] ;

	$pagesid = ceil($totalid / $perPageid);

	$n = 1;
	
	if($pageid <1 || $pageid > $pagesid){
		header('Location:../404.html');
}
else {
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
	
		<link rel="stylesheet" href="../css/fr.css">
			<link rel="shortcut icon" href="../img/favicon_SB/favicon.ico" type="image/x-icon">
		<script src="https://kit.fontawesome.com/95e6614a3f.js" crossorigin="anonymous"></script>

	<title>Nouveaux Sons FRANCE</title>
</head>
<body>
	<header class="pgtitle">	
		<h1 class="sndtitle" id="sndfr"><img src="../img/france-1524418_6402.png" height="75" width="75"> Sons FRANCE <img src="../img/france-1524418_6402.png" height="75" width="75"></h1>
	</header>
	<nav class="container-fluid">
		<div class="alert alert-info alert-dismissible fade show container" role="alert">
						Hey ! N'hésite pas à cliquer sur le nom d'un son lorsque c'est possible pour avoir sa source !
						<button type="button" class="close" data-dismiss="alert" aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
		<div id="navbox" class="row">
			<div class= "col-md-3 col-sm-10">
				<div>
					<ul class="btns">
						<a href="../index.html">
							<li class="btnmain acc">
								<span></span><span></span><span></span><span></span>
								<i class="fas fa-home"></i>
									&nbsp;
								<i class="fas fa-caret-left"></i>
									Retour à l'accueil
								<span></span><span></span><span></span><span></span>
							</li>
						</a>
					</ul>
				</div>
			</div>
			<div class= "col-md-3 col-sm-10">
				<div>
					<ul class="btns">
						<a href="soundfr.php">
							<li class="btnmain a-z">
								<span></span><span></span><span></span><span></span>
								<i class="fas fa-sort-alpha-up"></i>
									&nbsp;
									Ordre Alphabétique
								<span></span><span></span><span></span><span></span>
							</li>
						</a>
					</ul>
				</div>
			</div>
			<span id="stopsnd" class="france"></span>
			<form id="searchbox2" action="searchfr.php" class="form-inline my-2 my-lg-0" method="GET">
				<input id="searchbox" class="form-control mr-sm-2" type="search"
					name="searchfr" placeholder="Rechercher un son" aria-label="Search" required>
				<button class="btn btn-success my-2 my-sm-0" value="search" type="submit"><i class="fas fa-search"></i></button>
			</form>
		</div>
	</nav>
	<section>
		<article class="sounds">
			<div class="container-fluid">
				<div class="row">
					<div class="col">
					<?php foreach($idfinal as $sons) : ?>
						<div class="sndbox">
							<audio id="myAudio">
								<source src="../gestsnd/SBP/SFR/<?= $sons['Son']?>" type="audio/mpeg">
								Your browser does not support the audio element.
							</audio>
							<div class="imgsnd"><img src="../img/france-1524418_6402.png" height="75" width="75" onmousedown="play('../gestsnd/SBP/SFR/<?= $sons['Son']?>')"></div>
							<div class="col" id="sndname">
							<?php if ($sons['source'] != ""){ ?>
								<a class="srcvid" href="#lienvid<?=$n?>" data-toggle="modal">
								<?php echo($sons['Nom']);?>
								</a>
								<div id="lienvid<?=$n?>" class="vid modal fade" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
									<div class="modal-dialog modal-dialog-centered">
										<div class="modal-content embed-responsive embed-responsive-16by9">
											<iframe class="vidsrc embed-resposive-item" src="<?=$sons['source']?>" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
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
		<ul class="pagination justify-content-center">
			<?php if($pageid > 1){
				$prev = $pageid -1;
				echo'
			<li class="page-item prev">
				<a class="page-link" href="?pageid='.$prev.'" tabindex="-1" aria-disabled="true">Précédent</a>
			</li>';} ?>
			<li class="page-item <?php if($pageid === 1){echo 'active';} ?>"><a class="page-link" href="?pageid=1">1<a></li> 
			<?php for($i = max(2, $pageid - 2); $i <= min($pageid + 2, $pagesid - 1); $i++):?>
			<li class="page-item <?php if($pageid === $i){echo 'active';} ?>"><a class="page-link" href="?pageid=<?=$i; ?>"><?=$i ?></a></li>
			<?php endfor; ?>
			<li class="page-item <?php if($pageid == $pagesid){echo 'active';} ?>"><a class="page-link" href="?pageid=<?=$pagesid?>"><?=$pagesid?><a></li> 
			<?php if($pageid != $pagesid){
				$next = $pageid + 1;
				echo'
			<li class="page-item next">
				<a class="page-link" href="?pageid='.$next.'">Suivant</a>
			</li>'
			 ;}?>
		</ul>
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
			<script src="../js/app.js"></script>
	</body>
</html>
<?php 
}
?>
