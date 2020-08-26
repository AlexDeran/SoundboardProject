<!-- <?php

$pdo =new PDO('mysql:host=localhost; dbname=sbp; charset=utf8','root','');

$total_pages = $pdo->query('SELECT COUNT(*) FROM soundfr');
$total_pages->fetchAll(PDO::FETCH_ASSOC)[0];

// Check if the page number is specified and check if it's a number, if not return the default page number which is 1.
$page = isset($_GET['page']) && is_numeric($_GET['page']) ? $_GET['page'] : 1;

// Number of results to show on each page.
$num_results_on_page = 20;

if ($stmt = $pdo->prepare('SELECT * FROM soundfr ORDER BY Nom ASC LIMIT :calc,:num')) {
	// Calculate the page to get the results we need from our table.
	$calc_page = ($page - 1) * $num_results_on_page;
  $stmt->bindParam(':calc',$calc_page,PDO::PARAM_STR);
  $stmt->bindParam(':num', $num_results_on_page,PDO::PARAM_STR);
	$stmt->execute(); 
	// Get the results...
	$result = $stmt->fetchAll(PDO::FETCH_ASSOC);
  
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
			<link rel="shortcut icon" href="img/favicon_SB/favicon.ico" type="image/x-icon">
		<script src="https://kit.fontawesome.com/95e6614a3f.js" crossorigin="anonymous"></script>

		<title>Soundboard</title>
	</head>
	<body>

		

		<header class="container-fluid">
			<h1 id="top"><a id="top" href="index.php">Soundboard</a></h1>
		</header>

      <?php
      
 ############################################# NORMAL PAGE (NO SEARCH) #############################################

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
        </div>
			</nav>



			<section>
				<article class="fr">
					<h2 class="sndtitle" id="sndfr"><img src="img/ecufr.png" height="100" width="100"> Sons FR <img src="img/ecufr.png" height="100" width="100"></h2>
					<div class="container-fluid">
						<div class="row">
							<div class="col">
								<?php
								foreach ($result as $leson):?>
								<div class="contsndbox fra">
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
											<source src="SBP/SFR/<?= $leson["Son"]?>" type="audio/mpeg">
										</audio>
									</div>
								</div>
								<?php endforeach ?>
							</div>
						</div>
					</div>
        </article>
      </section>

      <?php if (ceil($total_pages / $num_results_on_page) > 0): ?>
<ul class="pagination">
	<?php if ($page > 1): ?>
	<li class="prev"><a href="pagination.php?page=<?php echo $page-1 ?>">Prev</a></li>
	<?php endif; ?>

	<?php if ($page > 3): ?>
	<li class="start"><a href="pagination.php?page=1">1</a></li>
	<li class="dots">...</li>
	<?php endif; ?>

	<?php if ($page-2 > 0): ?><li class="page"><a href="pagination.php?page=<?php echo $page-2 ?>"><?php echo $page-2 ?></a></li><?php endif; ?>
	<?php if ($page-1 > 0): ?><li class="page"><a href="pagination.php?page=<?php echo $page-1 ?>"><?php echo $page-1 ?></a></li><?php endif; ?>

	<li class="currentpage"><a href="pagination.php?page=<?php echo $page ?>"><?php echo $page ?></a></li>

	<?php if ($page+1 < ceil($total_pages / $num_results_on_page)+1): ?><li class="page"><a href="pagination.php?page=<?php echo $page+1 ?>"><?php echo $page+1 ?></a></li><?php endif; ?>
	<?php if ($page+2 < ceil($total_pages / $num_results_on_page)+1): ?><li class="page"><a href="pagination.php?page=<?php echo $page+2 ?>"><?php echo $page+2 ?></a></li><?php endif; ?>

	<?php if ($page < ceil($total_pages / $num_results_on_page)-2): ?>
	<li class="dots">...</li>
	<li class="end"><a href="pagination.php?page=<?php echo ceil($total_pages / $num_results_on_page) ?>"><?php echo ceil($total_pages / $num_results_on_page) ?></a></li>
	<?php endif; ?>

	<?php if ($page < ceil($total_pages / $num_results_on_page)): ?>
	<li class="next"><a href="pagination.php?page=<?php echo $page+1 ?>">Next</a></li>
	<?php endif; ?>
</ul>

<?php endif; ?>
      <div id="btntop" class="container-fluid">
        <a href="#top" id="myBtnfr2top" class="butcons" title="Go to top"><i class="fas fa-chevron-up"></i> GO UP </a> 
      </div>
			<hr>


	<footer>Bravo à toi, tu es en bas.</footer>
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
			<script src="js/app.js"></script>
	</body>
</html> -->

