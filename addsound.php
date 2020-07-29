<?php

//DB login

$pdo =new PDO('mysql:host=localhost; dbname=sbp; charset=utf8','root','');

if(!$pdo){
		echo "Erreur de connexion à la base de données.";
}

//$_POST['keywordnew'],$_POST['keywords'],

$error='<i class="fas fa-exclamation-circle"></i> Le nom '.$_POST['nom'].' et/ou le son '.$_FILES['snd']['name'].' existe(nt) déja !';
$success='<i class="fas fa-check"></i> Le son '.$_POST['nom'].' a été ajouté avec succès !';
$errork='<i class="fas fa-exclamation-circle"></i> Le mot-clé '.$_POST['keywordnew'].' existe déja ! Merci de réessayer en utilisant <a id="errorkey" data-toggle="modal" data-target="#exampleModalCenter"><u>la liste des mots-clés existants</u></a>.';



if(isset($_POST['nom']) && !empty($_POST['nom']) && isset($_POST['catsnd']) && !empty($_POST['catsnd']) && isset($_FILES['snd']) && !empty($_FILES['snd'])){
	$nom = htmlspecialchars($_POST['nom']);
	$snd = ($_FILES['snd']['name']);
	$catsnd = ($_POST['catsnd']);

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
						$addsndfr = $pdo->prepare("INSERT INTO `soundfr` (`Nom`,`Son`,`keywords`) VALUES (:nom, :snd,:keyw)");
						$addsndfr->bindParam(':nom',$nom,PDO::PARAM_STR);
						$addsndfr->bindParam(':snd',$snd,PDO::PARAM_STR);
						$addsndfr->bindParam(':keyw',$newkeyw,PDO::PARAM_STR);
						$addsndfr->execute();
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
					$addsndfr = $pdo->prepare("INSERT INTO `soundfr` (`Nom`,`Son`,`keywords`) VALUES (:nom, :snd,:keyw)");
					$addsndfr->bindParam(':nom',$nom,PDO::PARAM_STR);
					$addsndfr->bindParam(':snd',$snd,PDO::PARAM_STR);
					$addsndfr->bindParam(':keyw',$keywrd,PDO::PARAM_STR);
					$addsndfr->execute();
					echo('<div class="alert alert-success alert-dismissible fixed-top fade show container-fluid" role="alert">
									' .$success. ' 
									<button type="button" class="close" data-dismiss="alert" aria-label="Close">
										<span aria-hidden="true">&times;</span>
									</button>
								</div>');
				}	
			}
		break;
			################# SON WORLD ############################

				################# COUNT SON ############################

		case 'Son WORLD':
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

					else{

								################# INSERT NEW KEYW ############################

						$catkeyw = "WORLD";
						$addkeywr = $pdo->prepare("INSERT INTO keywrds (`Nom`,`Appartenance`) VALUES (:keynom, :keycat)");
						$addkeywr->bindParam(':keynom',$newkeyw,PDO::PARAM_STR);
						$addkeywr->bindParam(':keycat',$catkeyw,PDO::PARAM_STR);
						$addkeywr->execute();

								################# INSERT SON + KEYW ############################

						$uploaddir = 'SBP/SWLD/';
						$movefile = move_uploaded_file($_FILES['snd']['tmp_name'], $uploaddir . basename($_FILES['snd']['name']));
						$addsndw = $pdo->prepare("INSERT INTO `soundw` (`Nom`,`Son`,`keywords`) VALUES (:nom, :snd, :keyw)");
						$addsndw->bindParam(':nom',$nom,PDO::PARAM_STR);
						$addsndw->bindParam(':snd',$snd,PDO::PARAM_STR);
						$addsndw->bindParam(':keyw',$newkeyw,PDO::PARAM_STR);
						$addsndw->execute();
						echo('<div class="alert alert-success alert-dismissible fixed-top fade show container-fluid" role="alert">
										' .$success. ' 
										<button type="button" class="close" data-dismiss="alert" aria-label="Close">
											<span aria-hidden="true">&times;</span>
										</button>
									</div>');
					}
				}

					################# INSERT SON SI KEYW EXISTE DEJA ############################

				elseif(isset($_POST['keywordsw'])){
					$keywrd = $_POST['keywordsw'];
					$uploaddir = 'SBP/SWLD/';
					$movefile = move_uploaded_file($_FILES['snd']['tmp_name'], $uploaddir . basename($_FILES['snd']['name']));
					$addsndw = $pdo->prepare("INSERT INTO `soundw` (`Nom`,`Son`,`keywords`) VALUES (:nom, :snd, :keyw)");
					$addsndw->bindParam(':nom',$nom,PDO::PARAM_STR);
					$addsndw->bindParam(':snd',$snd,PDO::PARAM_STR);
					$addsndw->bindParam(':keyw',$keywrd,PDO::PARAM_STR);
					$addsndw->execute();
					echo('<div class="alert alert-success alert-dismissible fixed-top fade show container-fluid" role="alert">
									' .$success. ' 
									<button type="button" class="close" data-dismiss="alert" aria-label="Close">
										<span aria-hidden="true">&times;</span>
									</button>
								</div>');
				}
			};
		break;

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
								################# INSERT SON + KEYW ############################
						$keywordwtc = 'Antoine Daniel, WTC, What The Cut';
						$uploaddir = 'SBP/WTC/';
						$movefile = move_uploaded_file($_FILES['snd']['tmp_name'], $uploaddir . basename($_FILES['snd']['name']));
						$addsndwtc = $pdo->prepare("INSERT INTO `wtc` (`Nom`,`Son`,`keywords`) VALUES (:nom, :snd, :keyw)");
						$addsndwtc->bindParam(':nom',$nom,PDO::PARAM_STR);
						$addsndwtc->bindParam(':snd',$snd,PDO::PARAM_STR);
						$addsndwtc->bindParam(':keyw',$keywordwtc,PDO::PARAM_STR);
						$addsndwtc->execute();
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



?>