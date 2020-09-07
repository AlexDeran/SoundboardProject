<?php if(isset($_POST['search'])){
		switch($_POST['search']){

				case(count($resultsfr)> 0 && count($resultsw) > 0 && count($resultswtc) > 0 && count($resultsjd) >0) : ?>
				
				<nav id="navbox" class="row">
					<div class= "col-8">
						<div class="container-fluid">
							<a class="btn btn-success btn-lg btn-block btnsnd returnh"
								href="index.php"
								role="button"
							>
							Retour à l'accueil
							</a>
						</div>
					</div>
					<form id="searchbox2" action="index.php" class="form-inline my-2 my-lg-0 col-3" method="POST">
						<input id="searchbox" class="form-control mr-sm-2" type="search"
							name="search" placeholder="Rechercher un son" aria-label="Search" required>
						<button class="btn btn-success my-2 my-sm-0" value="search" type="submit"><i class="fas fa-search"></i></button>
					</form>
				</nav>
				<section>
					<article class="frsearch">
						<h2 class="sndtitle" id="sndsearch"> Sons relatifs à <?php echo($_POST['search']) ?> </h2>
						<div class="container-fluid">
							<div class="row">
								<div class="col">
									<?php foreach ($resultsfr as $r):?>
										<div class="contsndbox fra">
											<div id="sndbox">
												<div class="col" id="sndname"><?php echo($r['Nom']) ?>
												</div>
												<audio controls>
													<source src="SBP/SFR/<?= $r['Son']?>" type="audio/mpeg">
												</audio>
											</div>
										</div>
									<?php endforeach;?>
								</div>
							</div>
						</div>
					</article>
					<article class="wrldsearch">
						<div class="container-fluid">
							<div class="row">
								<div class="col">
									<?php foreach ($resultsw as $rw): ?>
									<div class="contsndbox world">
										<div id="sndbox">
											<div class="col" id="sndname"><?php echo($rw['Nom']) ?>
										</div>
										<audio controls>
											<source src="SBP/SWLD/<?= $rw["Son"]?>" type="audio/mpeg">
										</audio>
									</div>
								</div>
								<?php endforeach;?>
							</div>
						</div>
					</article>
					<article class="wtcsearch">
					<div class="container-fluid">
						<div class="row">
							<div class="col">
								<?php
								foreach ($resultswtc as $rwtc):?>
								<div class="contsndbox wat">
									<div id="sndbox">
										<div class="col" id="sndname">
											<?php echo($rwtc['Nom']) ?>
										</div>
										<audio controls>
											<source src="SBP/WTC/<?= $rwtc["Son"]?>" type="audio/mpeg">
										</audio>
									</div>
								</div>
								<?php endforeach;?>
							</div>
						</div>
					</div>
				</article>
				<article class="jday">
					<h2 class="sndtitle" id="sndjdg">MisterJDay</h2>
					<div class="container-fluid">
						<div class="row">
							<div class="col">
								<?php
								foreach ($resultsjd as $rjd):?>
								<div class="contsndbox">
									<div id="sndbox">
										<div class="col" id="sndname">
											<?php echo($rjd['Nom']) ?>
										</div>
										<audio controls>
											<source src="SBP/JDay/<?= $rjd["Son"]?>" type="audio/mpeg">
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
					<a href="#top" id="myBtnfr2top" title="Go to top"><i class="fas fa-chevron-up"></i> GO UP </a> 
				</div>
								<?php break;

################################################ RECHERCHE FR + WRLD ###############################################

								case(count($resultsfr)> 0 && count($resultsw) > 0) : ?>
				
				<nav id="navbox" class="row">
					<div class= "col-8">
						<div class="container-fluid">
							<a class="btn btn-success btn-lg btn-block btnsnd returnh"
								href="index.php"
								role="button"
							>
							Retour à l'accueil
							</a>
						</div>
					</div>
					<form id="searchbox2" action="index.php" class="form-inline my-2 my-lg-0 col-3" method="POST">
						<input id="searchbox" class="form-control mr-sm-2" type="search"
							name="search" placeholder="Rechercher un son" aria-label="Search" required>
						<button class="btn btn-success my-2 my-sm-0" value="search" type="submit"><i class="fas fa-search"></i></button>
					</form>
				</nav>
				<section>
					<article class="frsearch">
						<h2 class="sndtitle" id="sndsearch"> Sons relatifs à <?php echo($_POST['search']) ?> </h2>
						<div class="container-fluid">
							<div class="row">
								<div class="col">
									<?php foreach ($resultsfr as $r):?>
										<div class="contsndbox fra">
											<div id="sndbox">
												<div class="col" id="sndname"><?php echo($r['Nom']) ?>
												</div>
												<audio controls>
													<source src="SBP/SFR/<?= $r['Son']?>" type="audio/mpeg">
												</audio>
											</div>
										</div>
									<?php endforeach;?>
								</div>
							</div>
						</div>
					</article>
					<article class="wrldsearch worldfr">
						<div class="container-fluid">
							<div class="row">
								<div class="col">
									<?php foreach ($resultsw as $rw): ?>
									<div class="contsndbox world">
										<div id="sndbox">
											<div class="col" id="sndname"><?php echo($rw['Nom']) ?>
										</div>
										<audio controls>
											<source src="SBP/SWLD/<?= $rw["Son"]?>" type="audio/mpeg">
										</audio>
									</div>
								</div>
								<?php endforeach;?>
							</div>
						</div>
					</article>
				</section>
				<div id="btnfr" class="container-fluid">
					<a href="#top" id="myBtnfr2top" title="Go to top"><i class="fas fa-chevron-up"></i> GO UP </a> 
				</div>
								<?php break;

################################################ RECHERCHE FR + WTC ###############################################

				case (count($resultsfr)> 0 && count($resultswtc) > 0) : ?>
				
				<nav id="navbox" class="row">
					<div class= "col-8">
						<div class="container-fluid">
							<a class="btn btn-success btn-lg btn-block btnsnd returnh"
								href="index.php"
								role="button"
							>
							Retour à l'accueil
							</a>
						</div>
					</div>
					<form id="searchbox2" action="index.php" class="form-inline my-2 my-lg-0 col-3" method="POST">
						<input id="searchbox" class="form-control mr-sm-2" type="search"
							name="search" placeholder="Rechercher un son" aria-label="Search" required>
						<button class="btn btn-success my-2 my-sm-0" value="search" type="submit"><i class="fas fa-search"></i></button>
					</form>
				</nav>
				<section>
					<article class="frsearch">
						<h2 class="sndtitle" id="sndsearch"> Sons relatifs à <?php echo($_POST['search']) ?> </h2>
						<div class="container-fluid">
							<div class="row">
								<div class="col">
									<?php foreach ($resultsfr as $r):?>
										<div class="contsndbox fra">
											<div id="sndbox">
												<div class="col" id="sndname"><?php echo($r['Nom']) ?>
												</div>
												<audio controls>
													<source src="SBP/SFR/<?= $r['Son']?>" type="audio/mpeg">
												</audio>
											</div>
										</div>
									<?php endforeach;?>
								</div>
							</div>
						</div>
					</article>
					<article class="wtcsearch">
					<div class="container-fluid">
						<div class="row">
							<div class="col">
								<?php
								foreach ($resultswtc as $rwtc):?>
								<div class="contsndbox wat">
									<div id="sndbox">
										<div class="col" id="sndname">
											<?php echo($rwtc['Nom']) ?>
										</div>
										<audio controls>
											<source src="SBP/WTC/<?= $rwtc["Son"]?>" type="audio/mpeg">
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
					<a href="#top" id="myBtnfr2top" title="Go to top"><i class="fas fa-chevron-up"></i> GO UP </a> 
				</div>
								<?php break;

		################################################ RECHERCHE FR ###############################################

				case (count($resultsfr)> 0 ) : ?>
				<nav class="container-fluid">
					<div id="navbox" class="row">
						<div class= "col-8">
							<div class="container-fluid">
								<a class="btn btn-success btn-lg btn-block btnsnd returnh"
									href="index.php"
									role="button"
								>
								Retour à l'accueil
								</a>
							</div>
						</div>
						<form id="searchbox2" action="index.php" class="form-inline my-2 my-lg-0 col-3" method="POST">
							<input id="searchbox" class="form-control mr-sm-2" type="search"
								name="search" placeholder="Rechercher un son" aria-label="Search" required>
							<button class="btn btn-success my-2 my-sm-0" value="search" type="submit"><i class="fas fa-search"></i></button>
						</form>
					</div>
				</nav>
				<section>
					<article class="fr fronly">
						<h2 class="sndtitle" id="sndsearch"> Sons relatifs à <?php echo($_POST['search']) ?> </h2>
						<div class="container-fluid">
							<div class="row">
								<div class="col">
									<?php foreach ($resultsfr as $r):?>
									<div class="contsndbox fra">
										<div id="sndbox">
											<div class="col" id="sndname"><?php echo($r['Nom']) ?>
											</div>
											<audio controls>
											<source src="SBP/SFR/<?= $r['Son']?>" type="audio/mpeg">
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
					<a href="#top" id="myBtnfr2top" title="Go to top"><i class="fas fa-chevron-up"></i> GO UP </a> 
				</div>
									<?php break;
################################################ RECHERCHE WRLD + WTC ##############################################

				case (count($resultsw)> 0 && count($resultswtc) > 0) : ?>
				
				<nav id="navbox" class="row">
					<div class= "col-8">
						<div class="container-fluid">
							<a class="btn btn-success btn-lg btn-block btnsnd returnh"
								href="index.php"
								role="button"
							>
							Retour à l'accueil
							</a>
						</div>
					</div>
					<form id="searchbox2" action="index.php" class="form-inline my-2 my-lg-0 col-3" method="POST">
						<input id="searchbox" class="form-control mr-sm-2" type="search"
							name="search" placeholder="Rechercher un son" aria-label="Search" required>
						<button class="btn btn-success my-2 my-sm-0" value="search" type="submit"><i class="fas fa-search"></i></button>
					</form>
				</nav>
				<section>
					<article class="wrldsearch">
						<h2 class="sndtitle" id="sndsearch"> Sons relatifs à <?php echo($_POST['search']) ?> </h2>
							<div class="container-fluid">
								<div class="row">
									<div class="col">
											<?php foreach ($resultsw as $rw): ?>
											<div class="contsndbox world">
												<div id="sndbox">
													<div class="col" id="sndname"><?php echo($rw['Nom']) ?>
												</div>
												<audio controls>
													<source src="SBP/SWLD/<?= $rw["Son"]?>" type="audio/mpeg">
												</audio>
											</div>
										</div>
										<?php endforeach;?>
									</div>
								</div>
							</div>
						</article>
					<article class="wtcsearch">
					<div class="container-fluid">
						<div class="row">
							<div class="col">
								<?php
							foreach ($resultswtc as $rwtc):?>
								<div class="contsndbox wat">
									<div id="sndbox">
										<div class="col" id="sndname">
											<?php echo($rwtc['Nom']) ?>
										</div>
										<audio controls>
											<source src="SBP/WTC/<?= $rwtc["Son"]?>" type="audio/mpeg">
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
					<a href="#top" id="myBtnfr2top" title="Go to top"><i class="fas fa-chevron-up"></i> GO UP </a> 
				</div>
								<?php break;


	############################################### RECHERCHE WORLD ###############################################

					case (count($resultsw)>0): ?>
						<nav class="container-fluid">
							<div id="navbox" class="row">
								<div class= "col-8">
									<div class="container-fluid">
										<a class="btn btn-success btn-lg btn-block btnsnd returnh"
											href="index.php"
											role="button"
										>
										Retour à l'accueil
										</a>
									</div>
								</div>
								<form id="searchbox2" action="index.php" class="form-inline my-2 my-lg-0 col-3" method="POST">
									<input id="searchbox" class="form-control mr-sm-2" type="search"
										name="search" placeholder="Rechercher un son" aria-label="Search" required>
									<button class="btn btn-success my-2 my-sm-0" value="search" type="submit"><i class="fas fa-search"></i></button>
								</form>
							</div>
						</nav>
						<section>
							<article class="wrld wrldonly">
								<h2 class="sndtitle" id="sndsearch"> Sons relatifs à <?php echo($_POST['search']) ?> </h2>
								<div class="container-fluid">
									<div class="row">
										<div class="col">
												<?php foreach ($resultsw as $rw): ?>
												<div class="contsndbox world">
													<div id="sndbox">
														<div class="col" id="sndname"><?php echo($rw['Nom']) ?>
													</div>
													<audio controls>
														<source src="SBP/SWLD/<?= $rw["Son"]?>" type="audio/mpeg">
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
							<a href="#top" id="myBtnfr2top" title="Go to top"><i class="fas fa-chevron-up"></i> GO UP </a> 
						</div>
						<?php 
							break;



			############################################### WTC ###############################################
			
			case (count($resultswtc)> 0) : ?>
		<nav class="container-fluid">
					<div id="navbox" class="row">
						<div class= "col-8">
							<div class="container-fluid">
								<a class="btn btn-success btn-lg btn-block btnsnd returnh"
									href="index.php"
									role="button"
								>
								Retour à l'accueil
								</a>
							</div>
						</div>
						<form id="searchbox2" action="index.php" class="form-inline my-2 my-lg-0 col-3" method="POST">
							<input id="searchbox" class="form-control mr-sm-2" type="search"
								name="search" placeholder="Rechercher un son" aria-label="Search" required>
							<button class="btn btn-success my-2 my-sm-0" value="search" type="submit"><i class="fas fa-search"></i></button>
						</form>
					</div>
				</nav>
				<section>
					<article class="wtc">
					<h2 class="sndtitle" id="sndwtc">What the Cut ?!</h2>
					<div class="container-fluid">
						<div class="row">
							<div class="col">
								<?php
								foreach ($resultswtc as $rwtc):?>
								<div class="contsndbox wat">
									<div id="sndbox">
										<div class="col" id="sndname">
											<?php echo($rwtc['Nom']) ?>
										</div>
										<audio controls>
											<source src="SBP/WTC/<?= $rwtc["Son"]?>" type="audio/mpeg">
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
				<a href="#top" id="myBtnfr2top" title="Go to top"><i class="fas fa-chevron-up"></i> GO UP </a> 
			</div>
							<?php break;


			############################################### JDAY ###############################################
			
			case (count($resultsjd)> 0) : ?>
		<nav class="container-fluid">
					<div id="navbox" class="row">
						<div class= "col-8">
							<div class="container-fluid">
								<a class="btn btn-success btn-lg btn-block btnsnd returnh"
									href="index.php"
									role="button"
								>
								Retour à l'accueil
								</a>
							</div>
						</div>
						<form id="searchbox2" action="index.php" class="form-inline my-2 my-lg-0 col-3" method="POST">
							<input id="searchbox" class="form-control mr-sm-2" type="search"
								name="search" placeholder="Rechercher un son" aria-label="Search" required>
							<button class="btn btn-success my-2 my-sm-0" value="search" type="submit"><i class="fas fa-search"></i></button>
						</form>
					</div>
				</nav>
				<section>
					<article class="jday">
					<h2 class="sndtitle" id="sndjdg">MisterJDay</h2>
					<div class="container-fluid">
						<div class="row">
							<div class="col">
								<?php
								foreach ($resultsjd as $rjd):?>
								<div class="contsndbox">
									<div id="sndbox">
										<div class="col" id="sndname">
											<?php echo($rjd['Nom']) ?>
										</div>
										<audio controls>
											<source src="SBP/JDay/<?= $rjd["Son"]?>" type="audio/mpeg">
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
				<a href="#top" id="myBtnfr2top" title="Go to top"><i class="fas fa-chevron-up"></i> GO UP </a> 
			</div>
							<?php break;


					############################################### NO SOUND ###############################################

						default :?>
						<nav class="container-fluid">
							<div id="navbox" class="row">
								<div class= "col-8">
									<div class="container-fluid">
							<a class="btn btn-success btn-lg btn-block btnsnd returnh"
											href="index.php"
											role="button"
										>
										Retouner à l'accueil
										</a>
									</div>
								</div>
								<form id="searchbox2" action="index.php" class="form-inline my-2 my-lg-0 col-3" method="POST">
									<input id="searchbox" class="form-control mr-sm-2" type="search"
										name="search" placeholder="Rechercher un son" aria-label="Search" required>
								<button class="btn btn-success my-2 my-sm-0" value="search" type="submit"><i class="fas fa-search"></i></button>
							</form>
						</div>
					</nav>
					<section class="container-fluid">
						<article id="nosearch">
						<h2 class="sndquery" id="sndsearch"> Sons relatifs à <?php echo($_POST['search']) ?> </h2>
							<div id="noresults">
								<p>Aucun son trouvé !</p>
							</div>
						</article>
					</section>
					<?php
	}
}