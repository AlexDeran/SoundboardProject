<?php

//DB login

$pdo =new PDO('mysql:host=localhost; dbname=sbp; charset=utf8','root','');

if(!$pdo){
		echo "Erreur de connexion à la base de données.";
}

//$_POST['keywordnew'],$_POST['keywords'],

$error="Le nom et/ou le son existe(nt) déja.";

if(isset($_POST['nom']) && !empty($_POST['nom']) && isset($_POST['catsnd']) && !empty($_POST['catsnd']) && isset($_FILES['snd']) && !empty($_FILES['snd'])){
	$nom = htmlspecialchars($_POST['nom']);
	$snd = ($_FILES['snd']['name']);
	$catsnd = ($_POST['catsnd']);

				################# SON FR ############################

					################# COUNT SON ############################

	if($catsnd == 'Son FR'){
		$verifsnd = $pdo->prepare("SELECT COUNT(*) FROM soundfr WHERE Nom = :nom OR Son = :snd");
		$verifsnd->bindParam(':nom',$nom,PDO::PARAM_STR);
		$verifsnd->bindParam(':snd',$snd,PDO::PARAM_STR);
		$verifsnd->execute();
		$resultsndfr = $verifsnd->fetchColumn();

		if($resultsndfr > 0){
			$end = false;
				header("Location:index.php");
				}
				
		else{
			
						################# COUNT NEW KEYW ############################

			if(isset($_POST['keywordnew']) && !empty($_POST['keywordnew'])){
				$newkeyw = htmlspecialchars($_POST['keywordnew']);
				$verifkeyw = $pdo->prepare("SELECT COUNT(*) FROM keywrds WHERE Nom = :Nom ");
				$verifkeyw->bindParam(':Nom',$newkeyw, PDO::PARAM_STR);
				$verifkeyw->execute();
				$result = $verifkeyw->fetchColumn();

				if($result > 0){
					$resultat=$error;
					header("Location:index.php");
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
					header("Location:index.php");
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
				header("Location:index.php");
			}	
		}
	}

		################# SON WORLD ############################

			################# COUNT SON ############################

	else{
		$verifsndw = $pdo->prepare("SELECT COUNT(*) FROM soundw WHERE Nom = :nom OR Son = :snd");
		$verifsndw->bindParam(':nom',$nom,PDO::PARAM_STR);
		$verifsndw->bindParam(':snd',$snd,PDO::PARAM_STR);
		$verifsndw->execute();
		$result = $verifsndw->fetchColumn();

		if($result > 0){
			$resultat=$error;
			header("Location:index.php");
					}
						
		else{

			################# COUNT NEW KEYW ############################

			if(isset($_POST['keywordnew']) && !empty($_POST['keywordnew'])){
				$newkeyw = htmlspecialchars($_POST['keywordnew']);
				$verifkeyw = $pdo->prepare("SELECT COUNT(*) FROM keywrds WHERE Nom = :Nom ");
				$verifkeyw->bindParam(':Nom',$newkeyw, PDO::PARAM_STR);
				$verifkeyw->execute();
				$result = $verifkeyw->fetchColumn();

				if($result > 0){
					$resultat=$error;
					header("Location:index.php");
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
					header("Location:index.php");
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
				header("Location:index.php");
			}
		};
	}
};

$success="Le son à été ajouté avec succès !";

?>