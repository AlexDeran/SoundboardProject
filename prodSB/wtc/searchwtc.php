<?php

session_start();
//DB login

$pdo =new PDO('mysql:host=localhost; dbname=sbp; charset=utf8','root','');

	if(!$pdo){
		echo "Erreur de connexion à la base de données.";
}

else{
$pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

if(isset($_GET['searchwtc'])){
$_SESSION['searchwtc'] = $_GET['searchwtc'];
}

$searchwtc = htmlspecialchars($_SESSION['searchwtc']); 

	$pagewtc = isset($_GET['pagewtc']) ? (int)$_GET['pagewtc'] : 1;

	$perPagewtc = 15;

	$begginwtc = ($pagewtc > 1) ? ($pagewtc * $perPagewtc) - $perPagewtc : 0;

	$stmt = $pdo->prepare("SELECT SQL_CALC_FOUND_ROWS Nom, Son, source FROM wtc WHERE `Nom` LIKE ? OR `keywords` LIKE ? ORDER BY Nom ASC LIMIT {$begginwtc} , {$perPagewtc}");

	$stmt->execute(["%" . $searchwtc . "%",
	"%" . $searchwtc . "%"]);

	$resultswtc= $stmt->fetchAll(PDO::FETCH_ASSOC);

	$total = $pdo->query("SELECT FOUND_ROWS() as total ")->fetch()['total'] ;

	$pageswtc = ceil($total / $perPagewtc);

$n=1;
  }

 if($pagewtc <1 || $pagewtc > $pageswtc){
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
		<link rel="stylesheet" href="../css/wtc.css" />
		<link rel="shortcut icon" href="../img/favicon_SB/favicon.ico" type="image/x-icon">
		<script src="https://kit.fontawesome.com/95e6614a3f.js" crossorigin="anonymous"></script>

	<title>Votre Recherche WTC</title>
</head>
<body>
	<?php 

			######################################## PAGE DOES EXIST ######################################

			?>
				<header class="pgtitle">
					<div class="sndtitlejd wtc">
						<img src="../img/WTC.png" height="75" width="120">	
						<h1 class="searchtitlewtc"> Sons relatifs à <?php echo($searchwtc) ?></h1>
					</div>
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
									<a href="wtc.php">
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
						<div class= "col-md-3 col-sm-10">
							<div>
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
					</div>
				</nav>
				<section>
					<article>
						<div class="container-fluid">
							<div class="row">
								<div class="col search">
									<?php foreach ($resultswtc as $r):?>
									<div class=" sndboxwtc">
										<audio id="myAudio">
											<source src="../gestsnd/SBP/WTC/<?= $r['Son']?>" type="audio/mpeg">
											Your browser does not support the audio element.
										</audio>
										<div class="imgsnd"><img src="../img/WTC.png" height="75" width="120" onmousedown="play('../gestsnd/SBP/WTC/<?= $r['Son']?>')"></div>
										<div class="col" id="sndnamewtc">
										<?php if ($r['source'] != ""){ ?>
											<a class="srcvidwtc" href="#lienvid<?=$n?>" data-toggle="modal">
											<?php echo($r['Nom']);?>
											</a>
											<div id="lienvid<?=$n?>" class="vid modal fade" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
												<div class="modal-dialog modal-dialog-centered">
													<div class="modal-content embed-responsive embed-responsive-16by9">
														<iframe class="vidsrc embed-resposive-item" src="<?=$r['source']?>" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
													</div>
												</div>
											</div>
											<?php $n++; } else echo($r['Nom']); ?>
										</div>
									</div>
								<?php endforeach;?>
								</div>
							</div>
						</div>
					</article>
        </section>
        <nav aria-label="Page navigation example">
					<ul class="pagination justify-content-center">
						<?php if($pagewtc > 1){
						$prevwtc = $pagewtc -1;
						echo'
					<li class="page-item prev">
						<a class="page-link ad" href="?pagewtc='.$prevwtc.'" tabindex="-1" aria-disabled="true">Précédent</a>
          </li>';} 
          if($pageswtc > 1){?>
          <li class="page-item <?php if($pagewtc === 1){echo 'active';} ?>"><a class="page-link ad" href="?pagewtc=1">1<a></li> 
          <?php } ?>
					<?php for($i = max(2, $pagewtc - 2); $i <= min($pagewtc + 2, $pageswtc - 1); $i++):?>
					<li class="page-item <?php if($pagewtc === $i){echo 'active';} ?>"><a class="page-link ad" href="?pagewtc=<?=$i; ?>"><?=$i ?></a></li>
          <?php endfor;
          	if($pageswtc > 1){?>
          <li class="page-item <?php if($pagewtc == $pageswtc){echo 'active';} ?>"><a class="page-link ad" href="?pagewtc=<?=$pageswtc?>"><?=$pageswtc?><a></li> 
            <?php } ?>
					<?php if($pagewtc != $pageswtc){
						$nextwtc = $pagewtc + 1;
						echo'
					<li class="page-item next">
						<a class="page-link ad" href="?pagewtc='.$nextwtc.'">Suivant</a>
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
