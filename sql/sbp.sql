-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : jeu. 23 juil. 2020 à 23:15
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
-- Base de données : `sbp2`
--

-- --------------------------------------------------------

--
-- Structure de la table `keywrds`
--

CREATE TABLE `keywrds` (
  `ID` int(10) UNSIGNED NOT NULL,
  `Nom` varchar(255) CHARACTER SET utf8 NOT NULL,
  `Appartenance` varchar(255) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `keywrds`
--

INSERT INTO `keywrds` (`ID`, `Nom`, `Appartenance`) VALUES
(1, 'Big Flo', 'FR'),
(2, 'Benoit Paire ', 'FR'),
(3, 'Alphacast', 'FR'),
(4, 'Maskey ', 'FR'),
(5, 'Fanta ', 'FR'),
(6, 'Finkelkraut', 'FR'),
(7, 'DJ Snake', 'FR'),
(8, 'Sardoche', 'FR'),
(9, 'Mister V', 'FR'),
(10, 'Jamy', 'FR'),
(11, 'Maisons-Alfort ', 'FR'),
(12, 'Mon sperme', 'FR'),
(13, 'Bob Sinclair ', 'FR'),
(14, 'Bricole ', 'FR'),
(15, 'La rafale', 'FR'),
(16, 'Maité, boeuf bourgignon', 'FR'),
(17, 'Ah sa mére, taper le péage, comme un balle', 'FR'),
(18, 'Kirby 54', 'FR'),
(19, 'Macron, le M', 'FR'),
(20, 'Nicolas Sarkozy', 'FR'),
(21, 'Pokimane', 'FR'),
(22, 'Rahan', 'FR'),
(23, 'Antoine Daniel', 'FR'),
(24, 'Mais si c\'est possible, l\'enfant de - de 16 ans', 'FR'),
(25, 'Chic,bourgeoise,ratchet', 'FR'),
(26, 'Il vient de tuer le concours', 'FR'),
(27, 'TK, The Kairi 78', 'FR'),
(28, 'Arouf est celebre', 'FR'),
(29, 'Jean Pierre Koffe, en 2001 ', 'FR'),
(30, 'René Malleville', 'FR'),
(31, 'C\'est moi', 'FR'),
(32, 'Grigny la Grande Borne', 'FR'),
(33, 'Mister MV', 'FR'),
(34, 'Kaaris', 'FR'),
(35, 'Maité, sucer le derrière', 'FR'),
(36, 'Tibo InShape', 'FR'),
(37, 'Denis Brogniart', 'FR'),
(38, 'Depardieu', 'FR'),
(39, 'JMLP, Jean Marie Le Pen', 'FR'),
(40, 'Le joe, le david, hoffman, calotte, de ces morts, ta femme, ferme ta gueule, ftg, lopez', 'FR'),
(41, 'Vieux Callaghan', 'FR'),
(42, 'Palmashow', 'FR'),
(43, 'Antoine Daniel, WTC, What The Cut', 'FR'),
(44, 'Benoit Paire ', 'FR'),
(45, 'JDG, Joueur du Grenier', 'FR'),
(46, 'Sylvain Durif', 'FR'),
(47, 'David Lafarge Pokémon', 'FR'),
(48, 'Je sais où tu caches, salaud', 'FR'),
(49, 'OSS 117', 'FR'),
(50, 'Eddy Malou', 'FR'),
(51, 'Jean Luc Mélenchon', 'FR'),
(52, 'Miss Jirachi ', 'FR'),
(53,  'Bonne Nuit les Petits, Nounours', 'FR'),
(54, 'Orelsan', 'FR'),
(55, 'Zerator', 'FR'),
(56, 'Nitro XL, xanogene', 'FR'),
(57, 'Siphano', 'FR'),
(58, 'Zouloux', 'FR'),
(59, 'Pas le temps de Niaiser', 'FR'),
(60, 'Booba', 'FR'),
(61, 'Jeune entrepreneur, question vite repondue', 'FR'),
(62, 'Wejdene, caleçons sales, hors de ma vue', 'FR'),
(63, 'Pamela, d7 d8', 'FR'),
(64, 'Marius', 'FR'),
(65, 'Bosh, Djomb, piece', 'FR'),
(66, 'Sortez les couteaux, la pièce montée on va la démonter', 'FR'),
(67, 'Arouf Gangsta', 'FR'),
(68, 'DJ Belge', 'FR'),
(69, 'Moundir ', 'FR'),
(70, 'JCVD', 'FR'),
(71, 'Eric Cantona', 'FR'),
(72, 'Thomas Cyrix', 'FR'),
(73, 'Zelda ', 'FR'),
(74, 'Flex Tape', 'WORLD'),
(75, 'PEWDS, PewDiePie', 'WORLD'),
(76, 'Big Shaq', 'WORLD'),
(77, 'Hit or Miss ', 'WORLD'),
(78, 'Coffin ', 'WORLD');

-- --------------------------------------------------------

--
-- Structure de la table `soundfr`
--

CREATE TABLE `soundfr` (
  `ID` int(10) UNSIGNED NOT NULL,
  `Nom` varchar(255) CHARACTER SET utf8 NOT NULL,
  `Son` varchar(255) CHARACTER SET utf8 NOT NULL,
  `keywords` text CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `soundfr`
--

INSERT INTO `soundfr` (`ID`, `Nom`, `Son`, `keywords`) VALUES
(1, 'Alors ecoute moi bien', 'Alors écoute moi bien ! (BigFlo).mp3', 'Big Flo'),
(2, 'La chatte qu\'il a ', 'La chatte qu\'il a LA CHATTE.mp3', 'Benoit Paire '),
(3, 'Oui et alors ?', '21.05 oui et alors.mp3', ''),
(4, 'Bah oui connard', 'Alpha cast bah oui connard.mp3', 'Alphacast'),
(5, 'Lacoste TN', 'Lacoste TN ou quoi frère.mp3', ''),
(6, 'CHEH', 'CHEH ! [Maskey].mp3', 'Maskey'),
(7, 'TG FANTA', 'ta gueule fanta.mp3', 'Fanta'),
(8, 'Pas toi qui décides', 'Fanta - Ouai mais c\'est pas toi qui décide.mp3', 'Fanta'),
(9, 'Taisez vous !', 'Finkielkraut - taisez-vous.mp3', 'Finkelkraut'),
(10, 'J\'ai un background', 'J\'ai une histoire, j\'ai un background - DJ SNAKE.mp3', 'DJ Snake'),
(11, 'Mais c\'était sûr en fait', 'Sardoche - MAIS VOILA MAIS C\'ÉTAIT SÛR EN FAIT.mp3', 'Sardoche'),
(12, 'Encore ça fait bcp la non', 'Encore, Ca fait beaucoup la non! Mister V.mp3', 'Mister V'),
(13, 'Enorme', 'Enorme - Jamy (c\'est pas sorcier).mp3', 'Jamy'),
(14, 'Ecole vétérinaire MA', 'Je suis à lécole vétérinaire de Maison-Alfort, et je vais apprendre à masturber un chien .mp3', 'Maisons-Alfort'),
(15, 'Mon spermatoz', 'MON SPERME NE T\'A PAS SUFFIT.mp3', 'Mon sperme '),
(16, 'Oulala l\'enchainement', 'oulala l\'enchainement !.mp3', 'Bob Sinclair'),
(17, 'BRICOLE Refrain', 'BRICOLE Refrain.mp3', 'Bricole'),
(18, 'PIstolet à colle', 'Pistolet à colle.mp3', 'Bricole'),
(19, 'Checker moi ça', 'Checker moi ça.mp3', 'La rafale'),
(20, 'La rafale', 'la rafale.mp3', 'La rafale'),
(21, 'Checker moi ça la rafale', 'Checker moi ça la rafale.mp3', 'La rafale'),
(22, 'Boeuf Bourguignon', 'boeuf bourguignon.mp3', 'Maité, boeuf bourgignon'),
(23, 'Carottes Fondantes', 'carottes fondantes.mp3', 'Maité, boeuf bourgignon'),
(24, 'Ah sa mère', 'ah-sa-mere.mp3', 'Ah sa mére, taper le péage, comme un balle'),
(25, 'Il a taper le péage', 'ah sa mere taper péage.mp3', 'Ah sa mére, taper le péage, comme un balle'),
(26, 'Comme une balle', 'comme une balle.mp3', 'Ah sa mére, taper le péage, comme un balle'),
(27, 'Go fast camion', 'gofast ton camion comme une balle.mp3', 'Ah sa mére, taper le péage, comme un balle'),
(28, 'QI de 143', 'QI DE 143 kirby 54.mp3', 'Kirby 54'),
(29, 'Nous sommes en guerre', 'Nous sommes en guerre.mp3', 'Macron, le M'),
(30, 'L\'État paiera', 'L\'état paiera.mp3', 'Macron, le M'),
(31, 'Avec du savon', 'Avec du savon !.mp3', 'Macron, le M'),
(32, 'Coup dur pour Guillaume', 'Coup dur pour Guillaume !.mp3', ''),
(33, 'Au revoir Yves', 'COMPILATION YVES.mp3', ''),
(34, 'Quelle indignité', 'Sarkozy Quelle indignité.mp3', 'Nicolas Sarkozy'),
(35, 'Service public ', 'Quelle indignité service public.mp3', 'Nicolas Sarkozy'),
(36, 'Mais vous fumez M.', 'Eh mais vous fumez monsieur.mp3', 'Nicolas Sarkozy'),
(37, 'Gens qui parlent en Fr', 'OH MON DIEU LES GENS QUI PARLENT EN FRANÇAIS ILS ONT TELLEMENT DE CHARISME ! - Pokimane.mp3', 'Pokimane'),
(38, 'Un troupeau de banane', 'UN TROUPEAU DE BANANE.mp3', 'Rahan'),
(39, 'Rire de droite', 'Antoine Daniel - Rire de droite.mp3', 'Antoine Daniel'),
(40, 'Dis les termes', 'DIS LES TERMES.mp3', ''),
(41, 'La carte Kiwi', 'Carte Kiwi Short.mp3', 'Mais si c\'est possible, l\'enfant de - de 16 ans'),
(42, 'En ce moment je parierais', 'en-ce-moment-je-parierais.mp3', ''),
(43, 'Je suis une sauvage', 'JE SUIS UNE SAUVAGE !.mp3', 'Chic,bourgeoise,ratchet'),
(44, 'Tuer le concours', '18082013 Teddy Tamgho, 6ème saut à 18,04m.mp3', 'Il vient de tuer le concours'),
(45, 'Vas y ouvre ta gueule', '[ thekairi78 Sound ] - Ouvre Ta Gueule.mp3', 'TK, The Kairi 78'),
(46, 'AROUF GANGSTA', 'AROUG GANSTA.mp3', 'Arouf est celebre'),
(47, 'CACA DANS LES RAVIOLIS', 'caca dans les raviolis.mp3', 'Jean Pierre Koffe, en 2001 '),
(48, 'C\'est honteux !', 'C\'est honteux René.mp3', 'René Malleville'),
(49, 'Colère noire', 'Je suis dans une colère noire.mp3', 'René Malleville'),
(50, 'Moral in the chaussettes', 'Le moral dans les chaussettes .mp3', 'René Malleville'),
(51, 'On s\'en bat les couilles', 'On s\'en bat les couilles René Malleville.mp3', 'René Malleville'),
(52, 'C\'est mwa', 'c\'est mwa.mp3', 'C\'est moi'),
(53, 'BJ Messieurs Dames', 'Bien joue messieurs dames.mp3', 'Grigny la Grande Borne'),
(54, 'Connasse', 'connasse.mp3', 'Mister MV'),
(55, 'Contrôle de CW', 'Contrôle de chicken wings.mp3', 'Kaaris'),
(56, 'Je commence à le prendre', 'Culte Maïté explique comment manger un ortolan Archive INA.mp3', 'Maité, sucer le derrière'),
(57, 'Damn les gens', 'DAMN LES GENS.mp3', 'Tibo InShape'),
(58, 'Alors peut être !', 'Finish INCROYABLE - France relais 4x400m Femme Championnat d\'Europe 2014 Women - Incredible fini.mp3', ''),
(59, 'AH !', 'Denis Brogniart AH.mp3', 'Denis Brogniart'),
(60, 'Grigny la grande borne', 'Grigny la grande borne.mp3', 'Grigny la Grande Borne'),
(61, 'Incroyable du cul M. PDB', 'incroyable-du-cul-monsieur-pot-de-beurre.mp3', 'Mister MV'),
(62, 'La boule magique', 'La boule magique.mp3', 'Mister MV'),
(63, 'Je vais t\'enculer', 'J\'vais t\'enculer et tu jouiras....mp3', 'Depardieu'),
(64, 'L\'amour sans prélis', 'l\'amour sans preliminaire.mp3', ''),
(65, 'Jeanne au secours !', 'Jean Marie Le Pen - Jeanne au secours !!.mp3', 'JMLP, Jean Marie Le Pen'),
(66, 'Oh pute ! ', 'Kaaris Oh Pute !.mp3', 'Kaaris'),
(67, 'Le joe le david', 'le djo le david.mp3', 'Le joe, le david, hoffman, calotte, de ces morts, ta femme, ferme ta gueule, ftg, lopez'),
(68, 'Le raaaaaaaaaaanch', 'Le raaaaaaaaaanch.mp3', 'Vieux Callaghan'),
(69, 'Jamais vs allez trouver', 'mais jamais vous allez trouver misterv.mp3', 'Mister V'),
(70, 'Claqué au sol', 'Mister V - Claqué au sol.mp3', 'Mister V'),
(71, 'Mon sexe est en feu', 'Mon sexe est en feu.mp3', 'Mister MV'),
(72, 'Tkt ça va bien se passer', 'Ne tinquiète pas ça va bien se passer.mp3', ''),
(73, 'Michel c\'est le Brésil', 'Michel c\'est le Brésil !! 1.mp3', 'Palmashow'),
(74, 'Michel c\'est le Velux', 'Michel c\'est le Brésil !! 2.mp3', 'Palmashow'),
(75, 'C\'est dégueulasse', 'cest-degueulasse.mp3', 'Antoine Daniel, WTC, What The Cut'),
(76, 'Vraiment très 1Tressant', 'C\'était vraiment très intéressant..mp3', ''),
(77, 'David Goodenough', 'Compilation David Goodenough + Mickael Goodenough.mp3', 'JDG, Joueur du Grenier'),
(78, 'Hallucination Collective', 'hallucination collective -Sylvain Durif.mp3', 'Sylvain Durif'),
(79, 'HEY SALUT A TOUS LES AMIS', 'HEY, SALUT A TOUS LES AMIS, C\'EST DAVID LAFARGE POKEMON.mp3', 'David Lafarge Pokémon'),
(80, 'Philippe !', 'hitman-le-cobra-philippe-je-sais-ou-tu-te-caches.mp3', 'Je sais où tu caches, salaud'),
(81, 'Pas venue pour souffrir ', 'Je suis pas venu ici pour souffrir OK !.mp3', ''),
(82, 'Mais c\'est d\'la merde !', 'Jean-Pierre Coffe - Mais c\'est d\'la MERDE - Version courte.mp3', 'Jean Pierre Koffe'),
(83, 'Les inconscients', 'Les inconscients ne savent pas qu\'ils sont inconscients car il ne connaissent pas la.mp3', ''),
(84, 'Ta femme je l\'ai prise', 'ta femme je l\'ai prise.mp3', 'Le joe, le david, hoffman, calotte, de ces morts, ta femme, ferme ta gueule, ftg, lopez'),
(85, 'Ferme ta gueule Lopez', 'ferme ta gueule lopez.mp3', 'Le joe, le david, hoffman, calotte, de ces morts, ta femme, ferme ta gueule, ftg, lopez'),
(86, 'Lopez NRV Full', 'Lopez gitan énervé.mp3', 'Le joe, le david, hoffman, calotte, de ces morts, ta femme, ferme ta gueule, ftg, lopez'),
(87, 'Mais il va la fermer ', 'Mais il va la fermer sa gueule.mp3', 'OSS 117'),
(88, 'Mais oui c\'est clair', 'Mais oui c\'est clair ! By Eddy-Malou !.mp3', 'Eddy Malou'),
(89, 'Ma personne est sacrée', 'Me touché pas vous avez pas le droit , ma personne est sacré.mp3', 'Jean Luc Mélenchon'),
(90, 'Coucou', 'MissJirachi Coucou.mp3', 'Miss Jirachi'),
(91, 'Mwhahaha Antoine Daniel', 'mwhahhahaha.mp3', 'Antoine Daniel, WTC, What The Cut'),
(92, 'Oh l\'assassin !', 'Oh l\'assassin !.mp3', ''),
(93, 'Oh mais qu\'es ce que SD', 'OH MAIS QU\'EST QUE C\'EST QUE SE TRUC LA.mp3', 'Sylvain Durif'),
(94, 'Oh patron court', 'oh patron court.mp3', 'Bonne Nuit les Petits, Nounours'),
(95, 'Oh patron long', 'oh patron long.mp3', 'Bonne Nuit les Petits, Nounours'),
(96, 'Ah c\'est marrant ', 'Orelsan - Ah c\'est marrant.mp3', 'Orelsan'),
(97, 'OSKUR', 'oskur.mp3', 'Mister MV'),
(98, 'Oh si c\'est rigolo ', 'OSS 117 - Oh si, c\'est rigolo !.mp3', 'OSS 117'),
(99, 'Une dictature ', 'OSS 117-Rio ne répond plus-Une dictature.mp3', 'OSS 117'),
(100, 'OUI', 'oui_2.mp3', 'Zerator'),
(101, 'C\'est notre projeeeet', 'PARCE QUE C\'EST NOTRE PROJET.mp3', 'Macron, le M'),
(102, 'Pas ça Zinedine', 'Pas ca Zinedine....mp3', ''),
(103, 'J\'ai le permis camion', 'Permis Camion.mp3', 'Kaaris'),
(104, 'Petit FDP de merde', 'petit-fdp-de-merd.mp3', 'Antoine Daniel, WTC, What The Cut'),
(105, 'Popopoooo', 'Popopoooo.mp3', 'Antoine Daniel, WTC, What the Cut'),
(106, 'Putain ma queue est huge', 'putain-ma-queue-est-enorme.mp3', 'Nitro XL, xanogene'),
(107, 'RHINOSHIEEEELD', 'RHINOSHIELD.mp3', ''),
(108, 'Sard a mal a la queue', 'sard-mal-a-la-queue.mp3', 'Sardoche'),
(109, 'Sard et la team Pavard', 'sardoche-jeduque-un-enfant_zholfoqh.mp3', 'Sardoche'),
(110, 'Sard et la team Mbappé', 'sardoche-kylian-mbappe-music.mp3', 'Sardoche'),
(111, 'C\'est des saucisses', 'saucisses.mp3', 'Mister MV'),
(112, 'Second poteau Pavard !', 'second-poteau-pavard-tf1-france-argentine-world-cup-2018.mp3', ''),
(113, 'Il en suffira d\'une', 'Il en suffira d\'une.mp3', ''),
(114, 'J\'en ai rien a foutre ', 'siphano-jen-ai-rien-a-foutre-1.mp3', 'Siphano'),
(115, 'C\'est toi le master ?', 'SUPERZOULOUX CEST TOI LE MASTER.mp3', 'Zouloux'),
(116, 'Tequila Heineken', 'TEQUILA HEINEKEN PAS L\'TEMPS D\'NIAISER.mp3', 'Pas le temps de Niaiser'),
(117, 'T\'es vraiment un con Nils', 'T\'es vraiment un sale petit con.mp3', ''),
(118, 'Tiens tiens tiens', 'Tiens tiens tiens.mp3', 'Booba'),
(119, 'Tu es grosse Mélissandre', 'TU ES GROSSE MELISSANDRE !!!.mp3', ''),
(120, 'Tu crois ke c du respect', 'Tu crois qu\'c\'est du respect ça.mp3', ''),
(121, 'OUI WTC', 'what-the-cut-oui.mp3', 'Antoine Daniel, WTC, What the Cut'),
(122, 'Ya pas de panneaux', 'YA PAS DE PANNEAUX VIDEO ENTIERE.mp3', 'Antoine Daniel'),
(123, 'Question vite répondue ', 'question vite repondue.mp3', 'Jeune entrepreneur, question vite repondue'),
(124, 'Jeune entrepreneur bus', 'jeune entrepreneur verre.mp3', 'Jeune entrepreneur, question vite repondue'),
(125, 'Jeune entrepreneur étud', 'jeune entrepreneur études.mp3', 'Jeune entrepreneur, question vite repondue'),
(126, 'Jeune entrepreneur RS', 'jeune entrepreneur rs.mp3', 'Jeune entrepreneur, question vite repondue'),
(127, 'Tu prends caleçons sales ', 'Tu prends tes calcons sales.mp3', 'Wejdene, caleçons sales, hors de ma vue'),
(128, 'Et tu hors de ma vue', 'et tu hors de ma vue.mp3', 'Wejdene, caleçons sales, hors de ma vue'),
(129, 'Mais t\'as pas de valeurs', 'mais ta pas de valeur.mp3', 'Wejdene, caleçons sales, hors de ma vue'),
(130, 'COMBIEN ?!', 'COMBIEN !.mp3', ''),
(131, 'D7D8 short', 'D7D8.mp3', 'Pamela, d7 d8'),
(132, 'D7D8 Mais je suis Pamela', 'd7d8 pamela.mp3', 'Pamela, d7 d8'),
(133, 'D7D8 Full', 'D7D8 full.mp3', 'Pamela, d7 d8'),
(134, 'Raid Saxo Legends', '1. Raid Saxo Legends.mp3', 'Antoine Daniel'),
(135, 'Lofi de merde', '2. Lofi de Merde.mp3', 'Antoine Daniel'),
(136, 'Minecraft', '3. Minecraft.mp3', 'Antoine Daniel'),
(137, 'CEO de mon coeur', '4. CEO de mon Coeur.mp3', 'Antoine Daniel'),
(138, 'Twitch ASMR', '5. TWITCH ASMR.mp3', 'Antoine Daniel'),
(139, 'Qui fume ici ? Full', 'méthode commando pour arrêter de fumer qui fume ici (Marius commandos marine).mp3', 'Marius'),
(140, 'Qui fume ici ?', 'qui fume ici.mp3', 'Marius'),
(141, 'Bien ou quoi ?', 'bien ou quoi.mp3', 'Bosh, Djomb, piece'),
(142, 'Pièce ', 'piece.mp3', 'Bosh, Djomb, piece'),
(143, 'Serguei Bubka est debout ', 'Serguei Bubka est debout.mp3', ''),
(144, 'Record du monde', 'Record du monde.mp3', ''),
(145, 'Voila le gâteau', 'Voila le gateau.mp3', 'Sortez les couteaux, la pièce montée on va la démonter'),
(146, 'Regardez moi ça', 'regarder moi ça.mp3', 'Nitro XL, xanogene'),
(147, 'Regardez un peu', 'regardez un peu.mp3', 'Nitro XL, xanogene'),
(148, 'Et vlan !', 'et vlan.mp3', 'Nitro XL, xanogene'),
(149, 'AROUF et l\'anglais', '[AROUF GANGSTA] Casse les couilles à parler anglais !.mp3', 'Arouf Gangsta'),
(150, 'Je veux faire l\'amour lg', '[MEME] JE VEUX FAIRE L\'AMOUR !.mp3', ''),
(151, 'Je veux faire l\'amour crt', '[MEME] JE VEUX FAIRE L\'AMOUR short.mp3', ''),
(152, 'Pensais pas ça de toi', '[MEME] Mais je pensais pas ça de toi ! TK.mp3', 'TK,The Kairi 78'),
(153, 'Salut mon pote !', '[MEME] Salut mon pote.mp3', ''),
(154, 'je suis Abasourdi', 'A-BA-SOUR-DI.mp3', ''),
(155, 'Accordéon court', 'Accordeon court.mp3', ''),
(156, 'Accordéon long', 'Accordeon long.mp3', ''),
(157, 'AIE AIE AIE DJ', 'AIE AIE AIE.mp3', 'DJ Belge'),
(158, 'Allez méga fiesta !', 'Allez mega fiesta.mp3', 'DJ Belge'),
(159, 'ATTENTION CONSEIL IMP', 'ATTENTION CONSEIL IMPORTANT.mp3', ''),
(160, 'Canard coin coin short', 'Canard coin coin court.mp3', ''),
(161, 'Canard coin coin long', 'Canard coin coin long.mp3', ''),
(162, 'Qui est à l\'envers ?', 'C\'est moi qui suis à l\'envers.mp3', ''),
(163, 'Chavirer un chameau', 'chavirer un chameau.mp3', 'Moundir'),
(164, 'Comme le disait Yoda', 'comme le disait yoda.mp3', 'Moundir'),
(165, 'Matelas bouche Moundir', 'elle parle ces des matelas qui sortent de sa bouche.mp3', 'Moundir'),
(166, 'Ému mais pas des yeux', 'emu mais pas des yeux.mp3', 'Moundir'),
(167, 'Fanfare 1 Zanne', 'Fanfare boffe.mp3', ''),
(168, 'FDP ma lumière', 'FDP ma lumiere.mp3', 'TK, The Kairi, 78'),
(169, 'Frappe moi = EMPOISONNÉ', 'Frappe moi je t\'empoisonne.mp3', ''),
(170, 'HAN OUAIS', 'Han ouais.mp3', ''),
(171, 'IBIZA DJ ', 'IBIZA.mp3', 'DJ Belge'),
(172, 'J\'adore l\'eau JCVD', 'JCVD J\'adore l\'eau, dans 2030 ans y en aura plus..mp3', 'JCVD'),
(173, 'JE LEUR PISSE AU CUL', 'JE LEURS PISSE AU CUL !.mp3', 'Eric Cantona'),
(174, 'JE PORTE PLAINTE CYRIX', 'Je porte plainte pour diffamation, harcèlement et incitation à la haine.mp3', 'Thomas Cyrix'),
(175, 'J\'VAIS BOIRE TON SANG', 'J\'vais t\'enculr je vais te briser tes os j\'vais boire ton sang.mp3', 'Kaaris'),
(176, 'POUDRE DE PERLIMPINPIN', 'la poudre de perlimpinpin.mp3', 'Macron ,le M'),
(177, 'Le système gargamel', 'le systeme gargamel.mp3', 'Moundir'),
(178, 'Motus FDP Maskey', 'Maskey - Motus FDP.mp3', 'Maskey'),
(179, 'Moundir Aventurier lait', 'Moundir Aventurier du lait.mp3', 'Moundir'),
(180, 'Fragile du moteur', 'Moundir est fragile du moteur.mp3', 'Moundir'),
(181, 'Moundir et le 14 juillet', 'Moundir et le 14 juillet.mp3', 'Moundir'),
(182, 'Moundir Punchline OMG', 'moundir punchlines.mp3', 'Moundir'),
(183, 'J\'transpire du genou', 'moundir transpire du genou.mp3', 'Moundir'),
(184, 'Pas assez divertis ?!', 'NE VOUS ETES VOUS PAS ASSEZ DIVERTIS - GLADIATOR.mp3', ''),
(185, 'Oh yeah yeah yes DJ', 'oh yeah yeah yes.mp3', 'DJ Belge'),
(186, 'Zé Parti !', 'ZÉ PARTI.mp3', 'DJ Belge'),
(187, 'OKAYYYYY let\'s go ! long', 'OKAYYY LETS GO - FORAIN long.mp3', ''),
(188, 'OKAYYYYY let\'s go ! court', 'OKAYYY LETS GO - FORAIN short.mp3', ''),
(189, 'PK aussi corrompu ?! crt', 'pk etre aussi corrompu short.mp3', 'Moundir'),
(190, 'PK aussi corrompu ?! long', 'pk etre aussi corrompu long.mp3', 'Moundir'),
(191, 'SQUALALA => partis', 'SQUALALA NOUS SOMME PARTIS ! Zelda.mp3', 'Zelda'),
(192, 'Tu n\'est pas qualifiée !', 'Tu n\'est pas qualifié !.mp3', ''),
(193, 'Vous êtes fatigueyyy ?', 'vous etes fatigues.mp3', 'DJ Belge'),
(194, 'Envie de Clubber', '6. Envie de Clubber.mp3', 'Antoine Daniel'),
(195, 'Big Art', '7. Big Art.mp3', 'Antoine Daniel'),
(196, 'Grosse Annonce', '8. Grosse Annonce.mp3', 'Antoine Daniel'),
(197, 'GOULAG K2A', 'GOULAG K2A.mp3', 'Kaaris'),
(198, 'Appels de phares', 'Les appels de phares.mp3', 'Bosh, Djomb, piece'),
(199, 'Bas du dos bombé', 'bas du dos bien bombé.mp3', 'Bosh, Djomb, piece'),
(200, 'Sac à dos non vidé', 'j\'ai pas vidé le sac a dos.mp3', 'Bosh, Djomb, piece'),
(201, 'Finir dans sa lune', 'je vais finir sur sa lune.mp3', 'Bosh, Djomb, piece');

-- --------------------------------------------------------

--
-- Structure de la table `soundw`
--

CREATE TABLE `soundw` (
  `ID` int(10) UNSIGNED NOT NULL,
  `Nom` varchar(255) CHARACTER SET utf8 NOT NULL,
  `Son` varchar(255) CHARACTER SET utf8 NOT NULL,
  `keywords` text CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `soundw`
--

INSERT INTO `soundw` (`ID`, `Nom`, `Son`, `keywords`) VALUES
(1, 'Crab Rave', 'crab-rave.mp3', ''),
(2, 'Curb your enthusiasm', 'curb-your-enthusiasm.mp3', ''),
(3, 'Gamecube Intro', 'gamecube_intro.mp3', ''),
(4, 'Big OOF', 'BIG OOF.mp3', ''),
(5, 'Anime WOW', 'anime-wow-sound-effect.mp3', ''),
(6, 'Coffin meme', 'Coffin dance meme original clip.mp3', ''),
(7, 'A lot of damage', 'a lot of damage !.mp3', 'Flex Tape'),
(8, 'A lot a damage FULL', 'A lot of damage litle more.mp3', 'Flex Tape'),
(9, 'Do a barrel roll ', 'barrelroll.swf.mp3', ''),
(10, 'CR7 SUUUUUU', 'cr_suuu.mp3', ''),
(11, 'Drop the bass', 'd-d-d-d-drop-the-bass.mp3', ''),
(12, 'Minecraft death', 'Death sound in Minecraft.mp3', ''),
(13, 'Déja vu', 'deja-vu.mp3', ''),
(14, 'Law &amp; Order ', 'dun_dun_1.mp3', ''),
(15, 'Ah shit here we go again', 'GTA San Andreas - Ah shit, here we go again..mp3', ''),
(16, 'Inception', 'inceptionbutton.mp3', ''),
(17, 'Hey listen', 'hey_listen.mp3', ''),
(18, 'King Croc', 'King Croc Song -- \'Wild Animal Sports Day\' 帰ってきた野生動物.mp3', ''),
(19, 'L &amp; G we got him', 'ladies-and-gentlemen-we-got-him-song.mp3', ''),
(20, 'Coffin meme LONG', 'LONG Coffin Dance Meme Template.mp3', ''),
(21, 'LOUD GUY ORGASM', 'LOUD BLACK GUY ORGASM - with Subtitles.mp3', ''),
(22, 'NO GOD PLZ NO', 'NO GOD! PLEASE NO!!! NOOOOOOOOOO.mp3', ''),
(23, 'NICE', 'Nice Meme teneis videooo.mp3', ''),
(24, 'NOPE', 'nope.mp3', ''),
(25, 'PH Community Intro', 'pornhub-community-intro.mp3', ''),
(26, 'OOF', 'Roblox Death Sound - OOF Sound Effect.mp3', ''),
(27, 'Running in the 90\'s', 'running.mp3', ''),
(28, 'STONKS', 'STONKS.mp3', ''),
(29, 'To be continued', 'to-be-continued.mp3', ''),
(30, 'Ultimate ', 'ultimate-respect-button_MdJiOOn.mp3', ''),
(31, 'WOW (wink)', 'Waw meme.mp3', ''),
(32, 'How about a little more', 'how about a little more.mp3', 'Flex Tape'),
(33, 'PEWDS pickle chorus', 'PEWDS CHORUS.mp3', 'PEWDS, PewDiePie'),
(34, 'PEWDS Into a pickle', 'PEWDS into a pickle.mp3', 'PEWDS, PewDiePie'),
(35, 'Objection', 'phoenix-objection.mp3', ''),
(36, 'What ? WTF ?', 'wat. WTF!.mp3', ''),
(37, 'Why are we still here ', 'Why are we still here just to suffer Sound Effect.mp3', ''),
(38, 'Why are you running', 'Why are You Running.mp3', ''),
(39, 'OOF Sports Theme', 'Wii Sports Theme but with the Roblox Death Sound.mp3', ''),
(40, 'You\'re breathtaking', 'You\'re Breathtaking! KEANU REEVES.mp3', ''),
(41, 'They ask you how you are', 'they-ask-you-how-you-are-and-you-just-have-to-say-that-youre-fine-sound-effect_IgYM1CV.mp3', ''),
(42, 'Excuse me princess ', 'Excuse_Me_Princess.mp3', 'Zelda'),
(43, 'So yg 2 be such a buffoon', 'So young to be such a bufoon.mp3', ''),
(44, 'YAY Kids cheering', 'kids_cheering.mp3', ''),
(45, 'Thomas the train EARRAPE', 'Thomas the train engine EAR RAPE.mp3', ''),
(46, 'ISSOU Long', 'issou 1.mp3', ''),
(47, 'ISSOU', 'issou 2.mp3', ''),
(48, 'My man', 'my-man.mp3', ''),
(49, 'Don\'t do it i\'m a virgin', 'no-dont-do-it-im-a-virgin.mp3', ''),
(50, 'Pumped up kicks remix', 'passinho-do-gstv-pumped-up-kicks.mp3', ''),
(51, 'Sitcom laughs', 'sitcom-laughing-1.mp3', ''),
(52, 'Cyka blyat hardbass', 'suka-blyat_sYftCfd.mp3', ''),
(53, 'Sacha Grey orgasm', 'sasha grey orgasm.mp3', ''),
(54, 'Ear rape moaning girl', 'ear-rape-moaning-girl-troll-sound-crappy-long-edition-loudtronix-hq.mp3', ''),
(55, 'Error WIndows', 'erro.mp3', ''),
(56, 'Just Sauce Song Big Shaq', 'Big Shaq - Just Sauce Song.mp3', 'Big Shaq'),
(57, 'The Ting Goes Runnin 90\'s', 'The Ting Goes Running In The 90s.mp3', 'Big Shaq'),
(58, 'Quick Maths', 'QuickMaths.mp3', 'Big Shaq'),
(59, 'Just Sauce RAW SAUCE', 'Just Sauce Raw Sauce.mp3', 'Big Shaq'),
(60, 'The Ting goes Skraaaaaaa', 'The Ting goes Skraaaaa.mp3', 'Big Shaq'),
(61, 'Hit or Miss ?', 'Hit or Miss.mp3', ''),
(62, 'TIKO Mode', 'TIKO Mode.mp3', 'Hit or Miss'),
(63, 'Bitconneeeeeect', 'Bitconnect wow.mp3', ''),
(64, 'Childish Bitconnect', 'Childish Biconnect.mp3', ''),
(65, 'Bitconnect EDM Remix', 'BITCONNECT EDM REMIX (FULL SONG).mp3', ''),
(66, 'BLEND S INTRO', 'BLEND S INTRO.mp3', ''),
(67, 'FLOOR GANG OOH !', 'FLOOR GANG OOH!!!.mp3', 'PEWDS, PewDiePie'),
(68, 'OMG WOW OMG', 'OMG WOW OMG.mp3', 'PEWDS, PewDiePie'),
(69, 'PEWDS LWIAY HARDBASS', 'PEWDS LWIAY HARDBASS.mp3', 'PEWDS, PewDiePie'),
(70, 'WIDER WALK', 'WIDER WALK.mp3', ''),
(71, 'COOFfin Dance', 'COOFfin dance.mp3', 'Coffin');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `keywrds`
--
ALTER TABLE `keywrds`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `Nom` (`Nom`),
  ADD KEY `Appartenance` (`Appartenance`);

--
-- Index pour la table `soundfr`
--
ALTER TABLE `soundfr`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `Son` (`Son`),
  ADD KEY `Nom` (`Nom`) USING BTREE,
  ADD KEY `keywords` (`keywords`(1000));

--
-- Index pour la table `soundw`
--
ALTER TABLE `soundw`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `Nom` (`Nom`),
  ADD KEY `Son` (`Son`),
  ADD KEY `keywords` (`keywords`(1000));

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `keywrds`
--
ALTER TABLE `keywrds`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `soundfr`
--
ALTER TABLE `soundfr`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2315;

--
-- AUTO_INCREMENT pour la table `soundw`
--
ALTER TABLE `soundw`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
