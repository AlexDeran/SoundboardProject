<?php

//DB login

$pdo =new PDO('mysql:host=localhost; dbname=sbp; charset=utf8','root','');

if(!$pdo){
		echo "Erreur de connexion à la base de données.";
}

//$_POST['keywordnew'],$_POST['keywords'],

$globalerror = '<i class="fas fa-exclamation-circle"></i> Veuillez au moins remplir les champs Nom et Type du son ainsi qu\'importer un ficher sonore valide !'; 

$error='<i class="fas fa-exclamation-circle"></i> Le nom '.$_POST['nom'].' et/ou le son '.$_FILES['snd']['name'].' existe(nt) déja !';

$success='<i class="fas fa-check"></i> Le son '.$_POST['nom'].' a été ajouté avec succès !';

$errork='<i class="fas fa-exclamation-circle"></i> Le mot-clé '.$_POST['keywordnew'].' existe déja ! Merci de réessayer en utilisant <a id="errorkey" data-toggle="modal" data-target="#exampleModalCenter"><u>la liste des mots-clés existants</u></a>.';



if(isset($_POST['nom']) && !empty($_POST['nom']) && isset($_POST['catsnd']) && !empty($_POST['catsnd']) && isset($_FILES['snd']) && !empty($_FILES['snd'])){
	$nom = htmlspecialchars($_POST['nom']);
	$snd = ($_FILES['snd']['name']);
	$catsnd = ($_POST['catsnd']);
	if(isset($_POST['videosrc']) && !empty($_POST['videosrc'])){
		$videosrc = $_POST['videosrc'];
		
	}

				################# SON FR ############################

					################# COUNT SON ############################

	switch($catsnd){
		case 'Son FR' :
			$verifsnd = $pdo->prepare("SELECT COUNT(*) FROM soundfr WHERE Nom = :nom OR Son = :snd");
			$verifsnd->bindParam(':nom',$nom,PDO::PARAM_STR);
			$verifsnd->bindParam(':snd',$snd,PDO::PARAM_STR);
			$verifsnd->execute();
			$resultsndfr = $verifsnd->fetchColumn();

			if($resultsndfr > 0){
				echo('<div class="alert alert-danger alert-dismissible fixed-top fade show container-fluid" role="alert">
								' .$error. ' 
								<button type="button" class="close" data-dismiss="alert" aria-label="Close">
									<span aria-hidden="true">&times;</span>
								</button>
							</div>');
					}
					
			else{
				
							################# COUNT NEW KEYW ############################

				if(isset($_POST['keywordnew']) && !empty($_POST['keywordnew'])){
					$newkeyw = htmlspecialchars($_POST['keywordnew']);
					$verifkeyw = $pdo->prepare("SELECT COUNT(*) FROM keywrds WHERE Nom = :Nom ");
					$verifkeyw->bindParam(':Nom',$newkeyw, PDO::PARAM_STR);
					$verifkeyw->execute();
					$resultk = $verifkeyw->fetchColumn();

					if($resultk > 0){
						echo('<div class="alert alert-danger alert-dismissible fixed-top fade show container-fluid" role="alert">
									' .$errork. ' 
										<button type="button" class="close" data-dismiss="alert" aria-label="Close">
											<span aria-hidden="true">&times;</span>
										</button>
									</div>');

					}

									################# INSERT NEW KEYW ############################

					else{
						$catkeyw = "FR";
						$addkeywfr = $pdo->prepare("INSERT INTO keywrds (`Nom`,`Appartenance`) VALUES (:keynom, :keycat)");
						$addkeywfr->bindParam(':keynom',$newkeyw,PDO::PARAM_STR);
						$addkeywfr->bindParam(':keycat',$catkeyw,PDO::PARAM_STR);
						$addkeywfr->execute();

							################# INSERT SON + KEYW ############################

						$uploaddir = 'SBP/SFR/';
						$movefile = move_uploaded_file($_FILES['snd']['tmp_name'], $uploaddir . basename($_FILES['snd']['name']));
						if(isset($videosrc) && $videosrc != ""){
							$addsndfr = $pdo->prepare("INSERT INTO `soundfr` (`Nom`,`Son`,`keywords`,`source`) VALUES (:nom, :snd,:keyw, :src)");
							$addsndfr->bindParam(':nom',$nom,PDO::PARAM_STR);
							$addsndfr->bindParam(':snd',$snd,PDO::PARAM_STR);
							$addsndfr->bindParam(':keyw',$newkeyw,PDO::PARAM_STR);
							$addsndfr->bindParam(':src',$videosrc,PDO::PARAM_STR);
							$addsndfr->execute();
						}
						else{
							$addsndfr = $pdo->prepare("INSERT INTO `soundfr` (`Nom`,`Son`,`keywords`,`source`) VALUES (:nom, :snd,:keyw, '')");
							$addsndfr->bindParam(':nom',$nom,PDO::PARAM_STR);
							$addsndfr->bindParam(':snd',$snd,PDO::PARAM_STR);
							$addsndfr->bindParam(':keyw',$newkeyw,PDO::PARAM_STR);
							$addsndfr->execute();
						}
						echo('<div class="alert alert-success alert-dismissible fixed-top fade show container-fluid" role="alert">
										' .$success. ' 
										<button type="button" class="close" data-dismiss="alert" aria-label="Close">
											<span aria-hidden="true">&times;</span>
										</button>
									</div>');
						}
					
								################# INSERT SON SI KEYW EXISTE DEJA ############################

				}
				elseif(isset($_POST['keywords'])){
					$keywrd = $_POST['keywords'];
					$uploaddir = 'SBP/SFR/';
					$movefile = move_uploaded_file($_FILES['snd']['tmp_name'], $uploaddir . basename($_FILES['snd']['name']));
					if(isset($videosrc) && $videosrc != ""){
						$addsndfr = $pdo->prepare("INSERT INTO `soundfr` (`Nom`,`Son`,`keywords`,`source`) VALUES (:nom, :snd,:keyw, :src)");
						$addsndfr->bindParam(':nom',$nom,PDO::PARAM_STR);
						$addsndfr->bindParam(':snd',$snd,PDO::PARAM_STR);
						$addsndfr->bindParam(':keyw',$keywrd,PDO::PARAM_STR);
						$addsndfr->bindParam(':src',$videosrc,PDO::PARAM_STR);
						$addsndfr->execute();
						}
					else{
						$addsndfr = $pdo->prepare("INSERT INTO `soundfr` (`Nom`,`Son`,`keywords`,`source`) VALUES (:nom, :snd,:keyw, '')");
							$addsndfr->bindParam(':nom',$nom,PDO::PARAM_STR);
							$addsndfr->bindParam(':snd',$snd,PDO::PARAM_STR);
							$addsndfr->bindParam(':keyw',$keywrd,PDO::PARAM_STR);
							$addsndfr->execute();
					}
					echo('<div class="alert alert-success alert-dismissible fixed-top fade show container-fluid" role="alert">
									' .$success. ' 
									<button type="button" class="close" data-dismiss="alert" aria-label="Close">
										<span aria-hidden="true">&times;</span>
									</button>
								</div>');
				}	
			}
		break;
			################################## SON WORLD ########################################################

				############################################# COUNT SON ###################################################

		case 'Son World':
			$verifsndw = $pdo->prepare("SELECT COUNT(*) FROM soundw WHERE Nom = :nom OR Son = :snd");
			$verifsndw->bindParam(':nom',$nom,PDO::PARAM_STR);
			$verifsndw->bindParam(':snd',$snd,PDO::PARAM_STR);
			$verifsndw->execute();
			$result = $verifsndw->fetchColumn();

			if($result > 0){
					echo('<div class="alert alert-danger alert-dismissible fixed-top fade show container-fluid" role="alert">
									' .$error. ' 
									<button type="button" class="close" data-dismiss="alert" aria-label="Close">
										<span aria-hidden="true">&times;</span>
									</button>
								</div>');
						}
							
			else{

				################################## COUNT NEW KEYW #############################################

				if(isset($_POST['keywordnew']) && !empty($_POST['keywordnew'])){
					$newkeyw = htmlspecialchars($_POST['keywordnew']);
					$verifkeyw = $pdo->prepare("SELECT COUNT(*) FROM keywrds WHERE Nom = :Nom ");
					$verifkeyw->bindParam(':Nom',$newkeyw, PDO::PARAM_STR);
					$verifkeyw->execute();
					$resultk = $verifkeyw->fetchColumn();

					if($resultk > 0){
							echo('<div class="alert alert-danger alert-dismissible fixed-top fade show container-fluid" role="alert">
											' .$errork. ' 
											<button type="button" class="close" data-dismiss="alert" aria-label="Close">
												<span aria-hidden="true">&times;</span>
											</button>
										</div>');
					}

					else{

								################################## INSERT NEW KEYW #############################################

						$catkeyw = "WORLD";
						$addkeywr = $pdo->prepare("INSERT INTO keywrds (`Nom`,`Appartenance`) VALUES (:keynom, :keycat)");
						$addkeywr->bindParam(':keynom',$newkeyw,PDO::PARAM_STR);
						$addkeywr->bindParam(':keycat',$catkeyw,PDO::PARAM_STR);
						$addkeywr->execute();

			################################################### INSERT SON + KEYW ############################

						$uploaddir = 'SBP/SWLD/';
						$movefile = move_uploaded_file($_FILES['snd']['tmp_name'], $uploaddir . basename($_FILES['snd']['name']));
							if(isset($videosrc) && $videosrc != ""){
							$addsndw = $pdo->prepare("INSERT INTO `soundw` (`Nom`,`Son`,`keywords`,`source`) VALUES (:nom, :snd,:keyw, :src)");
							$addsndw->bindParam(':nom',$nom,PDO::PARAM_STR);
							$addsndw->bindParam(':snd',$snd,PDO::PARAM_STR);
							$addsndw->bindParam(':keyw',$newkeyw,PDO::PARAM_STR);
							$addsndw->bindParam(':src',$videosrc,PDO::PARAM_STR);
							$addsndw->execute();
						}
						else{
						$addsndw = $pdo->prepare("INSERT INTO `soundw` (`Nom`,`Son`,`keywords`,`source`) VALUES (:nom, :snd, :keyw, '')");
						$addsndw->bindParam(':nom',$nom,PDO::PARAM_STR);
						$addsndw->bindParam(':snd',$snd,PDO::PARAM_STR);
						$addsndw->bindParam(':keyw',$newkeyw,PDO::PARAM_STR);
						$addsndw->execute();
						}
						echo('<div class="alert alert-success alert-dismissible fixed-top fade show container-fluid" role="alert">
										' .$success. ' 
										<button type="button" class="close" data-dismiss="alert" aria-label="Close">
											<span aria-hidden="true">&times;</span>
										</button>
									</div>');	
					}
				}

					################################## INSERT SON SI KEYW EXISTE DEJA ############################

				elseif(isset($_POST['keywordsw'])){
					$keywrd = $_POST['keywordsw'];
					$uploaddir = 'SBP/SWLD/';
					$movefile = move_uploaded_file($_FILES['snd']['tmp_name'], $uploaddir . basename($_FILES['snd']['name']));
					if(isset($videosrc) && $videosrc != ""){
						$addsndw = $pdo->prepare("INSERT INTO `soundw` (`Nom`,`Son`,`keywords`,`source`) VALUES (:nom, :snd,:keyw, :src)");
						$addsndw->bindParam(':nom',$nom,PDO::PARAM_STR);
						$addsndw->bindParam(':snd',$snd,PDO::PARAM_STR);
						$addsndw->bindParam(':keyw',$keywrd,PDO::PARAM_STR);
						$addsndw->bindParam(':src',$videosrc,PDO::PARAM_STR);
						$addsndw->execute();
						}
					else{
					$addsndw = $pdo->prepare("INSERT INTO `soundw` (`Nom`,`Son`,`keywords`,`source`) VALUES (:nom, :snd, :keyw, '')");
					$addsndw->bindParam(':nom',$nom,PDO::PARAM_STR);
					$addsndw->bindParam(':snd',$snd,PDO::PARAM_STR);
					$addsndw->bindParam(':keyw',$keywrd,PDO::PARAM_STR);
					$addsndw->execute();
				}
					echo('<div class="alert alert-success alert-dismissible fixed-top fade show container-fluid" role="alert">
									' .$success. ' 
									<button type="button" class="close" data-dismiss="alert" aria-label="Close">
										<span aria-hidden="true">&times;</span>
									</button>
								</div>');
					
				}
			};
		break;

		################################## SON WTC ##############################################################

		case 'WTC':

			$verifsndwtc = $pdo->prepare("SELECT COUNT(*) FROM wtc WHERE Nom = :nom OR Son = :snd");
			$verifsndwtc->bindParam(':nom',$nom,PDO::PARAM_STR);
			$verifsndwtc->bindParam(':snd',$snd,PDO::PARAM_STR);
			$verifsndwtc->execute();
			$result = $verifsndwtc->fetchColumn();

			if($result > 0){
					echo('<div class="alert alert-danger alert-dismissible fixed-top fade show container-fluid" role="alert">
									' .$error. ' 
									<button type="button" class="close" data-dismiss="alert" aria-label="Close">
										<span aria-hidden="true">&times;</span>
									</button>
								</div>');
						}
			else{

				if(isset($_POST['keywordnew']) && !empty($_POST['keywordnew'])){
					$newkeywtc = htmlspecialchars($_POST['keywordnew']);
					$verifkeywtc = $pdo->prepare("SELECT COUNT(*) FROM keywrds WHERE Nom = :Nom ");
					$verifkeywtc->bindParam(':Nom',$newkeywtc, PDO::PARAM_STR);
					$verifkeywtc->execute();
					$resultk = $verifkeywtc->fetchColumn();

					if($resultk > 0){
							echo('<div class="alert alert-danger alert-dismissible fixed-top fade show container-fluid" role="alert">
											' .$errork. ' 
											<button type="button" class="close" data-dismiss="alert" aria-label="Close">
												<span aria-hidden="true">&times;</span>
											</button>
										</div>');
					}
		
					else{
								################################## INSERT NEW KEYW #############################################

						$catkeyw = "WTC";
						$insertnewkeyw = $pdo->prepare("INSERT INTO keywrds (`Nom`,`Appartenance`) VALUES (:keynom, :keycat)");
						$insertnewkeyw->bindParam(':keynom',$newkeywtc,PDO::PARAM_STR);
						$insertnewkeyw->bindParam(':keycat',$catkeyw,PDO::PARAM_STR);
						$insertnewkeyw->execute();	

							################################## INSERT SON + KEYW #############################################

						$keywordwtc = $newkeywtc.', WTC';
						$uploaddir = 'SBP/WTC/';
						$movefile = move_uploaded_file($_FILES['snd']['tmp_name'], $uploaddir . basename($_FILES['snd']['name']));
						if(isset($videosrc) && $videosrc != ""){
							$addsndwtc = $pdo->prepare("INSERT INTO `wtc` (`Nom`,`Son`,`keywords`,`source`) VALUES (:nom, :snd,:keyw, :src)");
							$addsndwtc->bindParam(':nom',$nom,PDO::PARAM_STR);
							$addsndwtc->bindParam(':snd',$snd,PDO::PARAM_STR);
							$addsndwtc->bindParam(':keyw',$keywordwtc,PDO::PARAM_STR);
							$addsndwtc->bindParam(':src',$videosrc,PDO::PARAM_STR);
							$addsndwtc->execute();
						}
						else{
						$addsndwtc = $pdo->prepare("INSERT INTO `wtc` (`Nom`,`Son`,`keywords`,`source`) VALUES (:nom, :snd, :keyw,'')");
						$addsndwtc->bindParam(':nom',$nom,PDO::PARAM_STR);
						$addsndwtc->bindParam(':snd',$snd,PDO::PARAM_STR);
						$addsndwtc->bindParam(':keyw',$keywordwtc,PDO::PARAM_STR);
						$addsndwtc->execute();
					}

						echo('<div class="alert alert-success alert-dismissible fixed-top fade show container-fluid" role="alert">
										' .$success. ' 
										<button type="button" class="close" data-dismiss="alert" aria-label="Close">
											<span aria-hidden="true">&times;</span>
										</button>
									</div>');
						
					}
				}
		
				elseif(isset($_POST['keywordswtc'])){
					$keywrdwtc = $_POST['keywordswtc'].', WTC';
					$uploaddir = 'SBP/WTC/';
					$movefile = move_uploaded_file($_FILES['snd']['tmp_name'], $uploaddir . basename($_FILES['snd']['name']));
					if(isset($videosrc) && $videosrc != ""){
						$addsndfr = $pdo->prepare("INSERT INTO `wtc` (`Nom`,`Son`,`keywords`,`source`) VALUES (:nom, :snd,:keyw, :src)");
						$addsndwtc->bindParam(':nom',$nom,PDO::PARAM_STR);
						$addsndwtc->bindParam(':snd',$snd,PDO::PARAM_STR);
						$addsndwtc->bindParam(':keyw',$keywrd,PDO::PARAM_STR);
						$addsndwtc->bindParam(':src',$videosrc,PDO::PARAM_STR);
						$addsndwtc->execute();
						}
					else{
					$addsndwtc = $pdo->prepare("INSERT INTO `wtc` (`Nom`,`Son`,`keywords`,`source`) VALUES (:nom, :snd, :keyw, '')");
					$addsndwtc->bindParam(':nom',$nom,PDO::PARAM_STR);
					$addsndwtc->bindParam(':snd',$snd,PDO::PARAM_STR);
					$addsndwtc->bindParam(':keyw',$keywrdwtc,PDO::PARAM_STR);
					$addsndwtc->execute();
				}
					echo('<div class="alert alert-success alert-dismissible fixed-top fade show container-fluid" role="alert">
									' .$success. ' 
									<button type="button" class="close" data-dismiss="alert" aria-label="Close">
										<span aria-hidden="true">&times;</span>
									</button>
								</div>');
					
				}
			}
		break;

		case 'JDay':

			$verifsndjd = $pdo->prepare("SELECT COUNT(*) FROM jday WHERE Nom = :nom OR Son = :snd");
			$verifsndjd->bindParam(':nom',$nom,PDO::PARAM_STR);
			$verifsndjd->bindParam(':snd',$snd,PDO::PARAM_STR);
			$verifsndjd->execute();
			$result = $verifsndjd->fetchColumn();

			if($result > 0){
					echo('<div class="alert alert-danger alert-dismissible fixed-top fade show container-fluid" role="alert">
									' .$error. ' 
									<button type="button" class="close" data-dismiss="alert" aria-label="Close">
										<span aria-hidden="true">&times;</span>
									</button>
								</div>');
						}
							
			else{
		################################################ INSERT SON + KEYW #############################################
						$keywordjd = 'MisterJDay, Mr Connard';
						$uploaddir = 'SBP/JDay/';
						$movefile = move_uploaded_file($_FILES['snd']['tmp_name'], $uploaddir . basename($_FILES['snd']['name']));
						if(isset($videosrc) && $videosrc != ""){
							$addsndjd = $pdo->prepare("INSERT INTO `wtc` (`Nom`,`Son`,`keywords`,`source`) VALUES (:nom, :snd,:keyw, :src)");
							$addsndjd->bindParam(':nom',$nom,PDO::PARAM_STR);
							$addsndjd->bindParam(':snd',$snd,PDO::PARAM_STR);
							$addsndjd->bindParam(':keyw',$keywordjd,PDO::PARAM_STR);
							$addsndjd->bindParam(':src',$videosrc,PDO::PARAM_STR);
							$addsndjd->execute();
						}
						else{
						$addsndjd = $pdo->prepare("INSERT INTO `jday` (`Nom`,`Son`,`keywords`) VALUES (:nom, :snd, :keyw)");
						$addsndjd->bindParam(':nom',$nom,PDO::PARAM_STR);
						$addsndjd->bindParam(':snd',$snd,PDO::PARAM_STR);
						$addsndjd->bindParam(':keyw',$keywordjd,PDO::PARAM_STR);
						$addsndjd->execute();
						}
						echo('<div class="alert alert-success alert-dismissible fixed-top fade show container-fluid" role="alert">
										' .$success. ' 
										<button type="button" class="close" data-dismiss="alert" aria-label="Close">
											<span aria-hidden="true">&times;</span>
										</button>
									</div>');
						
			}
		break;

			################################################### INCONNUS #############################################

		case 'Inconnus':

			$verifsndinc = $pdo->prepare("SELECT COUNT(*) FROM inconnus WHERE Nom = :nom OR Son = :snd");
			$verifsndinc->bindParam(':nom',$nom,PDO::PARAM_STR);
			$verifsndinc->bindParam(':snd',$snd,PDO::PARAM_STR);
			$verifsndinc->execute();
			$result = $verifsndinc->fetchColumn();

			if($result > 0){
					echo('<div class="alert alert-danger alert-dismissible fixed-top fade show container-fluid" role="alert">
									' .$error. ' 
									<button type="button" class="close" data-dismiss="alert" aria-label="Close">
										<span aria-hidden="true">&times;</span>
									</button>
								</div>');
						}
			else{

				if(isset($_POST['keywordnew']) && !empty($_POST['keywordnew'])){
					$newkeyinc = htmlspecialchars($_POST['keywordnew']);
					$verifkeyinc = $pdo->prepare("SELECT COUNT(*) FROM keywrds WHERE Nom = :Nom ");
					$verifkeyinc->bindParam(':Nom',$newkeyinc, PDO::PARAM_STR);
					$verifkeyinc->execute();
					$resultk = $verifkeyinc->fetchColumn();

					if($resultk > 0){
							echo('<div class="alert alert-danger alert-dismissible fixed-top fade show container-fluid" role="alert">
											' .$errork. ' 
											<button type="button" class="close" data-dismiss="alert" aria-label="Close">
												<span aria-hidden="true">&times;</span>
											</button>
										</div>');
					}
		
					else{
								################# INSERT NEW KEYW ############################

						$catkeyw = "INCONNUS";
						$insertnewkeyinc = $pdo->prepare("INSERT INTO keywrds (`Nom`,`Appartenance`) VALUES (:keynom, :keycat)");
						$insertnewkeyinc->bindParam(':keynom',$newkeyinc,PDO::PARAM_STR);
						$insertnewkeyinc->bindParam(':keycat',$catkeyw,PDO::PARAM_STR);
						$insertnewkeyinc->execute();	

							################# INSERT SON + KEYW ############################

						$uploaddir = 'SBP/Inconnus/';
						$movefile = move_uploaded_file($_FILES['snd']['tmp_name'], $uploaddir . basename($_FILES['snd']['name']));
						if(isset($videosrc) && $videosrc != ""){
							$addsndinc = $pdo->prepare("INSERT INTO `inconnus` (`Nom`,`Son`,`keywords`,`source`) VALUES (:nom, :snd,:keyw, :src)");
							$addsndinc->bindParam(':nom',$nom,PDO::PARAM_STR);
							$addsndinc->bindParam(':snd',$snd,PDO::PARAM_STR);
							$addsndinc->bindParam(':keyw',$newkeyinc,PDO::PARAM_STR);
							$addsndinc->bindParam(':src',$videosrc,PDO::PARAM_STR);
							$addsndinc->execute();
						}
						else{
						$addsndinc = $pdo->prepare("INSERT INTO `inconnus` (`Nom`,`Son`,`keywords`,`source`) VALUES (:nom, :snd, :keyw,'')");
						$addsndinc->bindParam(':nom',$nom,PDO::PARAM_STR);
						$addsndinc->bindParam(':snd',$snd,PDO::PARAM_STR);
						$addsndinc->bindParam(':keyw',$keywordinc,PDO::PARAM_STR);
						$addsndinc->execute();
					}

						echo('<div class="alert alert-success alert-dismissible fixed-top fade show container-fluid" role="alert">
										' .$success. ' 
										<button type="button" class="close" data-dismiss="alert" aria-label="Close">
											<span aria-hidden="true">&times;</span>
										</button>
									</div>');
						
					}
				}
		
				elseif(isset($_POST['keywordsinc'])){
					$keywrd = $_POST['keywordsinc'];
					$uploaddir = 'SBP/Inconnus/';
					$movefile = move_uploaded_file($_FILES['snd']['tmp_name'], $uploaddir . basename($_FILES['snd']['name']));
					if(isset($videosrc) && $videosrc != ""){
						$addsndinc = $pdo->prepare("INSERT INTO `inconnus` (`Nom`,`Son`,`keywords`,`source`) VALUES (:nom, :snd,:keyw, :src)");
						$addsndinc->bindParam(':nom',$nom,PDO::PARAM_STR);
						$addsndinc->bindParam(':snd',$snd,PDO::PARAM_STR);
						$addsndinc->bindParam(':keyw',$keywrd,PDO::PARAM_STR);
						$addsndinc->bindParam(':src',$videosrc,PDO::PARAM_STR);
						$addsndinc->execute();
						}
					else{
					$addsndinc = $pdo->prepare("INSERT INTO `inconnus` (`Nom`,`Son`,`keywords`,`source`) VALUES (:nom, :snd, :keyw, '')");
					$addsndinc->bindParam(':nom',$nom,PDO::PARAM_STR);
					$addsndinc->bindParam(':snd',$snd,PDO::PARAM_STR);
					$addsndinc->bindParam(':keyw',$keywrd,PDO::PARAM_STR);
					$addsndinc->execute();
				}
					echo('<div class="alert alert-success alert-dismissible fixed-top fade show container-fluid" role="alert">
									' .$success. ' 
									<button type="button" class="close" data-dismiss="alert" aria-label="Close">
										<span aria-hidden="true">&times;</span>
									</button>
								</div>');
					
				}
			}
		break;

			case 'MV':

			$verifsndmv = $pdo->prepare("SELECT COUNT(*) FROM mv WHERE Nom = :nom OR Son = :snd");
			$verifsndmv->bindParam(':nom',$nom,PDO::PARAM_STR);
			$verifsndmv->bindParam(':snd',$snd,PDO::PARAM_STR);
			$verifsndmv->execute();
			$result = $verifsndmv->fetchColumn();

			if($result > 0){
					echo('<div class="alert alert-danger alert-dismissible fixed-top fade show container-fluid" role="alert">
									' .$error. ' 
									<button type="button" class="close" data-dismiss="alert" aria-label="Close">
										<span aria-hidden="true">&times;</span>
									</button>
								</div>');
						}
							
			else{
		################################################ INSERT SON + KEYW #############################################
						$keywordmv = 'Mister MV';
						$uploaddir = 'SBP/MV/';
						$movefile = move_uploaded_file($_FILES['snd']['tmp_name'], $uploaddir . basename($_FILES['snd']['name']));
						if(isset($videosrc) && $videosrc != ""){
							$addsndmv = $pdo->prepare("INSERT INTO `mv` (`Nom`,`Son`,`keywords`,`source`) VALUES (:nom, :snd,:keyw, :src)");
							$addsndmv->bindParam(':nom',$nom,PDO::PARAM_STR);
							$addsndmv->bindParam(':snd',$snd,PDO::PARAM_STR);
							$addsndmv->bindParam(':keyw',$keywordjd,PDO::PARAM_STR);
							$addsndmv->bindParam(':src',$videosrc,PDO::PARAM_STR);
							$addsndmv->execute();
						}
						else{
						$addsndmv = $pdo->prepare("INSERT INTO `mv` (`Nom`,`Son`,`keywords`) VALUES (:nom, :snd, :keyw)");
						$addsndmv->bindParam(':nom',$nom,PDO::PARAM_STR);
						$addsndmv->bindParam(':snd',$snd,PDO::PARAM_STR);
						$addsndmv->bindParam(':keyw',$keywordmv,PDO::PARAM_STR);
						$addsndmv->execute();
						}
						echo('<div class="alert alert-success alert-dismissible fixed-top fade show container-fluid" role="alert">
										' .$success. ' 
										<button type="button" class="close" data-dismiss="alert" aria-label="Close">
											<span aria-hidden="true">&times;</span>
										</button>
									</div>');
						
			}
		break;
	}
	
}

else{
	echo('<div class="alert alert-danger alert-dismissible fixed-top fade show container-fluid" role="alert">
									' .$globalerror. ' 
									<button type="button" class="close" data-dismiss="alert" aria-label="Close">
										<span aria-hidden="true">&times;</span>
									</button>
								</div>');
}

?>