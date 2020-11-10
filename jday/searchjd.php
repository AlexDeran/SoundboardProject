<?php

session_start();
//DB login

$pdo =new PDO('mysql:host=localhost; dbname=sbp; charset=utf8','root','');

	if(!$pdo){
		echo "Erreur de connexion à la base de données.";
}

else{
$pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

if(isset($_GET['searchjday'])){
$_SESSION['searchjday'] = $_GET['searchjday'];
}

$searchjday = htmlspecialchars($_SESSION['searchjday']); 

	$pagejday = isset($_GET['pagejday']) ? (int)$_GET['pagejday'] : 1;

	$perPagejday = 15;

	$begginjday = ($pagejday > 1) ? ($pagejday * $perPagejday) - $perPagejday : 0;

	$stmt = $pdo->prepare("SELECT SQL_CALC_FOUND_ROWS Nom, Son, source FROM jday WHERE `Nom` LIKE ? OR `keywords` LIKE ? ORDER BY Nom ASC LIMIT {$begginjday} , {$perPagejday}");

	$stmt->execute(["%" . $searchjday . "%",
	"%" . $searchjday . "%"]);

	$resultsjday= $stmt->fetchAll(PDO::FETCH_ASSOC);

	$total = $pdo->query("SELECT FOUND_ROWS() as total ")->fetch()['total'] ;

	$pagesjday = ceil($total / $perPagejday);

$n=1;
  }

 if($pagejday <1 || $pagejday > $pagesjday){
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
		<link rel="stylesheet" href="../css/search.css" />
		<link rel="stylesheet" href="../css/buttons.css" />
			<link rel="shortcut icon" href="../img/favicon_SB/favicon.ico" type="image/x-icon">
		<script src="https://kit.fontawesome.com/95e6614a3f.js" crossorigin="anonymous"></script>

	<title>Votre Recherche JDay</title>
</head>
<body>
	<?php 

			######################################## PAGE DOES EXIST ######################################
			?>
				<header class="pgtitle">
					<div class="sndtitlejd jday">
						<img src="../img/jday.png" height="75" width="75">	
						<h1 class="searchtitle"> Sons relatifs à <?php echo($searchjday) ?></h1>
					</div>
				</header>
				<nav class="container-fluid">
					<div id="navbox" class="row">
						<div class= "col-3">
							<div class="container-fluid">
								<ul class="btns">
									<a href="../index.php">
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
						<div class= "col-3">
							<div class="container-fluid">
								<ul class="btns">
									<a href="JDay.php">
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
						<div class= "col-3">
							<div class="container-fluid">
								<ul class="btns">
									<a href="idjd.php">
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
						<span id="stopsnd" class="whyt"></span>
					</div>
				</nav>
				<section>
					<article>
						<div class="container-fluid">
							<div class="row">
								<div class="col schwtc">
									<?php foreach ($resultsjday as $r):?>
									<div class=" sndboxjday">
										<audio id="myAudio">
											<source src="../gestsnd/SBP/JDay/<?= $r['Son']?>" type="audio/mpeg">
											Your browser does not support the audio element.
										</audio>
										<div class="imgsnd"><img src="../img/jday.png" height="75" width="75" onmousedown="play('../gestsnd/SBP/JDay/<?= $r['Son']?>')"></div>
										<div class="col" id="sndnamejd">
										<?php if ($r['source'] != ""){ ?>
											<a class="srcvidjday" href="#lienvid<?=$n?>" data-toggle="modal">
											<?php echo($r['Nom']);?>
											</a>
											<div id="lienvid<?=$n?>" class="vid modal fade" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
												<div class="modal-dialog modal-dialog-centered">
													<div class="modal-content">
														<iframe class="vidsrc" width="560" height="315" src="<?=$r['source']?>" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
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
		      <ul class="pagination pagination-lg justify-content-center">
						<?php if($pagejday > 1){
						$prevjday = $pagejday -1;
						echo'
					<li class="page-item ">
						<a class="page-link ad" href="?pagejday='.$prevjday.'" tabindex="-1" aria-disabled="true">Précédent</a>
          </li>';} 
          if($pagesjday > 1){?>
          <li class="page-item <?php if($pagejday === 1){echo 'active';} ?>"><a class="page-link ad" href="?pagejday=1">1<a></li> 
          <?php } ?>
					<?php for($i = max(2, $pagejday - 3); $i <= min($pagejday + 3, $pagesjday - 1); $i++):?>
					<li class="page-item <?php if($pagejday === $i){echo 'active';} ?>"><a class="page-link ad" href="?pagejday=<?=$i; ?>"><?=$i ?></a></li>
          <?php endfor;
          	if($pagesjday > 1){?>
          <li class="page-item <?php if($pagejday == $pagesjday){echo 'active';} ?>"><a class="page-link ad" href="?pagejday=<?=$pagesjday?>"><?=$pagesjday?><a></li> 
            <?php } ?>
					<?php if($pagejday != $pagesjday){
						$nextjday = $pagejday + 1;
						echo'
					<li class="page-item">
						<a class="page-link ad" href="?pagejday='.$nextjday.'">Suivant</a>
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
