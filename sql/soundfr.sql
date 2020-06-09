-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mer. 10 juin 2020 à 00:52
-- Version du serveur :  10.4.11-MariaDB
-- Version de PHP : 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `sbp`
--

-- --------------------------------------------------------

--
-- Structure de la table `soundfr`
--

CREATE TABLE `soundfr` (
  `ID` int(10) UNSIGNED NOT NULL,
  `Nom` varchar(255) CHARACTER SET utf8 NOT NULL,
  `Son` varchar(255) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `soundfr`
--

INSERT INTO `soundfr` (`ID`, `Nom`, `Son`) VALUES
(86, 'Alors ecoute moi bien', 'Alors écoute moi bien ! (BigFlo).mp3'),
(87, 'La chatte qu\'il a ', 'La chatte qu\'il a LA CHATTE.mp3'),
(88, 'Oui et alors ?', '21.05 oui et alors.mp3'),
(89, 'Bah oui connard', 'Alpha cast bah oui connard.mp3'),
(91, 'Lacoste TN', 'Lacoste TN ou quoi frère.mp3'),
(92, 'CHEH', 'CHEH ! [Maskey].mp3'),
(93, 'TG FANTA', 'ta gueule fanta.mp3'),
(94, 'Pas toi qui décides', 'Fanta - Ouai mais c\'est pas toi qui décide.mp3'),
(95, 'Taisez vous !', 'Finkielkraut - taisez-vous.mp3'),
(98, 'J\'ai un background', 'J\'ai une histoire, j\'ai un background - DJ SNAKE.mp3'),
(99, 'Mais c\'était sûr en fait', 'Sardoche - MAIS VOILA MAIS C\'ÉTAIT SÛR EN FAIT.mp3'),
(100, 'Encore ça fait bcp la non', 'Encore, Ca fait beaucoup la non! Mister V.mp3'),
(101, 'Enorme', 'Enorme - Jamy (c\'est pas sorcier).mp3'),
(102, 'Ecole vétérinaire MA', 'Je suis à lécole vétérinaire de Maison-Alfort, et je vais apprendre à masturber un chien .mp3'),
(103, 'Mon spermatoz', 'MON SPERME NE T\'A PAS SUFFIT.mp3'),
(104, 'Oulala l\'enchainement', 'oulala l\'enchainement !.mp3'),
(106, 'BRICOLE Refrain', 'BRICOLE Refrain.mp3'),
(107, 'PIstolet à colle', 'Pistolet à colle.mp3'),
(108, 'Checker moi ça', 'Checker moi ça.mp3'),
(109, 'La rafale', 'la rafale.mp3'),
(110, 'Checker moi ça la rafale', 'Checker moi ça la rafale.mp3'),
(111, 'Boeuf Bourguignon', 'boeuf bourguignon.mp3'),
(112, 'Carottes Fondantes', 'carottes fondantes.mp3'),
(113, 'Ah sa mère', 'ah-sa-mere.mp3'),
(114, 'Il a taper le péage', 'ah sa mere taper péage.mp3'),
(115, 'Comme une balle', 'comme une balle.mp3'),
(116, 'Go fast camion', 'gofast ton camion comme une balle.mp3'),
(117, 'QI de 143', 'QI DE 143 kirby 54.mp3'),
(118, 'Nous sommes en guerre', 'Nous sommes en guerre.mp3'),
(119, 'L\'État paiera', 'L\'état paiera.mp3'),
(120, 'Avec du savon', 'Avec du savon !.mp3'),
(121, 'Coup dur pour Guillaume', 'Coup dur pour Guillaume !.mp3'),
(122, 'Au revoir Yves', 'COMPILATION YVES.mp3'),
(123, 'Quelle indignité', 'Sarkozy Quelle indignité.mp3'),
(124, 'Service public ', 'Quelle indignité service public.mp3'),
(125, 'Mais vous fumez M.', 'Eh mais vous fumez monsieur.mp3'),
(129, 'Gens qui parlent en Fr', 'OH MON DIEU LES GENS QUI PARLENT EN FRANÇAIS ILS ONT TELLEMENT DE CHARISME ! - Pokimane.mp3'),
(130, 'Un troupeau de banane', 'UN TROUPEAU DE BANANE.mp3'),
(131, 'Rire de droite', 'Antoine Daniel - Rire de droite.mp3'),
(136, 'Dis les termes', 'DIS LES TERMES.mp3'),
(137, 'La carte Kiwi', 'Carte Kiwi Short.mp3'),
(138, 'En ce moment je parierais', 'en-ce-moment-je-parierais.mp3'),
(139, 'Je suis une sauvage', 'JE SUIS UNE SAUVAGE !.mp3'),
(140, 'Tuer le concours', '18082013 Teddy Tamgho, 6ème saut à 18,04m.mp3'),
(141, 'Ouvre ta gueule TK', '[ thekairi78 Sound ] - Ouvre Ta Gueule.mp3'),
(143, 'AROUF GANGSTA', 'AROUG GANSTA.mp3'),
(144, 'CACA DANS LES RAVIOLIS', 'caca dans les raviolis.mp3'),
(145, 'C\'est honteux !', 'C\'est honteux René.mp3'),
(146, 'Colère noire', 'Je suis dans une colère noire.mp3'),
(147, 'Moral in the chaussettes', 'Le moral dans les chaussettes .mp3'),
(148, 'On s\'en bat les couilles', 'On s\'en bat les couilles René Malleville.mp3'),
(149, 'C\'est mwa', 'c\'est mwa.mp3'),
(150, 'BJ Messieurs Dames', 'Bien joue messieurs dames.mp3'),
(151, 'Connasse MV', 'connasse.mp3'),
(152, 'Contrôle de CW', 'Contrôle de chicken wings.mp3'),
(154, 'Je commence à le prendre', 'Culte Maïté explique comment manger un ortolan Archive INA.mp3'),
(156, 'Damn les gens', 'DAMN LES GENS.mp3'),
(158, 'Alors peut être !', 'Finish INCROYABLE - France relais 4x400m Femme Championnat d\'Europe 2014 Women - Incredible fini.mp3'),
(160, 'AH !', 'Denis Brogniart AH.mp3'),
(162, 'Grigny la grande borne', 'Grigny la grande borne.mp3'),
(164, 'Incroyable du cul M. PDB', 'incroyable-du-cul-monsieur-pot-de-beurre.mp3'),
(165, 'La boule magique', 'La boule magique.mp3'),
(166, 'Je vais t\'enculer', 'J\'vais t\'enculer et tu jouiras....mp3'),
(167, 'L\'amour sans prélis', 'l\'amour sans preliminaire.mp3'),
(168, 'Jeanne au secours !', 'Jean Marie Le Pen - Jeanne au secours !!.mp3'),
(169, 'Oh pute ! ', 'Kaaris Oh Pute !.mp3'),
(171, 'Le djo le david', 'le djo le david.mp3'),
(172, 'Le raaaaaaaaaaanch', 'Le raaaaaaaaaanch.mp3'),
(176, 'Jamais vs allez trouver', 'mais jamais vous allez trouver misterv.mp3'),
(177, 'Claqué au sol', 'Mister V - Claqué au sol.mp3'),
(178, 'Mon sexe est en feu', 'Mon sexe est en feu.mp3'),
(179, 'Tkt ça va bien se passer', 'Ne tinquiète pas ça va bien se passer.mp3'),
(181, 'Michel c\'est le Brésil', 'Michel c\'est le Brésil !! 1.mp3'),
(182, 'Michel c\'est le Velux', 'Michel c\'est le Brésil !! 2.mp3'),
(183, 'C\'est dégueulasse', 'cest-degueulasse.mp3'),
(184, 'Vraiment très 1Tressant', 'C\'était vraiment très intéressant..mp3'),
(185, 'David Goodenough', 'Compilation David Goodenough + Mickael Goodenough.mp3'),
(186, 'Hallucination Collective', 'hallucination collective -Sylvain Durif.mp3'),
(187, 'HEY SALUT A TOUS LES AMIS', 'HEY, SALUT A TOUS LES AMIS, C\'EST DAVID LAFARGE POKEMON.mp3'),
(188, 'Philippe !', 'hitman-le-cobra-philippe-je-sais-ou-tu-te-caches.mp3'),
(189, 'Pas venue pour souffrir ', 'Je suis pas venu ici pour souffrir OK !.mp3'),
(190, 'Mais c\'est d\'la merde !', 'Jean-Pierre Coffe - Mais c\'est d\'la MERDE - Version courte.mp3'),
(191, 'Les inconscients', 'Les inconscients ne savent pas qu\'ils sont inconscients car il ne connaissent pas la.mp3'),
(192, 'Ta femme je l\'ai prise', 'ta femme je l\'ai prise.mp3'),
(193, 'Ferme ta gueule Lopez', 'ferme ta gueule lopez.mp3'),
(194, 'Lopez NRV Full', 'Lopez gitan énervé.mp3'),
(195, 'Mais il va la fermer OSS', 'Mais il va la fermer sa gueule.mp3'),
(196, 'Mais oui c\'est clair', 'Mais oui c\'est clair ! By Eddy-Malou !.mp3'),
(197, ' Mais j\'veux faire l\'amour', 'mais-moi-je-veu-faire-lamour.mp3'),
(198, 'Ma personne est sacrée', 'Me touché pas vous avez pas le droit , ma personne est sacré.mp3'),
(199, 'Coucou', 'MissJirachi Coucou.mp3'),
(200, 'Mwhahaha Antoine Daniel', 'mwhahhahaha.mp3'),
(201, 'Oh l\'assassin !', 'Oh l\'assassin !.mp3'),
(202, 'Oh mais qu\'es ce que SD', 'OH MAIS QU\'EST QUE C\'EST QUE SE TRUC LA.mp3'),
(203, 'Oh patron court', 'oh patron court.mp3'),
(204, 'Oh patron long', 'oh patron long.mp3'),
(205, 'Ah c\'est marrant Orelsan', 'Orelsan - Ah c\'est marrant.mp3'),
(206, 'OSKUR MV', 'oskur.mp3'),
(207, 'Oh si c\'est rigolo OSS', 'OSS 117 - Oh si, c\'est rigolo !.mp3'),
(208, 'Une dictature OSS', 'OSS 117-Rio ne répond plus-Une dictature.mp3'),
(209, 'OUI', 'oui_2.mp3'),
(210, 'C\'est notre projeeeet', 'PARCE QUE C\'EST NOTRE PROJET.mp3'),
(211, 'Pas ça Zinedine', 'Pas ca Zinedine....mp3'),
(212, 'J\'ai le permis camion', 'Permis Camion.mp3'),
(213, 'Petit FDP de merde', 'petit-fdp-de-merd.mp3'),
(214, 'Popopoooo', 'Popopoooo.mp3'),
(215, 'Putain ma queue est huge', 'putain-ma-queue-est-enorme.mp3'),
(216, 'RHINOSHIEEEELD', 'RHINOSHIELD.mp3'),
(217, 'Sard a mal a la queue', 'sard-mal-a-la-queue.mp3'),
(218, 'Sard et la team Pavard', 'sardoche-jeduque-un-enfant_zholfoqh.mp3'),
(219, 'Sard et la team Mbappé', 'sardoche-kylian-mbappe-music.mp3'),
(220, 'C\'est des saucisses MV', 'saucisses.mp3'),
(221, 'Second poteau Pavard !', 'second-poteau-pavard-tf1-france-argentine-world-cup-2018.mp3'),
(222, 'Il en suffira d\'une', 'Il en suffira d\'une.mp3'),
(223, 'J\'en ai rien a foutre ', 'siphano-jen-ai-rien-a-foutre-1.mp3'),
(224, 'C\'est toi le master ?', 'SUPERZOULOUX CEST TOI LE MASTER.mp3'),
(225, 'Tequila Heineken', 'TEQUILA HEINEKEN PAS L\'TEMPS D\'NIAISER.mp3'),
(226, 'T\'es vraiment un con Nils', 'T\'es vraiment un sale petit con.mp3'),
(227, 'Tiens tiens tiens', 'Tiens tiens tiens.mp3'),
(228, 'Tu es grosse Mélissandre', 'TU ES GROSSE MELISSANDRE !!!.mp3'),
(229, 'Tu crois ke c du respect', 'Tu crois qu\'c\'est du respect ça.mp3'),
(230, 'OUI WTC', 'what-the-cut-oui.mp3'),
(231, 'Ya pas de panneaux', 'YA PAS DE PANNEAUX VIDEO ENTIERE.mp3');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `soundfr`
--
ALTER TABLE `soundfr`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `Son` (`Son`),
  ADD KEY `Nom` (`Nom`) USING BTREE;

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `soundfr`
--
ALTER TABLE `soundfr`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=232;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
