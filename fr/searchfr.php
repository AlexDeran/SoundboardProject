<?php 
session_start();
//DB login

$pdo =new PDO('mysql:host=localhost; dbname=sbp; charset=utf8','root','');

if(!$pdo){
		echo "Erreur de connexion à la base de données.";
}

else{
$pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

if(isset($_GET['searchfr'])){
$_SESSION['searchfr'] = $_GET['searchfr'];
}

$searchfr = htmlspecialchars($_SESSION['searchfr']); 

  $page = isset($_GET['page']) ? (int)$_GET['page'] : 1;

	$perPage = 15;

	$beggin = ($page > 1) ? ($page * $perPage) - $perPage : 0;

	$stmt = $pdo->prepare("SELECT SQL_CALC_FOUND_ROWS Nom, Son, source FROM soundfr WHERE `Nom` LIKE ? OR `keywords` LIKE ? ORDER BY Nom ASC LIMIT {$beggin} , {$perPage}");

	$stmt->execute(["%" . $searchfr . "%",
	"%" . $searchfr . "%"]);

	$resultsfr= $stmt->fetchAll(PDO::FETCH_ASSOC);

	$total = $pdo->query("SELECT FOUND_ROWS() as total ")->fetch()['total'] ;

	$pages = ceil($total / $perPage);

$n=1;

}

if($page <1 || $page > $pages){
		header('Location:../404.html');
}
else {
  ################################################ RECHERCHE #############################################

	
			######################################## PAGE DOES EXIST ######################################
		
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
			<link rel="shortcut icon" href="../img/favicon_SB/favicon.ico" type="image/x-icon">
		<script src="https://kit.fontawesome.com/95e6614a3f.js" crossorigin="anonymous"></script>

	<title>Votre Recherche FR</title>
</head>
<body>
  <?php 

		if(count($resultsfr)> 0){
			?>
				<header class="pgtitle">	
					<h1 class="sndtitle" id="searchfr"><img src="../img/ecufr.png" height="75" width="75"> Sons relatifs à <?php echo($searchfr) ?> <img src="../img/ecufr.png" height="75" width="75"> </h1>
				</header>
				<nav class="container-fluid">
					<div id="navbox" class="row">
						<div class= "col-3">
							<div class="container-fluid">
								<a class="btn btn-success btn-lg btn-block btnsnd returnhg"
									href="../index.php"
									role="button"
								>
								<i class="fas fa-home"></i>
						<i class="fas fa-caret-left"></i>
								Accueil
								</a>
							</div>
						</div>
						<div class= "col-2">
							<div class="container-fluid">
								<a class="btn btn-primary btn-lg btn-block btnsnd returnfr"
									href="soundfr.php"
									role="button"
								>
							 Sons FR
								</a>
							</div>
						</div>
						<div class= "col-3">
							<div class="container-fluid">
								<form action="idfr.php" method="POST">
									<button class="bubble" name="sndfr" value="sndfr" style="--content: ''">
									
												<i class="fab fa-hotjar"></i> 
												 Nouveaux Sons
								
									</button>
								</form>
							</div>
						</div>
						<span id="stopsnd" class="france"></span>
					</div>
				</nav>
				<section>
					<article>
						<div class="container-fluid">
							<div class="row">
								<div class="col schwtc">
									<?php foreach ($resultsfr as $r):?>
									<div class="sndbox">
										<audio id="myAudio">
											<source src="../SBP/SFR/<?= $r['Son']?>" type="audio/mpeg">
											Your browser does not support the audio element.
										</audio>
										<div class="imgsnd"><img src="../img/ecufr.png" height="75" width="75" onmousedown="play('../SBP/SFR/<?= $r['Son']?>')"></div>
										<div class="col" id="sndname">
										<?php if ($r['source'] != ""){ ?>
											<a class="srcvid" href="#lienvid<?=$n?>" data-toggle="modal">
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
            <?php if($page > 1){
              $prev = $page -1;
              echo'
            <li class="page-item ">
              <a class="page-link" href="?page='.$prev.'" tabindex="-1" aria-disabled="true">Précédent</a>
						</li>';}
						if($pages > 1){
			?>
            <li class="page-item <?php if($page === 1){echo 'active';} ?>"><a class="page-link" href="?page=1">1<a></li> <?php }
            for($i = max(2, $page - 3); $i <= min($page + 3, $pages - 1); $i++):?>
            <li class="page-item <?php if($page === $i){echo 'active';} ?>"><a class="page-link" href="?page=<?=$i; ?>"><?=$i ?></a></li>
            <?php endfor; 
						if($pages > 1){
			?>
						<li class="page-item <?php if($page == $pages){echo 'active';} ?>"><a class="page-link" href="?page=<?=$pages?>"><?=$pages?><a></li> 
						<?php
					}
             if($page != $pages){
              $next = $page + 1;
              echo'
            <li class="page-item">
              <a class="page-link" href="?page='.$next.'">Suivant</a>
            </li>'
            ;}?>
          </ul>
        </nav>
	<?php 
      }
			else{
############################################# NO RESULTS #############################################
		?>
		<header class="pgtitle">	
		<h1 class="sndquery" id="searchfr"><img src="../img/ecufr.png" height="75" width="75"> Sons relatifs à <?php echo($searchfr) ?> <img src="../img/ecufr.png" height="75" width="75"> </h1>
	</header>
	<nav class="container-fluid">
					<div id="navbox" class="row">
						<div class= "col-4">
							<div class="container-fluid">
								<a class="btn btn-success btn-lg btn-block btnsnd returnhg"
									href="../index.php"
									role="button"
								>
								<i class="fas fa-home"></i>
						<i class="fas fa-caret-left"></i>
								Retour à l'accueil
								</a>
							</div>
						</div>
						<div class= "col-4">
							<div class="container-fluid">
								<a class="btn btn-primary btn-lg btn-block btnsnd returnfr"
									href="soundfr.php"
									role="button"
								>
								Retour aux sons FR
								</a>
							</div>
						</div>
					</div>
				</nav>
			<section class="container-fluid">
				<article id="nosearch" class="fr">
					<div>
						<p>Aucun son trouvé !</p>
					</div>
				</article>
			</section>
			<?php
};
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
<?php
}
?>