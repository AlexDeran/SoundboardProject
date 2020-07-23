<?php

session_start();
//DB login

$pdo =new PDO('mysql:host=localhost; dbname=sbp; charset=utf8','root','');

if(!$pdo){
		echo "Erreur de connexion à la base de données.";
}

//$_POST['keywordnew'],$_POST['keywords'],

$error="Le nom  et/ou le son existe(nt) déja.";
if(isset($_POST['nom']) && !empty($_POST['nom']) && isset($_POST['catsnd']) && !empty($_POST['catsnd']) && isset($_FILES['snd']) && !empty($_FILES['snd'])){
	$nom = htmlspecialchars($_POST['nom']);
	$snd = ($_FILES['snd']['name']);
	$catsnd = ($_POST['catsnd']);

	if(isset($_POST['keywordnew']) && !empty($_POST['keywordnew'])){
		$newkeyw = htmlspecialchars($_POST['keywordnew']);
		$verifkeyw = $pdo->prepare("SELECT COUNT(*) FROM keywrds WHERE Nom = :Nom ");
		$verifkeyw->bindParam(':Nom',$newkeyw, PDO::PARAM_STR);
		$verifkeyw->execute();
		$result = $verifkeyw->fetchColumn();

		if($result > 0){
			$resultat=$error;
		}
		
		else{
		
			if($catsnd == 'Son FR'){
			$verifsnd = $pdo->prepare("SELECT COUNT(*) FROM soundfr WHERE Nom = :nom OR Son = :snd");
			$verifsnd->bindParam(':nom',$nom,PDO::PARAM_STR);
			$verifsnd->bindParam(':snd',$snd,PDO::PARAM_STR);
			$verifsnd->execute();
			$result = $verifsnd->fetchColumn();

				if($result > 0){
					$resultat=$error;
						}
						
				else{
					$uploaddir = 'SBP/SFR/';
					$movefile = move_uploaded_file($_FILES['snd']['tmp_name'], $uploaddir . basename($_FILES['snd']['name']));

					if(isset($_POST['keywordnew']) && !empty($_POST['keywordnew'])){
						$newkeyw = htmlspecialchars($_POST['keywordnew']);
						$addsnd = $pdo->prepare("INSERT INTO `soundfr` (`keywords`) VALUES (:keyw)");
						$addsnd->bindParam(':keyw',$newkeyw,PDO::PARAM_STR);
						$addsnd->execute();
						$catkeyw = "FR";
						$addkeywfr = $pdo->prepare("INSERT INTO keywrds (`Nom`,`Appartenance`) VALUES (:keynom, :keycat)");
						$addkeywfr->bindParam(':keynom',$newkeyw,PDO::PARAM_STR);
						$addkeywfr->bindParam(':keycat',$catkeyw,PDO::PARAM_STR);
						$addkeywfr->execute();
						}
					elseif(isset($_POST['keywords']) && !empty($_POST['keywords']) && !isset($_POST['keywordnew']) && empty($_POST['keywordnew'])){
						$keywrd = $_POST['keywords'];
						$addsnd = $pdo->prepare("INSERT INTO `soundfr` (`keywords`) VALUES (:keyw)");
						$addsnd->bindParam(':keyw',$keywrd,PDO::PARAM_STR);
						$addsnd->execute();
						$catkeyw = "FR";
						$addkeywfr = $pdo->prepare("INSERT INTO keywrds (`Nom`,`Appartenance`) VALUES (:keynom, :keycat)");
						$addkeywfr->bindParam(':keynom',$keywrd,PDO::PARAM_STR);
						$addkeywfr->bindParam(':keycat',$catkeyw,PDO::PARAM_STR);
						$addkeywfr->execute();
					}

					$addsnd = $pdo->prepare("INSERT INTO `soundfr` (`Nom`,`Son`) VALUES (:nom, :snd,)");
					$addsnd->bindParam(':nom',$nom,PDO::PARAM_STR);
					$addsnd->bindParam(':snd',$snd,PDO::PARAM_STR);
					$addsnd->execute();
		
				header("Location:index.php");
			}
		}
		
		else{
		$verifsndw = $pdo->prepare("SELECT COUNT(*) FROM soundw WHERE Nom = :nom OR Son = :snd");
		$verifsndw->bindParam(':nom',$nom,PDO::PARAM_STR);
		$verifsndw->bindParam(':snd',$snd,PDO::PARAM_STR);
		$verifsndw->execute();
		$resultw = $verifsndw->fetchColumn();

		if($resultw > 0){
			$resultatw=$error;
					}
						
			else{
				$uploaddir = 'SBP/SWLD/';
				$movefile = move_uploaded_file($_FILES['snd']['tmp_name'], $uploaddir . basename($_FILES['snd']['name']));

				if(isset($_POST['keywordnew']) && !empty($_POST['keywordnew'])){
					$newkeyw = htmlspecialchars($_POST['keywordnew']);
					$addsndw = $pdo->prepare("INSERT INTO `soundw` (`keywords`) VALUES (:keyw)");
					$addsndw->bindParam(':keyw',$newkeyw,PDO::PARAM_STR);
					$addsndw->execute();
					$catkeyw = "WORLD";
					$addkeywr = $pdo->prepare("INSERT INTO keywrds (`Nom`,`Appartenance`) VALUES (:keynom, :keycat)");
					$addkeywr->bindParam(':keynom',$newkeyw,PDO::PARAM_STR);
					$addkeywr->bindParam(':keycat',$catkeyw,PDO::PARAM_STR);
					$addkeywr->execute();
				}
				elseif(isset($_POST['keywords']) && !empty($_POST['keywords']) && !isset($_POST['keywordnew']) && empty($_POST['keywordnew'])){
					$keywrd = $_POST['keywords'];
					$addsndw = $pdo->prepare("INSERT INTO `soundw` (`keywords`) VALUES (:keyw)");
					$addsndw->bindParam(':keyw',$keywrd,PDO::PARAM_STR);
					$addsndw->execute();
					$catkeyw = "WORLD";
					$addkeywr = $pdo->prepare("INSERT INTO keywrds (`Nom`,`Appartenance`) VALUES (:keynom, :keycat)");
					$addkeywr->bindParam(':keynom',$keywrd,PDO::PARAM_STR);
					$addkeywr->bindParam(':keycat',$catkeyw,PDO::PARAM_STR);
					$addkeywr->execute();
					}

					$addsndw = $pdo->prepare("INSERT INTO `soundw` (`Nom`,`Son`) VALUES (:nom, :snd)");
					$addsndw->bindParam(':nom',$nom,PDO::PARAM_STR);
					$addsndw->bindParam(':snd',$snd,PDO::PARAM_STR);
					$addsndw->execute();

		header("Location:index.php");
				};
			}
		};
	}
}

?>