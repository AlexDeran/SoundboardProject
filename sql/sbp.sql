-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : sam. 03 oct. 2020 à 20:44
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
-- Structure de la table `inconnus`
--

CREATE TABLE `inconnus` (
  `ID` int(10) UNSIGNED NOT NULL,
  `Nom` varchar(255) NOT NULL,
  `Son` varchar(255) NOT NULL,
  `keywords` text NOT NULL,
  `source` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `inconnus`
--

INSERT INTO `inconnus` (`ID`, `Nom`, `Son`, `keywords`, `source`) VALUES
(1, 'Auteuil Neuilly Passy', 'Les Inconnus - Auteuil Neuilly Passy.mp3', 'Auteuil Neuilly Passy', 'https://www.youtube.com/embed/L1N3WXZ_1LM'),
(2, 'A.N.P Refrain', 'Auteuil Neuilly Passy refrain.mp3', 'Auteuil Neuilly Passy', 'https://www.youtube.com/embed/L1N3WXZ_1LM?start=48'),
(3, 'Salut tu vas bien ?', 'Slt tu vas bien.mp3', 'Auteuil Neuilly Passy', 'https://www.youtube.com/embed/L1N3WXZ_1LM?start=54'),
(4, 'Stéphanie de Monaco', 'stéphanie de monaco.mp3', 'Télémagouilles', 'https://www.youtube.com/embed/BDaUNr3unU0?start=215'),
(5, 'Golo golo dans la case', 'golo golo dans la case.mp3', 'Télémagouilles', 'https://www.youtube.com/embed/BDaUNr3unU0?start=101'),
(6, 'Golo golo', 'golo golo.mp3', 'Télémagouilles', 'https://www.youtube.com/embed/BDaUNr3unU0?start=277'),
(7, 'Répéter la question ?', 'pouvez repeter la question.mp3', 'Télémagouilles', 'https://www.youtube.com/embed/BDaUNr3unU0?start=352'),
(8, 'Miou-Miou', 'Miou-Miou.mp3', 'Télémagouilles', 'https://www.youtube.com/embed/BDaUNr3unU0?start=572'),
(9, 'Gagner le golo', 'gagner le golo.mp3', 'Télémagouilles', 'https://www.youtube.com/embed/BDaUNr3unU0?start=352'),
(10, 'L\'urgence non urgente', 'lurgence.mp3', 'Hôpital', 'https://www.youtube.com/embed/RFLxu5_m3r8?start=42'),
(11, 'J\'ai beau être matinal', 'jai beau etre matinal.mp3', 'Youpi Matin', 'https://www.youtube.com/embed/YYnNnhA9AQY?start=227'),
(12, 'Bon et mauvais chasseur', 'le bon et le mauvais chasseur.mp3', 'Les chasseurs', 'https://www.youtube.com/embed/QuGcoOJKXT8?start=179'),
(13, 'Brocouille', 'Brocouille.mp3', 'Les chasseurs', 'https://www.youtube.com/embed/QuGcoOJKXT8?start=110');

-- --------------------------------------------------------

--
-- Structure de la table `jday`
--

CREATE TABLE `jday` (
  `ID` int(10) UNSIGNED NOT NULL,
  `Nom` varchar(255) NOT NULL,
  `Son` varchar(255) NOT NULL,
  `keywords` text NOT NULL,
  `source` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `jday`
--

INSERT INTO `jday` (`ID`, `Nom`, `Son`, `keywords`, `source`) VALUES
(1, 'Michel Baie', 'MICHEL BAIE.mp3', 'MisterJDay, Mr Connard', 'https://www.youtube.com/embed/iem9s5WwEz8'),
(2, 'UI', 'UI.mp3', 'MisterJDay, Mr Connard', 'https://www.youtube.com/embed/VR6G3DHIZiU?start=389'),
(3, 'Pub Michel Baie', 'Pub Michel Baie.mp3', 'MisterJDay, Mr Connard', 'https://www.youtube.com/embed/VR6G3DHIZiU?start=1426'),
(4, 'Le club Mickey en SVT', 'Lillumination du club mickey.mp3', 'MisterJDay, Mr Connard', 'https://www.youtube.com/embed/YJ5NrgDJ0dE?start=668'),
(5, 'Au parc Saint Paul', 'Au parc Saint Paul.mp3', 'MisterJDay, Mr Connard', 'https://www.youtube.com/embed/VR6G3DHIZiU?start=1868'),
(6, 'Emile Louis', 'Emile Louis.mp3', 'MisterJDay, Mr Connard', 'https://www.youtube.com/embed/YJ5NrgDJ0dE?start=757'),
(7, 'Homme &amp; petit Garçon', 'Homme & petit garçon.mp3', 'MisterJDay, Mr Connard', 'https://www.youtube.com/embed/VR6G3DHIZiU?start=406'),
(8, 'Ya tout dans ce magasin', 'Ya tout dans le magasin.mp3', 'MisterJDay, Mr Connard', 'https://www.youtube.com/embed/VR6G3DHIZiU?start=393'),
(9, 'Staline, l\'eau minerale', 'Staline ça coule de source.mp3', 'MisterJDay, Mr Connard', 'https://www.youtube.com/embed/1yxqZ_mMCoc?start=681'),
(10, 'Goulag Time', 'cest lheure du goulag.mp3', 'MisterJDay, Mr Connard', 'https://www.youtube.com/embed/1yxqZ_mMCoc?start=648'),
(11, 'La Christine', 'La christine.mp3', 'MisterJDay, Mr Connard', 'https://www.youtube.com/embed/1yxqZ_mMCoc?start=702'),
(12, 'Stéphane Bern Punchline', 'Bern Punchline.mp3', 'MisterJDay, Mr Connard', 'https://www.youtube.com/embed/O_ADehO3JdA?start=590'),
(13, 'Les penis de qualité', 'Jadore les penis de qualité.mp3', 'MisterJDay, Mr Connard', ''),
(14, 'Nope ! Chuck Testa', 'Nope Chuck Testa.mp3', 'MisterJDay, Mr Connard', 'https://www.youtube.com/embed/VR6G3DHIZiU?start=1020'),
(15, 'Compétences société ?', 'Compétences de votre société.mp3', 'MisterJDay, Mr Connard', '');

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
(33, 'Mister MV', 'Mister MV'),
(34, 'Kaaris', 'FR'),
(35, 'Maité, sucer le derrière', 'FR'),
(36, 'Tibo InShape', 'FR'),
(37, 'Denis Brogniart', 'FR'),
(38, 'Depardieu', 'FR'),
(39, 'JMLP, Jean Marie Le Pen', 'FR'),
(40, 'Le joe, le david, hoffman, calotte, de ces morts, ta femme, ferme ta gueule, ftg, lopez', 'FR'),
(41, 'Vieux Callaghan', 'FR'),
(42, 'Palmashow', 'FR'),
(44, 'Benoit Paire ', 'FR'),
(45, 'JDG, Joueur du Grenier', 'FR'),
(46, 'Sylvain Durif', 'FR'),
(47, 'David Lafarge Pokémon', 'FR'),
(48, 'Je sais où tu caches, salaud', 'FR'),
(49, 'OSS 117', 'FR'),
(50, 'Eddy Malou', 'FR'),
(51, 'Jean Luc Mélenchon', 'FR'),
(52, 'Miss Jirachi ', 'FR'),
(53, 'Bonne Nuit les Petits, Nounours', 'FR'),
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
(78, 'Coffin ', 'WORLD'),
(79, 'CUISINE, Le BOUFF Sexiste, La place', 'FR'),
(80, 'Renaud, Toujours la banane', 'FR'),
(81, 'Renaud, connard de virus', 'FR'),
(82, 'Valorant', 'FR'),
(83, 'Le Récap', 'FR'),
(84, 'Taxi', 'FR'),
(85, 'WHAT THE CUT - SPÉCIAL QUÉBEC', 'WTC'),
(86, 'WHAT THE CUT - SPÉCIAL RUSSIE', 'WTC'),
(87, 'WHAT THE CUT #21', 'WTC'),
(88, 'WHAT THE CUT #27', 'WTC'),
(89, 'WHAT THE CUT #32 ', 'WTC'),
(90, 'WHAT THE CUT #33', 'WTC'),
(91, 'WHAT THE CUT #34', 'WTC'),
(92, 'WHAT THE CUT #35', 'WTC'),
(93, 'WHAT THE CUT #36', 'WTC'),
(94, 'WHAT THE CUT #37', 'WTC'),
(95, 'WHAT THE CUT #29', 'WTC'),
(96, 'WHAT THE CUT #23', 'WTC'),
(97, 'WHAT THE CUT - SPÉCIAL INDE', 'WTC'),
(98, 'WHAT THE CUT - SPÉCIAL JAPON 2', 'WTC'),
(99, 'WHAT THE CUT #08', 'WTC'),
(100, 'WHAT THE CUT #15', 'WTC'),
(101, 'WHAT THE CUT #13', 'WTC'),
(102, 'WHAT THE CUT #11', 'WTC'),
(103, 'WHAT THE CUT #18', 'WTC'),
(104, 'WHAT THE CUT #19', 'WTC'),
(105, 'WHAT THE CUT #22', 'WTC'),
(106, 'WHAT THE CUT #24', 'WTC'),
(107, 'WHAT THE CUT #25', 'WTC'),
(108, 'WHAT THE CUT #28', 'WTC'),
(109, 'WHAT THE CUT #17', 'WTC'),
(110, 'WHAT THE CUT #02', 'WTC'),
(111, 'WHAT THE CUT #20', 'WTC'),
(112, 'WHAT THE CUT #04', 'WTC'),
(113, 'WHAT THE CUT #12', 'WTC'),
(114, 'WHAT THE CUT #06', 'WTC'),
(115, 'Jaune', 'FR'),
(116, '8 morts 6 blessés, je pète ma bière, ma lubullule, ma libellule', 'FR'),
(117, 'WHAT THE CUT #26', 'WTC'),
(118, 'WHAT THE CUT #10', 'WTC'),
(119, 'Ya pas de Pano', 'FR'),
(120, 'Nanar 70\'s', 'FR'),
(121, 'WHAT THE CUT - SPÉCIAL JAPON', 'WTC'),
(122, 'Khaled Freak', 'FR'),
(123, 'F1', 'FR'),
(124, 'MLP, Marine Le Pen', 'FR'),
(125, 'SLG, Salut les Geeks', 'FR'),
(126, 'Jiraya, La Jij', 'FR'),
(127, 'Freeze Corleone, Ekip, 667', 'FR'),
(128, 'Bitconnect', 'WORLD'),
(129, 'Risitas, ISSOU', 'WORLD'),
(130, 'Auteuil Neuilly Passy', 'INCONNUS'),
(131, 'Télémagouilles', 'INCONNUS'),
(132, 'Hôpital', 'INCONNUS'),
(133, 'Youpi Matin', 'INCONNUS'),
(134, 'Les chasseurs', 'INCONNUS'),
(135, 'Kamini', 'FR'),
(136, 'Samy Naceri', 'FR');

-- --------------------------------------------------------

--
-- Structure de la table `mv`
--

CREATE TABLE `mv` (
  `ID` int(10) UNSIGNED NOT NULL,
  `Nom` varchar(255) CHARACTER SET utf8 NOT NULL,
  `Son` varchar(255) CHARACTER SET utf8 NOT NULL,
  `keywords` text CHARACTER SET utf8 NOT NULL,
  `source` text CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `mv`
--

INSERT INTO `mv` (`ID`, `Nom`, `Son`, `keywords`, `source`) VALUES
(1, 'Connasse', 'connasse.mp3', 'Mister MV', 'https://www.youtube.com/embed/19g8gv1FnuA?start=596'),
(2, 'Incroyable du cul M. PDB', 'incroyable-du-cul-monsieur-pot-de-beurre.mp3', 'Mister MV', 'https://www.youtube.com/embed/PIVY12K2CwM'),
(3, 'La boule magique', 'La boule magique.mp3', 'Mister MV', 'https://www.youtube.com/embed/Kdv3GqmGfIE'),
(4, 'Mon sexe est en feu', 'Mon sexe est en feu.mp3', 'Mister MV', 'https://www.youtube.com/embed/19g8gv1FnuA?start=198'),
(5, 'OSKUR', 'oskur.mp3', 'Mister MV', ''),
(6, 'C\'est des saucisses', 'saucisses.mp3', 'Mister MV', ''),
(7, 'Random du Stuntfest', 'MV - Le random du stuntfest.mp3', 'Mister MV', ''),
(8, 'Incroyable du cul', 'incroyable du cul mistermv.mp3', 'Mister MV', 'https://www.youtube.com/embed/tHvok3kwD_g'),
(9, 'Le respect', 'MV - Le respect.mp3', 'Mister MV', 'https://www.youtube.com/embed/19g8gv1FnuA?start=268'),
(10, 'Reportage à Montpellier', 'MV - Reportage à Montpellier.mp3', 'Mister MV', 'https://www.youtube.com/embed/19g8gv1FnuA?start=285'),
(11, 'ASMR dodo', 'MV - ASMR Dodo.mp3', 'Mister MV', 'https://www.youtube.com/embed/19g8gv1FnuA?start=505'),
(12, 'Ma force ancestrale', 'MV - Ma force ancetrahahaooool.mp3', 'Mister MV', 'https://www.youtube.com/embed/19g8gv1FnuA?start=744'),
(13, 'C\'est mon rêve', 'MV - cest mon reve 1000 balles.mp3', 'Mister MV', 'https://www.youtube.com/embed/19g8gv1FnuA?start=766'),
(14, 'A quel moment', 'MV - A quel moment on en arrive la.mp3', 'Mister MV', 'https://www.youtube.com/embed/19g8gv1FnuA?start=812'),
(15, 'The Zboui Anthem', 'MV - The Zboui Anthem.mp3', 'Mister MV', 'https://www.youtube.com/embed/19g8gv1FnuA?start=234'),
(16, 'Les photos sur le FB', 'MV - tu a reçu les photos sur le fb.mp3', 'Mister MV', 'https://www.youtube.com/embed/aZyEXv9nRNE'),
(17, 'Douleur anale et photos', 'MV - Douleur anale et photos.mp3', 'Mister MV', 'https://www.youtube.com/embed/aZyEXv9nRNE?start=45'),
(18, 'Flemme stop stream', 'MV - Flemme de fermer le stream.mp3', 'Mister MV', 'https://www.youtube.com/embed/aZyEXv9nRNE?start=60'),
(19, 'Les Boomers', 'MV - Les Boomers.mp3', 'Mister MV', 'https://www.youtube.com/embed/aZyEXv9nRNE?start=67'),
(20, 'Jouissance', 'MV - JOuissance.mp3', 'Mister MV', 'https://www.youtube.com/embed/J76FgIA3Mb4?start=58'),
(21, 'Orgasme', 'MV - Orgasme.mp3', 'Mister MV', 'https://www.youtube.com/embed/J76FgIA3Mb4?start=287'),
(22, 'Et j\'adore le Zboub ', 'Jadore Le Zboub.mp3', 'Mister MV', 'https://www.youtube.com/embed/2MnmEnOi27U'),
(23, 'Le Zboub refrain', 'Jadore le zboub refrain.mp3', 'Mister MV', 'https://www.youtube.com/embed/2MnmEnOi27U'),
(24, 'J\'adore le Zboub ', 'Jadore le zboub court.mp3', 'Mister MV', 'https://www.youtube.com/embed/2MnmEnOi27U'),
(25, 'Le clavier qui colle', 'MV - clavier qui colle.mp3', 'Mister MV', 'https://www.youtube.com/embed/obDYHxCzx-g?start=10'),
(26, 'J\'adore les saucisses', 'Musique des Saucisses Herta! (Mister MV ZEvent).mp3', 'Mister MV', 'https://www.youtube.com/embed/rNxRhDukwSc'),
(27, 'Instru Coldplay', 'MV - Instru Coldplay.mp3', 'Mister MV', 'https://www.youtube.com/embed/19g8gv1FnuA?start=439'),
(28, 'Promo bâtons Coraya', 'MV - Promo sur les batons coraya.mp3', 'Mister MV', 'https://www.youtube.com/embed/19g8gv1FnuA'),
(29, 'Sucer des Zbis', 'MisterMV - sucerdesbites.mp3', 'Mister MV', 'https://www.youtube.com/embed/TUQhLkAL1RE?start=7'),
(30, 'Paper paper', 'PAPER PAPER ! - Premier anniversaire de Remix Live !.mp3', 'Mister MV', 'https://www.youtube.com/embed/mRtkqog_DPA'),
(31, 'CT - Mongolo (MV REMIX)', 'Chris Tetin - Mongolo (MV remix).mp3', 'Mister MV', 'https://www.youtube.com/embed/mIvILfmMD24');

-- --------------------------------------------------------

--
-- Structure de la table `soundfr`
--

CREATE TABLE `soundfr` (
  `ID` int(10) UNSIGNED NOT NULL,
  `Nom` varchar(255) CHARACTER SET utf8 NOT NULL,
  `Son` varchar(255) CHARACTER SET utf8 NOT NULL,
  `keywords` text CHARACTER SET utf8 NOT NULL,
  `source` text CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `soundfr`
--

INSERT INTO `soundfr` (`ID`, `Nom`, `Son`, `keywords`, `source`) VALUES
(1, 'Alors écoutes moi bien', 'Alors écoute moi bien ! (BigFlo).mp3', 'Big Flo', 'https://www.youtube.com/embed/kzpFKYDk2b4'),
(2, 'La chatte qu\'il a ', 'La chatte quil a LA CHATTE.mp3', 'Benoit Paire ', 'https://www.youtube.com/embed/amGDTOTREZ8'),
(3, 'Oui et alors ?', '21.05 oui et alors.mp3', '', 'https://www.youtube.com/embed/ot81fow_fy0?start=1266'),
(4, 'Bah oui connard', 'Alpha cast bah oui connard.mp3', 'Alphacast', 'https://www.youtube.com/embed/F0gCcvWshHs?start=30'),
(5, 'Lacoste TN', 'Lacoste TN ou quoi frère.mp3', '', 'https://www.youtube.com/embed/gF5S_7qA0e4?start=22'),
(6, 'CHEH', 'CHEH ! [Maskey].mp3', 'Maskey', 'https://www.youtube.com/embed/T7qOVa_3SGM'),
(7, 'Fanta - TG', 'ta gueule fanta.mp3', 'Fanta', 'https://www.youtube.com/embed/CQZtyO0Usxw'),
(8, 'Fanta - Pas toi qui décides', 'Fanta - Ouai mais cest pas toi qui décide.mp3', 'Fanta', 'https://www.youtube.com/embed/ooWd8vV2dCs'),
(9, 'Taisez vous !', 'Finkielkraut - taisez-vous.mp3', 'Finkelkraut', 'https://www.youtube.com/embed/9TKC27K8cIo'),
(10, 'J\'ai un background', 'Jai une histoire, jai un background - DJ SNAKE.mp3', 'DJ Snake', 'https://www.youtube.com/embed/NLnKeM6sGj0'),
(11, 'Sard - Mais c\'était sûr en fait', 'Sardoche - MAIS VOILA MAIS CÉTAIT SÛR EN FAIT.mp3', 'Sardoche', 'https://www.youtube.com/embed/zexeTY3347Y?start=6'),
(12, 'Mister V - Encore ?!', 'Encore, Ca fait beaucoup la non! Mister V.mp3', 'Mister V', 'https://www.youtube.com/embed/6elK8VI1rPs'),
(13, 'Enorme', 'Enorme - Jamy (cest pas sorcier).mp3', 'Jamy', 'https://www.youtube.com/embed/biJq3CSBQ4s'),
(14, 'Ecole vétérinaire MA', 'Je suis à lécole vétérinaire de Maison-Alfort, et je vais apprendre à masturber un chien .mp3', 'Maisons-Alfort', 'https://www.youtube.com/embed/vBqmxDKZRTg'),
(15, 'Mon spermatoz', 'MON SPERME NE TA PAS SUFFIT.mp3', 'Mon sperme ', 'https://www.youtube.com/embed/Yazl_Ja9RVA?start=2'),
(16, 'Oulala l\'enchainement', 'oulala lenchainement !.mp3', 'Bob Sinclair', 'https://www.youtube.com/embed/ahZvE8eaaAw?start=8'),
(17, 'BRICOLE Refrain', 'BRICOLE Refrain.mp3', 'Bricole', 'https://www.youtube.com/embed/UClipdS0WV8?start=28'),
(18, 'Bricole Pistolet', 'Pistolet à colle.mp3', 'Bricole', 'https://www.youtube.com/embed/UClipdS0WV8?start=43'),
(19, 'La rafale - checker', 'Checker moi ça.mp3', 'La rafale', 'https://www.youtube.com/embed/k_kKz9VcVfQ?start=15'),
(20, 'La rafale', 'la rafale.mp3', 'La rafale', 'https://www.youtube.com/embed/k_kKz9VcVfQ?start=15'),
(21, 'La rafale full', 'Checker moi ça la rafale.mp3', 'La rafale', 'https://www.youtube.com/embed/k_kKz9VcVfQ?start=15'),
(22, 'Maité - Boeuf Bourguignon', 'boeuf bourguignon.mp3', 'Maité, boeuf bourgignon', 'https://www.youtube.com/embed/eT5tsFA6pCg?start=3'),
(23, 'Maité - Carottes Fondantes', 'carottes fondantes.mp3', 'Maité, boeuf bourgignon', 'https://www.youtube.com/embed/eT5tsFA6pCg?start=9'),
(24, 'Péage - Ah ça mère', 'ah-sa-mere.mp3', 'Ah sa mére, taper le péage, comme un balle', 'https://www.youtube.com/embed/QoD10UOA5bE?start=25'),
(25, 'Péage - Taper le péage', 'ah sa mere taper péage.mp3', 'Ah sa mére, taper le péage, comme un balle', 'https://www.youtube.com/embed/QoD10UOA5bE?start=29'),
(26, 'Péage - comme une balle', 'comme une balle.mp3', 'Ah sa mére, taper le péage, comme un balle', 'https://www.youtube.com/embed/QoD10UOA5bE?start=8'),
(27, 'Péage - Go fast ', 'gofast ton camion comme une balle.mp3', 'Ah sa mére, taper le péage, comme un balle', 'https://www.youtube.com/embed/QoD10UOA5bE?start=8'),
(28, 'QI de 143', 'QI DE 143 kirby 54.mp3', 'Kirby 54', 'https://www.youtube.com/embed/vr82yr47RzM?start=2'),
(29, 'Macron - En guerre', 'Nous sommes en guerre.mp3', 'Macron, le M', 'https://www.youtube.com/embed/5wYyJckGrdc?start=17'),
(30, 'Macron - L\'État paiera', 'Létat paiera.mp3', 'Macron, le M', 'https://www.youtube.com/embed/60iwEgn4qbU'),
(31, 'Macron - Avec du savon', 'Avec du savon !.mp3', 'Macron, le M', 'https://www.youtube.com/embed/60iwEgn4qbU?start=2'),
(32, 'Coup dur pour Guillaume', 'Coup dur pour Guillaume !.mp3', '', 'https://www.youtube.com/embed/FP6F4lCRl7M'),
(33, 'Au revoir Yves', 'COMPILATION YVES.mp3', '', 'https://www.youtube.com/embed/X0p1e8OVOC0?start=3'),
(34, 'Sarko - quelle indignité', 'Sarkozy Quelle indignité.mp3', 'Nicolas Sarkozy', 'https://www.youtube.com/embed/DPdfuKXWr_4'),
(35, 'Sarko - Service public ', 'Quelle indignité service public.mp3', 'Nicolas Sarkozy', 'https://www.youtube.com/embed/4RHDbrf36oY?start=14'),
(36, 'Sarko - Mais vous fumez M.', 'Eh mais vous fumez monsieur.mp3', 'Nicolas Sarkozy', 'https://www.youtube.com/embed/WcUsLcf6NIc'),
(37, 'Gens qui parlent en Fr', 'OH MON DIEU LES GENS QUI PARLENT EN FRANÇAIS ILS ONT TELLEMENT DE CHARISME ! - Pokimane.mp3', 'Pokimane', 'https://www.youtube.com/embed/5Jc2I41Vk7E'),
(38, 'Un troupeau de banane', 'UN TROUPEAU DE BANANE.mp3', 'Rahan', 'https://www.youtube.com/embed/b0xWWZSAkeM'),
(39, 'Rire de droite', 'Antoine Daniel - Rire de droite.mp3', 'Antoine Daniel', 'https://www.youtube.com/embed/r6D0zj32yWc'),
(40, 'Dis les termes', 'DIS LES TERMES.mp3', '', 'https://www.youtube.com/embed/ns26SgKjAFc?start=11'),
(41, 'La carte Kiwi', 'Carte Kiwi Short.mp3', 'Mais si c\'est possible, l\'enfant de - de 16 ans', 'https://www.youtube.com/embed/xsw3ldAjHlQ?start=16'),
(42, 'Nanar 70\'s - En ce moment', 'en-ce-moment-je-parierais.mp3', 'Nanar 70\'s', ''),
(43, 'Je suis une sauvage', 'JE SUIS UNE SAUVAGE !.mp3', 'Chic, bourgeoise, ratchet', 'https://www.youtube.com/embed/AYdhIcADFYs'),
(44, 'Tuer le concours', '18082013 Teddy Tamgho, 6ème saut à 18,04m.mp3', 'Il vient de tuer le concours', ''),
(45, 'TK78 - Vas y ouvre ta gueule', '[ thekairi78 Sound ] - Ouvre Ta Gueule.mp3', 'TK, The Kairi 78', 'https://www.youtube.com/embed/jXk6RfBE-EI'),
(46, 'AROUF GANGSTA', 'AROUG GANSTA.mp3', 'Arouf est celebre', 'https://www.youtube.com/embed/y1If9gVjLcs?start=122'),
(47, 'JPK - CACA DANS LES RAVIOLIS', 'caca dans les raviolis.mp3', 'Jean Pierre Koffe, en 2001 ', 'https://www.youtube.com/embed/fI0QeFuBXcg?start=109'),
(48, 'Réné - c\'est honteux !', 'Cest honteux René.mp3', 'René Malleville', 'https://www.youtube.com/embed/NVu9s-6lCl8?start=189'),
(49, 'René - Colère noire', 'Je suis dans une colère noire.mp3', 'René Malleville', 'https://www.youtube.com/embed/NVu9s-6lCl8?start=238'),
(50, 'René - Moral => chaussettes', 'Le moral dans les chaussettes .mp3', 'René Malleville', 'https://www.youtube.com/embed/NVu9s-6lCl8?start=162'),
(51, 'René - On s\'en bat les couilles', 'On sen bat les couilles René Malleville.mp3', 'René Malleville', 'https://www.youtube.com/embed/3FlE7nWZBEo'),
(52, 'C\'est mwa', 'cest mwa.mp3', 'C\'est moi', 'https://www.youtube.com/embed/3N-2UlT7UF4?start=101'),
(53, 'Grigny BJ Ms Dames', 'Bien joue messieurs dames.mp3', 'Grigny la Grande Borne', 'https://www.youtube.com/embed/Ho8xZ5VN9oM?start=27'),
(55, 'K2A - Contrôle de CW', 'Contrôle de chicken wings.mp3', 'Kaaris', 'https://www.youtube.com/embed/yB4zZjXAWx0?start=145'),
(56, 'Maité - l\'ortolan', 'Culte Maïté explique comment manger un ortolan Archive INA.mp3', 'Maité, sucer le derrière', 'https://www.youtube.com/embed/SEPMuyGe7dg?start=86'),
(57, 'Damn les gens', 'DAMN LES GENS.mp3', 'Tibo InShape', 'https://www.youtube.com/embed/QVEg6o3hV1o?start=13'),
(58, 'Alors peut être !', 'alors peut etre.mp3', '', 'https://www.youtube.com/embed/G-VYwC28KXI?start=43'),
(59, 'AH !', 'Denis Brogniart AH.mp3', 'Denis Brogniart', 'https://www.youtube.com/embed/XE6YaLtctcI'),
(60, 'Grigny la grande borne', 'Grigny la grande borne.mp3', 'Grigny la Grande Borne', 'https://www.youtube.com/embed/Ho8xZ5VN9oM?start=2'),
(63, 'Je vais t\'enculer', 'Jvais tenculer et tu jouiras....mp3', 'Depardieu', 'https://www.youtube.com/embed/tjqJK-8PpkI'),
(64, 'L\'amour sans prélis', 'lamour sans preliminaire.mp3', '', 'https://www.youtube.com/embed/EvVAxJ7sJAE?start=16'),
(65, 'Jeanne au secours !', 'Jean Marie Le Pen - Jeanne au secours !!.mp3', 'JMLP, Jean Marie Le Pen', 'https://www.youtube.com/embed/v1mxMtr8Mws'),
(66, 'K2A - Oh pute ! ', 'Kaaris Oh Pute !.mp3', 'Kaaris', 'https://www.youtube.com/embed/TwOQtV5vy10?start=3'),
(67, 'Lopez - Le joe le david', 'le djo le david.mp3', 'Le joe, le david, hoffman, calotte, de ces morts, ta femme, ferme ta gueule, ftg, lopez', 'https://www.youtube.com/embed/kLwy1uYfpRo?start=3'),
(68, 'Le raaaaaaaaaaanch', 'Le raaaaaaaaaanch.mp3', 'Vieux Callaghan', 'https://www.youtube.com/embed/ZEfvyTMA1nQ?start=52'),
(69, 'Mister V - Le Bâtiment 4 ', 'mais jamais vous allez trouver misterv.mp3', 'Mister V', 'https://www.youtube.com/embed/MxsDaDuEDBg?start=26'),
(70, 'Mister V - Claqué au sol', 'Mister V - Claqué au sol.mp3', 'Mister V', 'https://www.youtube.com/embed/sLl4YXqHMRQ'),
(72, 'Tkt ça va bien se passer', 'Ne tinquiète pas ça va bien se passer.mp3', '', 'https://www.youtube.com/embed/q6VxDM8Wd-o'),
(73, 'Michel c\'est le Brésil', 'Michel cest le Brésil !! 1.mp3', 'Palmashow', 'https://www.youtube.com/embed/sxO0j5V9jtY?start=3'),
(74, 'Michel c\'est le Velux', 'Michel cest le Brésil !! 2.mp3', 'Palmashow', 'https://www.youtube.com/embed/sxO0j5V9jtY?start=9'),
(76, 'Vraiment très intéressant', 'Cétait vraiment très intéressant..mp3', '', 'https://www.youtube.com/embed/lItyCpRny-E'),
(77, 'JDG - David Goodenough', 'Compilation David Goodenough + Mickael Goodenough.mp3', 'JDG, Joueur du Grenier', 'https://www.youtube.com/embed/ho4W5LnFl6s?start=43'),
(78, 'SD Hallucination Collective', 'hallucination collective -Sylvain Durif.mp3', 'Sylvain Durif', 'https://www.youtube.com/embed/jUz5RgfXMP0'),
(79, 'DLP - HEY SALUT A TOUS LES AMIS', 'HEY, SALUT A TOUS LES AMIS, CEST DAVID LAFARGE POKEMON.mp3', 'David Lafarge Pokémon', 'https://www.youtube.com/embed/xBP39fBS60s'),
(80, 'Philippe ! Salaud !', 'hitman-le-cobra-philippe-je-sais-ou-tu-te-caches.mp3', 'Je sais où tu caches, salaud', 'https://www.youtube.com/embed/qznbecUX3Fc?start=1'),
(81, 'Pas venue pour souffrir ', 'Je suis pas venu ici pour souffrir OK !.mp3', '', 'https://www.youtube.com/embed/6Yl-A0ckXNU'),
(82, 'JPK  -  D\'la merde !', 'Jean-Pierre Coffe - Mais cest dla MERDE - Version courte.mp3', 'Jean Pierre Koffe', 'https://www.youtube.com/embed/CoB36zxT940'),
(83, 'Les inconscients', 'Les inconscients ne savent pas quils sont inconscients car il ne connaissent pas la.mp3', '', 'https://www.youtube.com/embed/SFDsL_FxHIQ'),
(84, 'Lopez - Ta femme', 'ta femme je lai prise.mp3', 'Le joe, le david, hoffman, calotte, de ces morts, ta femme, ferme ta gueule, ftg, lopez', 'https://www.youtube.com/embed/xKHTAnhqeKI?start=23'),
(85, 'Lopez - Ferme ta gueule ', 'ferme ta gueule lopez.mp3', 'Le joe, le david, hoffman, calotte, de ces morts, ta femme, ferme ta gueule, ftg, lopez', 'https://www.youtube.com/embed/xKHTAnhqeKI?start=47'),
(86, 'Lopez - NRV Full', 'Lopez gitan énervé.mp3', 'Le joe, le david, hoffman, calotte, de ces morts, ta femme, ferme ta gueule, ftg, lopez', 'https://www.youtube.com/embed/kLwy1uYfpRo'),
(87, 'OSS - Il va la fermer ', 'Mais il va la fermer sa gueule.mp3', 'OSS 117', 'https://www.youtube.com/embed/ABUtjkqt8bI?start=1'),
(88, 'Mais oui c\'est clair', 'Mais oui cest clair ! By Eddy-Malou !.mp3', 'Eddy Malou', 'https://www.youtube.com/embed/ma7TL8jJT0A'),
(89, 'Ma personne est sacrée', 'Me touché pas vous avez pas le droit , ma personne est sacré.mp3', 'Jean Luc Mélenchon', 'https://www.youtube.com/embed/HviaKNRsisU'),
(90, 'Coucou', 'MissJirachi Coucou.mp3', 'Miss Jirachi', 'https://www.youtube.com/embed/AsVdSicpGpY?start=7'),
(92, 'Oh l\'assassin !', 'Oh lassassin !.mp3', '', 'https://www.youtube.com/embed/9W9ZiIxK1Y8'),
(93, 'SD Oh mais qu\'es ce que ', 'OH MAIS QUEST QUE CEST QUE SE TRUC LA.mp3', 'Sylvain Durif', 'https://www.youtube.com/embed/OEo_UMSLvgA'),
(94, 'Oh patron court', 'oh patron court.mp3', 'Bonne Nuit les Petits, Nounours', ''),
(95, 'Oh patron long', 'oh patron long.mp3', 'Bonne Nuit les Petits, Nounours', ''),
(96, 'Ah c\'est marrant ', 'Orelsan - Ah cest marrant.mp3', 'Orelsan', 'https://www.youtube.com/embed/Ngw-8_No6b0'),
(98, 'OSS - Oh si c\'est rigolo ', 'OSS 117 - Oh si, cest rigolo !.mp3', 'OSS 117', 'https://www.youtube.com/embed/OYz_BD3I9w0?start=1'),
(99, 'OSS - Une dictature ', 'OSS 117-Rio ne répond plus-Une dictature.mp3', 'OSS 117', 'https://www.youtube.com/embed/NOnESat0mwM'),
(100, 'OUI', 'oui_2.mp3', 'Zerator', 'https://www.youtube.com/embed/4on2DZUb0M0?start=7'),
(101, 'Macron - C\'est notre projet', 'PARCE QUE CEST NOTRE PROJET.mp3', 'Macron, le M', 'https://www.youtube.com/embed/d7RWIcOcHgg'),
(102, 'Pas ça Zinedine', 'Pas ca Zinedine....mp3', '', 'https://www.youtube.com/embed/7wZbcCxBP3c?start=10'),
(103, 'K2A - J\'ai le permis camion', 'Permis Camion.mp3', 'Kaaris', 'https://www.youtube.com/embed/eRsRIgepQtM?start=19'),
(106, 'Nitro XL - Ma queue est huge', 'putain-ma-queue-est-enorme.mp3', 'Nitro XL, xanogene', ''),
(107, 'RHINOSHIEEEELD', 'RHINOSHIELD.mp3', '', 'https://www.youtube.com/embed/n00_wpU8nA0?start=38'),
(108, 'Sard - Mal a la queue', 'sard-mal-a-la-queue.mp3', 'Sardoche', ''),
(109, 'Sard - la team Pavard', 'sardoche-jeduque-un-enfant_zholfoqh.mp3', 'Sardoche', 'https://www.youtube.com/embed/2nl1kF4XdJU?start=30'),
(110, 'Sard - la team Mbappé', 'sardoche-kylian-mbappe-music.mp3', 'Sardoche', 'https://www.youtube.com/embed/6K2l0i3PXTg?start=18'),
(112, 'Second poteau Pavard !', 'second-poteau-pavard-tf1-france-argentine-world-cup-2018.mp3', '', 'https://www.youtube.com/embed/hK7BjNE2TTA?start=22'),
(113, 'Il en suffira d\'une', 'Il en suffira dune.mp3', '', 'https://www.youtube.com/embed/46sOX45vzlw?start=4'),
(114, 'J\'en ai rien a foutre ', 'siphano-jen-ai-rien-a-foutre-1.mp3', 'Siphano', 'https://www.youtube.com/embed/oLSd2VVkvU8'),
(115, 'C\'est toi le master ?', 'SUPERZOULOUX CEST TOI LE MASTER.mp3', 'Zouloux', 'https://www.youtube.com/embed/CaNKroHAxao?start=2'),
(116, 'Tequila Heineken', 'TEQUILA HEINEKEN PAS LTEMPS DNIAISER.mp3', 'Pas le temps de Niaiser', 'https://www.youtube.com/embed/WKuaf3nepF0?start=1'),
(117, 'T\'es vraiment un con Nils', 'Tes vraiment un sale petit con.mp3', '', 'https://www.youtube.com/embed/esqxKBFA7dg?start=6'),
(118, 'Tiens tiens tiens', 'Tiens tiens tiens.mp3', 'Booba', 'https://www.youtube.com/embed/t_OnQk3hjBM'),
(119, 'Tu es grosse Mélissandre', 'TU ES GROSSE MELISSANDRE !!!.mp3', '', 'https://www.youtube.com/embed/_Q7HGFF8_e8?start=27'),
(120, 'Tu crois ke c du respect', 'Tu crois qucest du respect ça.mp3', '', 'https://www.youtube.com/embed/sTY0k4UkFkE'),
(122, 'PANO - Ya pas de panneaux', 'YA PAS DE PANNEAUX VIDEO ENTIERE.mp3', 'Ya pas de Pano', 'https://www.youtube.com/embed/LjWjBjyr_Y8?start=49'),
(123, 'JE - Question vite répondue ', 'question vite repondue.mp3', 'Jeune entrepreneur, question vite repondue', ''),
(124, 'JE - Bus', 'jeune entrepreneur verre.mp3', 'Jeune entrepreneur, question vite repondue', ''),
(125, 'JE - études', 'jeune entrepreneur études.mp3', 'Jeune entrepreneur, question vite repondue', ''),
(126, 'JE - Réseaux Sociaux', 'jeune entrepreneur rs.mp3', 'Jeune entrepreneur, question vite repondue', ''),
(127, 'Wejdene - Caleçons sales ', 'Tu prends tes calcons sales.mp3', 'Wejdene, caleçons sales, hors de ma vue', 'https://www.youtube.com/embed/M2l-X9M6zAo?start=62'),
(128, 'Wejdene - Tu hors de ma vue', 'et tu hors de ma vue.mp3', 'Wejdene, caleçons sales, hors de ma vue', 'https://www.youtube.com/embed/M2l-X9M6zAo?start=64'),
(129, 'Wejdene - Des valeurs ?!', 'mais ta pas de valeur.mp3', 'Wejdene, caleçons sales, hors de ma vue', 'https://www.youtube.com/embed/M2l-X9M6zAo?start=94'),
(130, 'COMBIEN ?!', 'COMBIEN !.mp3', '', 'https://www.youtube.com/embed/WfjHbpXt-oQ?start=6'),
(131, 'D7D8 short', 'D7D8.mp3', 'Pamela, d7 d8', 'https://www.youtube.com/embed/WSsafS77zMs?start=4'),
(132, 'D7D8 Mais je suis Pamela', 'd7d8 pamela.mp3', 'Pamela, d7 d8', 'https://www.youtube.com/embed/WSsafS77zMs?start=42'),
(133, 'D7D8 Full', 'D7D8 full.mp3', 'Pamela, d7 d8', 'https://www.youtube.com/embed/WSsafS77zMs?start=42'),
(134, 'AD - Raid Saxo Legends', '1. Raid Saxo Legends.mp3', 'Antoine Daniel', 'https://www.youtube.com/embed/D_l6iw1I16U'),
(135, 'AD - Lofi de merde', '2. Lofi de Merde.mp3', 'Antoine Daniel', 'https://www.youtube.com/embed/cBItJUwqlQk'),
(136, 'AD - Minecraft', '3. Minecraft.mp3', 'Antoine Daniel', 'https://www.youtube.com/embed/Uz2X9vtGkgI?start=293'),
(137, 'AD - CEO de mon coeur', '4. CEO de mon Coeur.mp3', 'Antoine Daniel', 'https://www.youtube.com/embed/pSVwlm7gvRI'),
(138, 'AD - Twitch ASMR', '5. TWITCH ASMR.mp3', 'Antoine Daniel', 'https://www.youtube.com/embed/Uz2X9vtGkgI?start=479'),
(139, 'Qui fume ici ? Full', 'méthode commando pour arrêter de fumer qui fume ici (Marius commandos marine).mp3', 'Marius', 'https://www.youtube.com/embed/1PaOW1hO8fA'),
(140, 'Qui fume ici ?', 'qui fume ici.mp3', 'Marius', 'https://www.youtube.com/embed/1PaOW1hO8fA?start=10'),
(141, 'Bosh - Bien ou quoi ?', 'bien ou quoi.mp3', 'Bosh, Djomb, piece', 'https://www.youtube.com/embed/zquFZaHw2TQ?start=8'),
(142, 'Bosh - Pièce ', 'piece.mp3', 'Bosh, Djomb, piece', 'https://www.youtube.com/embed/zquFZaHw2TQ?start=11'),
(143, 'Serguei Bubka est debout ', 'Serguei Bubka est debout.mp3', '', 'https://www.youtube.com/embed/-V06We5lDMk?start=21'),
(144, 'Record du monde', 'Record du monde.mp3', '', 'https://www.youtube.com/embed/-V06We5lDMk?start=9'),
(145, 'Voila le gâteau', 'Voila le gateau.mp3', 'Sortez les couteaux, la pièce montée on va la démonter', 'https://www.youtube.com/embed/mYaEh_k37ZA?start=11'),
(146, 'Nitro XL - Regardez moi ça', 'regarder moi ça.mp3', 'Nitro XL, xanogene', ''),
(147, 'Nitro XL - Regardez un peu', 'regardez un peu.mp3', 'Nitro XL, xanogene', ''),
(148, 'Nitro XL - Et vlan !', 'et vlan.mp3', 'Nitro XL, xanogene', ''),
(149, 'AROUF et l\'anglais', '[AROUF GANGSTA] Casse les couilles à parler anglais !.mp3', 'Arouf Gangsta', 'https://www.youtube.com/embed/WOkpLp2A0yk'),
(150, 'Je veux faire l\'amour lg', '[MEME] JE VEUX FAIRE LAMOUR !.mp3', '', 'https://www.youtube.com/embed/ENMx8r9kDAk?start=4'),
(151, 'Je veux faire l\'amour crt', '[MEME] JE VEUX FAIRE LAMOUR short.mp3', '', 'https://www.youtube.com/embed/ENMx8r9kDAk?start=21'),
(152, 'TK78 - Pensais pas ça de toi', '[MEME] Mais je pensais pas ça de toi ! TK.mp3', 'TK,The Kairi 78', 'https://www.youtube.com/embed/x2jYxrfdh5k'),
(153, 'Salut mon pote !', '[MEME] Salut mon pote.mp3', '', 'https://www.youtube.com/embed/6Z9m2-VH2m8?start=8'),
(154, 'je suis Abasourdi', 'A-BA-SOUR-DI.mp3', '', ''),
(155, 'Accordéon court', 'Accordeon court.mp3', '', ''),
(156, 'Accordéon long', 'Accordeon long.mp3', '', ''),
(157, 'DJ Belge - AIE AIE AIE ', 'AIE AIE AIE.mp3', 'DJ Belge', 'https://www.youtube.com/embed/yxZGVBp2Sxw?start=18'),
(158, 'DJ Belge - Allez méga fiesta !', 'Allez mega fiesta.mp3', 'DJ Belge', 'https://www.youtube.com/embed/yxZGVBp2Sxw?start=10'),
(159, 'ATTENTION CONSEIL IMPORTANT', 'ATTENTION CONSEIL IMPORTANT.mp3', '', 'https://www.youtube.com/embed/cuzA8qnI7LQ'),
(160, 'Canard coin coin short', 'Canard coin coin court.mp3', '', 'https://www.youtube.com/embed/FSoQNtU-MFA?start=41'),
(161, 'Canard coin coin long', 'Canard coin coin long.mp3', '', 'https://www.youtube.com/embed/FSoQNtU-MFA?start=41'),
(162, 'Qui est à l\'envers ?', 'Cest moi qui suis à lenvers.mp3', '', 'https://www.youtube.com/embed/SVrLA-zYc7o'),
(163, 'Moundir - Chavirer 1 chameau', 'chavirer un chameau.mp3', 'Moundir', 'https://www.youtube.com/embed/ZMwjWBSAVPw?start=111'),
(164, 'Moundir - Sagesse de Yoda', 'comme le disait yoda.mp3', 'Moundir', 'https://www.youtube.com/embed/ZMwjWBSAVPw?start=151'),
(165, 'Moundir - Matelas bouche ', 'elle parle ces des matelas qui sortent de sa bouche.mp3', 'Moundir', 'https://www.youtube.com/embed/ZMwjWBSAVPw?start=211'),
(166, 'Moundir - Ému ms pas des yeux', 'emu mais pas des yeux.mp3', 'Moundir', 'https://www.youtube.com/embed/ZMwjWBSAVPw?start=308'),
(167, 'Fanfare Beaufland', 'Fanfare boffe.mp3', '', ''),
(168, 'TK78 - FDP ma lumière', 'FDP ma lumiere.mp3', 'TK, The Kairi, 78', 'https://www.youtube.com/embed/x2jYxrfdh5k?start=3'),
(169, 'Frappe moi = EMPOISONNÉ', 'Frappe moi je tempoisonne.mp3', '', 'https://www.youtube.com/embed/_Ljs7l8TAko'),
(170, 'HAN OUAIS', 'Han ouais.mp3', '', 'https://www.youtube.com/embed/DN-bVt76K8s?start=10'),
(171, 'DJ Belge - IBIZA ', 'IBIZA.mp3', 'DJ Belge', 'https://www.youtube.com/embed/yxZGVBp2Sxw?start=51'),
(172, 'J\'adore l\'eau JCVD', 'JCVD Jadore leau, dans 2030 ans y en aura plus.mp3', 'JCVD', 'https://www.youtube.com/embed/Ggq0c4e2hjA?start=45'),
(173, 'JE LEUR PISSE AU CUL', 'JE LEURS PISSE AU CUL !.mp3', 'Eric Cantona', 'https://www.youtube.com/embed/kEi6h6Wb8wg'),
(174, 'JE PORTE PLAINTE CYRIX', 'Je porte plainte pour diffamation, harcèlement et incitation à la haine.mp3', 'Thomas Cyrix', 'https://www.youtube.com/embed/MgLN4KmsB9Y'),
(175, 'K2A - J\'VAIS BOIRE TON SANG', 'Jvais tenculr je vais te briser tes os jvais boire ton sang.mp3', 'Kaaris', 'https://www.youtube.com/embed/oLMzZ97s0BU'),
(176, 'Macron - La Poudre', 'la poudre de perlimpinpin.mp3', 'Macron ,le M', 'https://www.youtube.com/embed/a_AkC7MEw_U?start=143'),
(177, 'Moundir - Système gargamel', 'le systeme gargamel.mp3', 'Moundir', 'https://www.youtube.com/embed/ZMwjWBSAVPw?start=317'),
(178, 'Motus FDP', 'Maskey - Motus FDP.mp3', 'Maskey', 'https://www.youtube.com/embed/hqkzG3dXmGc'),
(179, 'Moundir Aventurier lait', 'Moundir Aventurier du lait.mp3', 'Moundir', 'https://www.youtube.com/embed/ZMwjWBSAVPw?start=8'),
(180, 'Moundir - Fragile du moteur', 'Moundir est fragile du moteur.mp3', 'Moundir', 'https://www.youtube.com/embed/ZMwjWBSAVPw?start=50'),
(181, 'Moundir - le 14 juillet', 'Moundir et le 14 juillet.mp3', 'Moundir', 'https://www.youtube.com/embed/ZMwjWBSAVPw?start=19'),
(182, 'Moundir - Punchline OMG', 'moundir punchlines.mp3', 'Moundir', 'https://www.youtube.com/embed/ZMwjWBSAVPw?start=268'),
(183, 'Moundir - Transpire du genou', 'moundir transpire du genou.mp3', 'Moundir', 'https://www.youtube.com/embed/ZMwjWBSAVPw?start=296'),
(184, 'Pas assez divertis ?!', 'NE VOUS ETES VOUS PAS ASSEZ DIVERTIS - GLADIATOR.mp3', '', 'https://www.youtube.com/embed/fMW__0nVlGE?start=3'),
(185, 'DJ Belge - Oh yeah yeah yes ', 'oh yeah yeah yes.mp3', 'DJ Belge', 'https://www.youtube.com/embed/yxZGVBp2Sxw?start=48'),
(186, 'DJ Belge - Zé Parti !', 'ZÉ PARTI.mp3', 'DJ Belge', 'https://www.youtube.com/embed/yxZGVBp2Sxw?start=43'),
(187, 'OKAYYYYY let\'s go ! long', 'OKAYYY LETS GO - FORAIN long.mp3', '', 'https://www.youtube.com/embed/AWM5ZNdWlqw'),
(188, 'OKAYYYYY let\'s go ! court', 'OKAYYY LETS GO - FORAIN short.mp3', '', 'https://www.youtube.com/embed/AWM5ZNdWlqw'),
(189, 'Moundir -  Corrompu ?! crt', 'pk etre aussi corrompu short.mp3', 'Moundir', 'https://www.youtube.com/embed/ZMwjWBSAVPw?start=125'),
(190, 'Moundir - Corrompu ?! long', 'pk etre aussi corrompu long.mp3', 'Moundir', 'https://www.youtube.com/embed/ZMwjWBSAVPw?start=122'),
(191, 'SQUALALA => partis', 'SQUALALA NOUS SOMME PARTIS ! Zelda.mp3', 'Zelda', 'https://www.youtube.com/embed/8r2HRgYrmgQ'),
(192, 'Tu n\'est pas qualifiée !', 'Tu nest pas qualifié !.mp3', '', 'https://www.youtube.com/embed/vnjy-35Lxjg?start=5'),
(193, 'DJ Belge - Vous êtes fatigués', 'vous etes fatigues.mp3', 'DJ Belge', 'https://www.youtube.com/embed/yxZGVBp2Sxw?start=34'),
(194, 'AD - Envie de Clubber', '6. Envie de Clubber.mp3', 'Antoine Daniel', 'https://www.youtube.com/embed/Uz2X9vtGkgI?start=589'),
(195, 'AD - Big Art', '7. Big Art.mp3', 'Antoine Daniel', 'https://www.youtube.com/embed/Uz2X9vtGkgI?start=700'),
(196, 'AD - Grosse Annonce', '8. Grosse Annonce.mp3', 'Antoine Daniel', 'https://www.youtube.com/embed/Uz2X9vtGkgI'),
(197, 'K2A - GOULAG', 'GOULAG K2A.mp3', 'Kaaris', 'https://www.youtube.com/embed/Iz2LmzLjS9E?start=14'),
(198, 'Bosh - Appels de phares', 'Les appels de phares.mp3', 'Bosh, Djomb, piece', 'https://www.youtube.com/embed/zquFZaHw2TQ?start=12'),
(199, 'Bosh - Bas du dos bombé', 'bas du dos bien bombé.mp3', 'Bosh, Djomb, piece', 'https://www.youtube.com/embed/zquFZaHw2TQ?start=26'),
(200, 'Bosh - Sac à dos non vidé', 'jai pas vidé le sac a dos.mp3', 'Bosh, Djomb, piece', 'https://www.youtube.com/embed/zquFZaHw2TQ?start=111'),
(201, 'Bosh - Finir dans sa lune', 'je vais finir sur sa lune.mp3', 'Bosh, Djomb, piece', 'https://www.youtube.com/embed/zquFZaHw2TQ?start=71'),
(202, 'Objection !', 'phoenix-objection.mp3', '', ''),
(203, 'GBS - KOUHIZINNE', 'COUHIZINNE.mp3', 'CUISINE, Le BOUFF Sexiste, La place', 'https://www.youtube.com/embed/adCyaYx4h_M?start=40'),
(204, 'GBS - Gros BOUFF Sexiste', 'Gros BOUFF Sexiste.mp3', 'CUISINE, Le BOUFF Sexiste, La place', 'https://www.youtube.com/embed/adCyaYx4h_M'),
(205, 'AD - Le Buzz avec un double Z', 'ANTOINE DANIEL A FAIT LE BUZZ AVEC UN DOUBLE Z !!!!!.mp3', 'Antoine Daniel', 'https://www.youtube.com/embed/-D0t0LdLz9A'),
(206, 'Renaud - Toujours Vivant', 'Toujours vivant.mp3', 'Renaud, Toujours la banane', 'https://www.youtube.com/embed/uv37yxc51bE?start=35'),
(207, 'Renaud - Corona Song', 'Corona Song.mp3', 'Renaud, connard de virus', 'https://www.youtube.com/embed/RK3J2sDEQ1M?start=14'),
(208, 'Renaud - Connard de Virus', 'Connard de Virus.mp3', 'Renaud, connard de virus', 'https://www.youtube.com/embed/RK3J2sDEQ1M?start=17'),
(209, 'DLP - Wallah', 'David Lafarge Wallah.mp3', 'David Lafarge Pokémon', 'https://www.youtube.com/embed/j9vYCAsMy7Y?start=3'),
(210, 'Quadricolor', 'Quadricolor.mp3', '', 'https://www.youtube.com/embed/7TcfhntQdYg'),
(211, 'Que des N°10 dans ma team', 'Que des N°10 dans ma team.mp3', 'Booba', 'https://www.youtube.com/embed/IZmCwtYk98A?start=15'),
(212, 'Le dessert', 'YTP]FR Le dessert.mp3', '', 'https://www.youtube.com/embed/C5vL4qVff6Y'),
(213, 'Dommage', 'Dommage Edouard Phillippe.mp3', '', 'https://www.youtube.com/embed/3PZ35tHyzSk'),
(214, 'Ça ça va la ', 'ça ça va la.mp3', 'Valorant', 'https://www.youtube.com/embed/jUE-pYTG6wk'),
(215, 'Oh purée de pomme de terre', 'OH PURÉE DE POMME DE TERRE MAIS CEST PAS VRAI ÇA.mp3', '', 'https://www.youtube.com/embed/cbb4ltI3Xuw?start=1'),
(216, 'JDG - Achète ma merde', 'JDG - Joueur du Grenier - Achète ma merde.mp3', 'JDG, Joueur du Grenier', 'https://www.youtube.com/embed/GIWIjw-yotQ'),
(217, 'CHAOS - Un petit peu vulgaire', 'Un petit peu vulgaire.mp3', 'Antoine Daniel', 'https://www.youtube.com/embed/OpqzEd7Ktlc?start=8'),
(218, 'CHAOS - Des Hamsters ?!', 'Des Hamsters genre !.mp3', 'Antoine Daniel', 'https://www.youtube.com/embed/OpqzEd7Ktlc?start=33'),
(219, 'CHAOS - Dommage', 'DOMMAGE DU CHAOS DE ANTOINE DANIEL.mp3', 'Antoine Daniel', 'https://www.youtube.com/embed/toUbk23yu7Q'),
(220, 'AD - Philippe', 'PHILIPPE.mp3', 'Antoine Daniel', 'https://www.youtube.com/embed/bIft0PeKoJw'),
(221, 'Le Récap - Started FTB', 'Started from the bottom.mp3', 'Le Récap', 'https://www.youtube.com/embed/Eg1Fcyz-Tvo?start=23'),
(222, 'Le Récap - Salut la commu !', 'Salut la commu.mp3', 'Le Récap', 'https://www.youtube.com/embed/Eg1Fcyz-Tvo?start=28'),
(223, 'Alerte Générale !', 'Alerte generale - Taxi - Gilbert.mp3', 'Taxi', 'https://www.youtube.com/embed/LACbRkqcbhU'),
(224, 'Pensez printemps !', 'Pensez printemps les amis.mp3', '', 'https://www.youtube.com/embed/KOGeO6nY6fk'),
(225, 'MA LUBULLULE - 8.6', '8 morts 6 blessés.mp3', '8 morts 6 blessés, je pète ma bière, ma lubullule, ma libellule', 'https://www.youtube.com/embed/XCBQZ3xdDu0'),
(226, 'Ma lubullule', 'Ma lubullule.mp3', '8 morts 6 blessés, je pète ma bière, ma lubullule, ma libellule', 'https://www.youtube.com/embed/XCBQZ3xdDu0?start=8'),
(227, 'OUI Didier Drogba', 'what-the-cut-oui.mp3', '', 'https://www.youtube.com/embed/9MpXQEIkfjc?start=15'),
(228, 'Le Récap - HORAS', 'HORAS.mp3', 'Le Récap', 'https://www.youtube.com/embed/IHygqjQz1LQ?start=421'),
(229, 'JAAAAAAAUNE', 'jaune (34alain34).wmv.mp3', 'Jaune', 'https://www.youtube.com/embed/wNch1OqYgIM'),
(230, 'Jaaaaaaaaune Intro', 'jaune intro.mp3', 'Jaune', 'https://www.youtube.com/embed/wNch1OqYgIM'),
(231, 'Jaaaaaaaune Refrain', 'jaune refrain.mp3', 'Jaune', 'https://www.youtube.com/embed/wNch1OqYgIM?start=86'),
(232, 'Sard - DOMO, je suis japonais', 'je suis japonais.mp3', 'Sardoche', 'https://www.youtube.com/embed/niD-zC_1tPU?start=66'),
(233, 'AU REVOIR', 'Au revoir mitterand.mp3', '', 'https://www.youtube.com/embed/Dq5XnXh1nDY?start=6'),
(234, 'PANO - Si on peut parking', 'Si on peut parking alors on park.mp3', 'Ya pas de Pano', 'https://www.youtube.com/embed/LjWjBjyr_Y8?start=38'),
(235, 'C\'est la mer noire Full', 'mer noire.mp3', '', 'https://www.youtube.com/embed/0SdcfsD_WVE?start=36'),
(236, 'C\'est la mer noire ?', 'cest la mer noire.mp3', '', 'https://www.youtube.com/embed/0SdcfsD_WVE?start=49'),
(237, 'Nanar 70\'s - Le Tampax ', 'Nanar 70s - le Tampax.mp3', 'Nanar 70\'s', ''),
(238, 'Ça va péter ! Full ', 'Ca va péter full.mp3', '', 'https://www.youtube.com/embed/tX0oyVX8KWE?start=5'),
(239, 'Ça va péter !', 'Ca va péter.mp3', '', 'https://www.youtube.com/embed/tX0oyVX8KWE?start=5'),
(240, 'KF - Double ration frites', 'KF - Double ration de frites.mp3', 'Khaled Freak', 'https://www.youtube.com/embed/jiAm8OC2pXk?start=46'),
(241, 'Ne le laisse pas t\'aspirer !', 'Ne le laisse pas taspirer.mp3', 'F1', 'https://www.youtube.com/embed/wpmBNu8NEsk?start=71'),
(242, 'Accélère Accélère !', 'Accelere accelere.mp3', 'F1', 'https://www.youtube.com/embed/wpmBNu8NEsk?start=81'),
(243, 'Ah ouais ouais ouais', '[MEME] AH OUAIS OUAIS OUAIS ! - JULIEN LEPERS.mp3', '', 'https://www.youtube.com/embed/zfLGVxTC5F0'),
(244, 'Alerte aux gogoles', 'alerte aux gogoles.mp3', '', 'https://www.youtube.com/embed/NzT2y9S60U0?start=9'),
(245, 'Allez viens !', 'Allez viens !.mp3', '', 'https://www.youtube.com/embed/5SIQPfeUTtg?start=25'),
(246, 'Allez viens ! Full', 'Allez viens full !.mp3', '', 'https://www.youtube.com/embed/5SIQPfeUTtg?start=9'),
(247, 'Arrête la drogue !', 'arrete_la_drogue.mp3', '', 'https://www.youtube.com/embed/E0GikSsNEy8'),
(248, 'On attends pas Patrick ?', 'attendre_patrick.mp3', '', 'https://www.youtube.com/embed/iiNIKedJAkE?start=6'),
(249, 'Base virale VPS a jour', 'base_viral_mis_a_jour.mp3', '', 'https://www.youtube.com/embed/4hMv_rIZBtg?start=6'),
(250, 'Oui Monsieur', 'OUI Monsieur.mp3', '', 'https://www.youtube.com/embed/5MeEToOPwa0?start=59'),
(251, 'OSS - Beurrer la biscotte', 'OSS 117 beurrer la biscotte.mp3', 'OSS 117', 'https://www.youtube.com/embed/H6mZBrQc8EI?start=32'),
(252, 'Faire caca chez Paul', 'caca_paul.mp3', '', 'https://www.youtube.com/embed/sdBYEHt65M4?start=8'),
(253, 'Ali ben c\'est un cafard', 'aliben cafard.mp3', '', 'https://www.youtube.com/embed/dbPIJf7cFp8?start=4'),
(254, 'Che ne comprends pas', 'b20 che ne comprends pas.mp3', 'Booba', 'https://www.youtube.com/embed/ksRVImNfEwQ?start=10'),
(255, 'Comme j\'aime', 'comme_jem_sourier.mp3', '', 'https://www.youtube.com/embed/olYZ5MbA8xQ'),
(256, 'Coucou dobby', 'coucou_dobby.mp3', '', 'https://www.youtube.com/embed/3rfuffQUhfQ'),
(257, 'Demande de vous arrêter', 'demande_arreter_final.mp3', '', 'https://www.youtube.com/embed/V_4CZu4ghMo'),
(258, 'Et la c\'est le drame', 'et la cest le drame.mp3', '', 'https://www.youtube.com/embed/OXjNZZO4axk?start=265'),
(259, 'Fils de berger', 'fils_de_berger.mp3', '', 'https://www.youtube.com/embed/OWqP7fRe3jg?start=8'),
(260, 'Fuites urinaires', 'fuite_urinaire.mp3', '', ''),
(261, 'Goutte d\'eau cruche', 'goutte_do_cruche jojo.mp3', '', 'https://www.youtube.com/embed/r2PAwI2EI9E?start=95'),
(262, 'Rue des potiers', 'rue ds potiers.mp3', '', 'https://www.youtube.com/embed/42K4NUdbKNg'),
(263, 'Les hendeks arrivent', 'hendek_final.mp3', '', 'https://www.youtube.com/embed/eyfh7LG0eUA?start=11'),
(264, 'Je suis 1 homme en COLÈRE', 'homme_colere.mp3', '', 'https://www.youtube.com/embed/I457tqgON8E'),
(265, 'Hôpital se fout charrette', 'hopital_charette jojo.mp3', '', 'https://www.youtube.com/embed/r2PAwI2EI9E?start=46'),
(266, 'La moitié du sel FR', 'ICI ON RECOLTE LA MOITIE DU SEL FRANCAIS.mp3', '', 'https://www.youtube.com/embed/z6aelNSRr9s?start=1'),
(267, 'Ish Ish', 'ish_ish_final.mp3', '', 'https://www.youtube.com/embed/XZBU7BWQsZs?start=107'),
(268, 'J\'ai pas touché', 'brandao g pas touché.mp3', '', 'https://www.youtube.com/embed/FCCGQ9SBTuI?start=9'),
(269, 'Je suis papa !', 'je_suis_papa.mp3', '', 'https://www.youtube.com/embed/eX1VsLaS2Q4?start=8'),
(270, 'KF - Perlimpinpin', 'KF - Perlimpinpin.mp3', 'Khaled Freak', 'https://www.youtube.com/embed/rCK-7Hki4II?start=10'),
(271, 'Lâche moi Michel', 'lache moi michel.mp3', '', 'https://www.youtube.com/embed/DR6fIOpAzPI?start=2'),
(272, 'Le gravier', 'le_gravier.mp3', '', 'https://www.youtube.com/embed/APe0V--peNY?start=96'),
(273, 'Moi je mange la glace', 'Coucou les musulmans moi je mange la glace !.mp3', '', 'https://www.youtube.com/embed/Q9lotttWizc'),
(274, 'KF - Je mange la glace', 'KF - Moi je mange la glace.mp3', 'Khaled Freak', 'https://www.youtube.com/embed/6Bxi6hXhNyo'),
(275, 'OSS - Faisons comme ça', 'OSS 117  faisons comme ça.mp3', 'OSS 117', 'https://www.youtube.com/embed/xkUoUnYLSto'),
(276, 'KF - Vous m\'emmerdez ', 'KF - Vous memmerdez.mp3', 'Khaled Freak', 'https://www.youtube.com/embed/h8-QGeOHx_Y?start=46'),
(277, 'KF - AH ! ', 'KF - AH remix.mp3', 'Khaled Freak', 'https://www.youtube.com/embed/Ri7GzCUTC5s'),
(278, 'Commence à me parler poli', 'commence a me parler poliment.mp3', '', 'https://www.youtube.com/embed/MX_l4pRMI8w?start=48'),
(279, 'Bordel j\'ai le droit', 'mais bordel jai le droit.mp3', '', 'https://www.youtube.com/embed/-bVL_Nvm4A8'),
(280, 'Non binaire', 'non binaire.mp3', '', 'https://www.youtube.com/embed/ZDjymMD7PTU?start=23'),
(281, 'Mais c\'est contre nature ', 'cest contre nature han.mp3', '', 'https://www.youtube.com/embed/a3WuxELOKJA?start=14'),
(282, 'NTM Marine Le Pen', 'marine le pen ntm.mp3', 'MLP, Marine Le Pen', 'https://www.youtube.com/embed/cSyOyeH3wWE?start=4'),
(283, 'Hollande et l\'Anglais', 'hollande et langlais.mp3', '', 'https://www.youtube.com/embed/M2wyG8Kt3fA?start=4'),
(284, 'Ils sont la partout MLP', 'Ils sont la ils sont partout.mp3', 'MLP, Marine Le Pen', 'https://www.youtube.com/embed/Y6UHYemqvco'),
(285, 'Marina passe tu t’écartes', 'Marina passe et tu tecartes.mp3', '', 'https://www.youtube.com/embed/_MX-YiYs9YU?start=21'),
(286, 'Kalash kalash', 'kalash kalash.mp3', '', 'https://www.youtube.com/embed/_MX-YiYs9YU?start=35'),
(287, 'Savez-vous ce que c\'est ?', 'micose_vaginale.mp3', '', ''),
(288, 'Mon sac est fait', 'mon_sac_est_fait.mp3', '', 'https://www.youtube.com/embed/05yQW0Sbrv8'),
(289, 'Multiplex', 'multiplex.mp3', '', 'https://www.youtube.com/embed/vF34AHJzbU0'),
(290, 'Les nerfs sont tendus', 'nerf_tendu.mp3', '', 'https://www.youtube.com/embed/2lNDfxSddUg?start=53'),
(291, 'Non ! ', 'non mario.mp3', '', 'https://www.youtube.com/embed/caXgpo5Ezo4'),
(292, 'Doucement ac les bonbons', 'oh-doucement-avec-les-bonbons.mp3', '', 'https://www.youtube.com/embed/kvmyR2AuQVc?start=420'),
(293, 'Mister V - OK ', 'ok_mister_v_final.mp3', 'Mister V', 'https://www.youtube.com/embed/OxvinfGPtQM'),
(294, 'Okay ! Jacquouille', 'okay_jacquoille_final.mp3', '', 'https://www.youtube.com/embed/zZURohVP5JY?start=8'),
(295, 'Macron - Oui d\'accord', 'oui_d_accord.mp3', 'Macron, le M', 'https://www.youtube.com/embed/Z8et47AbmgU'),
(296, 'C\'est pas faux', 'pas_faux_final.mp3', '', 'https://www.youtube.com/embed/3w5cwBrvtf4?start=1'),
(297, 'KF - Mais t\'es pas net ?', 'pas_net_remix.mp3', 'Khaled Freak', 'https://www.youtube.com/embed/pQjg6GlkQYM?start=56'),
(298, 'J\'suis pas ta mère', 'pas_ta_mere_jojo.mp3', '', ''),
(299, 'Je suis Passe Partout', 'passe_partout.mp3', '', 'https://www.youtube.com/embed/Z8wZ7JaSP64?start=59'),
(300, 'Petit Poney', 'petit poney.mp3', '', 'https://www.youtube.com/embed/u5Ho1trvlro'),
(301, 'Petit Poney refrain', 'petit poney refrain.mp3', '', 'https://www.youtube.com/embed/u5Ho1trvlro'),
(302, 'Poce bleu', 'poce_bleu_final.mp3', '', ''),
(303, 'Ton coté = feu éteint', 'Si de ton côté le feu sest éteint.mp3', '', 'https://www.youtube.com/embed/4BP__EF9ess?start=15'),
(304, 'Slt a tous, c\'est Lasalle', 'slt_lasalle.mp3', '', 'https://www.youtube.com/embed/9JGNQvL7teE?start=15'),
(305, 'Du Sprite sa mère', 'sprite_mere_final.mp3', '', 'https://www.youtube.com/embed/uEov4qWmHCY?start=6'),
(306, 'Super Spermatoz Jamy !', 'superbe_zigote_jamy.mp3', 'Jamy', 'https://www.youtube.com/embed/Sqgr2WNHRkM'),
(307, 'T\'en as trop pris gros !', 'trop_pris_gros.mp3', 'SLG, Salut les Geeks', 'https://www.youtube.com/embed/4wxsLz9RLrY'),
(308, 'JCVD - 1 +1 = 11 ', 'un_plus_un_jcdm.mp3', 'JCVD', 'https://www.youtube.com/embed/FTKV29C7yJE?start=21'),
(309, 'Véga Missile', 'vega_misyl_satellise.mp3', '', 'https://www.youtube.com/embed/5V2D1aXX_UM?start=132'),
(310, 'Zbeub Zbeub', 'zbeub_final.mp3', '', ''),
(311, 'Mister V - Koba LA D FULL', 'MAIS COMMENT VOUS MAVEZ TROUVÉ - MISTER V.mp3', 'Mister V', 'https://www.youtube.com/embed/MxsDaDuEDBg'),
(312, 'Très très sale ', 'Très très sale - Maitre Van Diest ft M6 Boutique.mp3', '', 'https://www.youtube.com/embed/jwMFYcXjTbQ'),
(313, 'PTDR T KI ?', 'Ptdr t ki.mp3', 'Jiraya, La Jij', 'https://www.youtube.com/embed/u4SklJm7ZHQ?start=198'),
(314, 'Ça c\'était gratuit', 'ÇA CÉTAIT GRATUIT - Maskey.mp3', 'Maskey', 'https://www.youtube.com/embed/1IuAmxG0Mb4'),
(315, 'On appelle ça une douille', 'on appelle ça une douille maskey.mp3', 'Maskey', 'https://www.youtube.com/embed/QJH00mv8Y4I'),
(316, 'Naissance probable', 'Naissance probable de maskey.mp3', 'Maskey', 'https://www.youtube.com/embed/jd9bzsyhbr8?start=34'),
(317, 'Parce que c\'est la hess', 'Parce que cest la hess.mp3', 'Maskey', 'https://www.youtube.com/embed/jd9bzsyhbr8?start=70'),
(318, 'Parce que j\'ai la flemme', 'Parce que jai la flemme.mp3', 'Maskey', 'https://www.youtube.com/embed/jd9bzsyhbr8?start=64'),
(319, 'Psartek le génie', 'Psartek le génie.mp3', 'Maskey', 'https://www.youtube.com/embed/jd9bzsyhbr8?start=44'),
(320, 'Mensonge', 'Mensonge.mp3', 'Maskey', 'https://www.youtube.com/embed/jd9bzsyhbr8?start=52'),
(321, 'Au chômage', 'AU chomage.mp3', 'Maskey', 'https://www.youtube.com/embed/jd9bzsyhbr8?start=121'),
(322, 'Moi je quitte cet endroit', 'moi je quitte cet endroit.mp3', 'Maskey', 'https://www.youtube.com/embed/jd9bzsyhbr8?start=145'),
(323, 'P A T U F', 'PATUF.mp3', 'Maskey', 'https://www.youtube.com/embed/jd9bzsyhbr8?start=161'),
(324, 'Catapulte tes morts', 'catapulte tes morts.mp3', 'Maskey', 'https://www.youtube.com/embed/jd9bzsyhbr8?start=171'),
(325, 'Forceur', 'Forceur.mp3', 'Maskey', 'https://www.youtube.com/embed/jd9bzsyhbr8?start=185'),
(326, 'J’apprécie moyen la', 'japprecie moyen.mp3', '', ''),
(327, 'L’expérimental', 'Lexpérimental.mp3', 'Maskey', 'https://www.youtube.com/embed/jd9bzsyhbr8?start=306'),
(328, 'Je suis le chasseur !', 'Je suis... Le chasseur.mp3', 'Valorant', 'https://www.youtube.com/embed/obITlzbOecw'),
(329, 'Un nouveau subterfuge ?!', 'Vont-ils essayer un nouveau subterfuge.mp3', 'Valorant', 'https://www.youtube.com/embed/jfwZ7TJOdms'),
(330, 'Domo, je suis japonais', 'Monster - je suis japonais.mp3', '', 'https://www.youtube.com/embed/ylZpdAQdqqc'),
(331, 'Ohlala c\'est la décadence', 'ohlala cest la décadence.mp3', '', 'https://www.youtube.com/embed/a3WuxELOKJA?start=71'),
(332, 'Ekip 667', 'Ekip.mp3', 'Freeze Corleone, Ekip, 667', 'https://www.youtube.com/embed/rshUZPcUrJQ?start=13'),
(333, 'BO - Zumba, caféw, carnaval', 'Zumba cafew carnaval.mp3', '', 'https://www.youtube.com/embed/-CVn3-3g_BI?start=194'),
(334, 'Pas de préliminaires !', 'Pas besoin de préliminaire !.mp3', '', 'https://www.youtube.com/embed/sIKS1vjXWA4'),
(335, 'Le coup du foulard', 'le coup du foulaaaaard.mp3', '', 'https://www.youtube.com/embed/4kkagtURMxg?start=450'),
(336, 'Quel goût !', 'Quel gout.mp3', '', 'https://www.youtube.com/embed/4N9Endw_nD8?start=10'),
(337, 'Eul\'Vraie France', 'Eul Vraie France.mp3', 'Kamini', 'https://www.youtube.com/embed/Fy2VK7nBKhY?start=30'),
(338, 'SN - J\'ai fait des conneries', 'Jai fait des conneries.mp3', 'Samy Naceri', 'https://www.youtube.com/embed/V6ljXkkGXG0?start=64'),
(339, 'SN - Les rimes en &quot;ence&quot;', 'Les rimes en ence.mp3', 'Samy Naceri', 'https://www.youtube.com/embed/V6ljXkkGXG0?start=164'),
(340, 'SN - Oui j\'ai envie', 'oui jai envie.mp3', 'Samy Naceri', 'https://www.youtube.com/embed/V6ljXkkGXG0?start=95'),
(341, 'BO - Canebière &amp; Vieux Port', 'La cannebiere et le vieux port.mp3', '', 'https://www.youtube.com/embed/-CVn3-3g_BI?start=83');

-- --------------------------------------------------------

--
-- Structure de la table `soundw`
--

CREATE TABLE `soundw` (
  `ID` int(10) UNSIGNED NOT NULL,
  `Nom` varchar(255) CHARACTER SET utf8 NOT NULL,
  `Son` varchar(255) CHARACTER SET utf8 NOT NULL,
  `keywords` text CHARACTER SET utf8 NOT NULL,
  `source` text CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `soundw`
--

INSERT INTO `soundw` (`ID`, `Nom`, `Son`, `keywords`, `source`) VALUES
(1, 'Crab Rave', 'crab-rave.mp3', '', 'https://www.youtube.com/embed/LDU_Txk06tM?start=73'),
(2, 'Curb your enthusiasm', 'curb-your-enthusiasm.mp3', '', 'https://www.youtube.com/embed/04EpRaroHpc'),
(3, 'Gamecube Intro', 'gamecube_intro.mp3', '', 'https://www.youtube.com/embed/CpmYW-gCSy4'),
(4, 'Big OOF', 'BIG OOF.mp3', '', 'https://www.youtube.com/embed/Rf-2J_SXih4?start=4'),
(5, 'Anime WOW', 'anime-wow-sound-effect.mp3', '', 'https://www.youtube.com/embed/8URukvnUYTw'),
(6, 'Coffin meme', 'Coffin dance meme original clip.mp3', '', 'https://www.youtube.com/embed/iLBBRuVDOo4?start=18'),
(7, 'FT - A lot of damage', 'a lot of damage !.mp3', 'Flex Tape', 'https://www.youtube.com/embed/7zpxgyG7eGk?start=25'),
(8, 'FT - A lot a damage FULL', 'A lot of damage litle more.mp3', 'Flex Tape', 'https://www.youtube.com/embed/7zpxgyG7eGk?start=11'),
(9, 'Do a barrel roll ', 'barrelroll.swf.mp3', '', 'https://www.youtube.com/embed/psc_A0bUgSQ'),
(10, 'CR7 SUUUUUU', 'cr_suuu.mp3', '', 'https://www.youtube.com/embed/l8UkP2K311c?start=20'),
(11, 'Drop the bass', 'd-d-d-d-drop-the-bass.mp3', '', 'https://www.youtube.com/embed/uIyAZCH9s4s'),
(12, 'Minecraft death', 'Death sound in Minecraft.mp3', '', 'https://www.youtube.com/embed/_4vQ6ZQGdnE'),
(13, 'Déja vu', 'deja-vu.mp3', '', 'https://www.youtube.com/embed/Z0oyGH7P3Uo?start=64'),
(14, 'Law &amp; Order ', 'dun_dun_1.mp3', '', 'https://www.youtube.com/embed/gP3MuUTmXNk'),
(15, 'Ah shit here we go again', 'GTA San Andreas - Ah shit, here we go again..mp3', '', 'https://www.youtube.com/embed/-1qju6V1jLM'),
(16, 'Inception', 'inceptionbutton.mp3', '', 'https://www.youtube.com/embed/DUMq6imrMmI'),
(17, 'Hey listen', 'hey_listen.mp3', '', 'https://www.youtube.com/embed/KN1WlLVoHSQ'),
(18, 'King Croc', 'King Croc Song - Wild Animal Sports Day.mp3', '', 'https://www.youtube.com/embed/wf0NldJlI6A'),
(19, 'L &amp; G we got him', 'ladies-and-gentlemen-we-got-him-song.mp3', '', 'https://www.youtube.com/embed/-15VC4Yxzys'),
(20, 'Coffin meme LONG', 'LONG Coffin Dance Meme Template.mp3', '', 'https://www.youtube.com/embed/iLBBRuVDOo4?start=18'),
(21, 'LOUD GUY ORGASM', 'LOUD BLACK GUY ORGASM - with Subtitles.mp3', '', 'https://www.youtube.com/embed/ickpIIlc5GI'),
(22, 'NO GOD PLZ NO', 'NO GOD! PLEASE NO!!! NOOOOOOOOOO.mp3', '', 'https://www.youtube.com/embed/umDr0mPuyQc?start=3'),
(23, 'NICE', 'Nice Meme teneis videooo.mp3', '', 'https://www.youtube.com/embed/3WAOxKOmR90'),
(24, 'NOPE', 'nope.mp3', '', 'https://www.youtube.com/embed/N9iyAeu7wac'),
(25, 'PH Community Intro', 'pornhub-community-intro.mp3', '', 'https://www.youtube.com/embed/DCmh5fvgqq4'),
(26, 'OOF', 'Roblox Death Sound - OOF Sound Effect.mp3', '', 'https://www.youtube.com/embed/HoBa2SyvtpE'),
(27, 'Running in the 90\'s', 'running.mp3', '', 'https://www.youtube.com/embed/rWLoUjz-w-8?start=24'),
(28, 'STONKS', 'STONKS.mp3', '', 'https://www.youtube.com/embed/SMRg9mKcyhM'),
(29, 'To be continued', 'to-be-continued.mp3', '', 'https://www.youtube.com/embed/cPCLFtxpadE'),
(30, 'I am the one', 'ultimate-respect-button_MdJiOOn.mp3', '', 'https://www.youtube.com/embed/VR24Pfw7Ykw?start=12'),
(31, 'WOW (wink)', 'Waw meme.mp3', '', 'https://www.youtube.com/embed/ZXCb6Ihqx68?start=2'),
(32, 'FT - How about a little more', 'how about a little more.mp3', 'Flex Tape', 'https://www.youtube.com/embed/7zpxgyG7eGk?start=13'),
(33, 'PEWDS - pickle chorus', 'PEWDS CHORUS.mp3', 'PEWDS, PewDiePie', 'https://www.youtube.com/embed/EeQP_XNUPZU?start=920'),
(34, 'PEWDS - Into a pickle', 'PEWDS into a pickle.mp3', 'PEWDS, PewDiePie', 'https://www.youtube.com/embed/EeQP_XNUPZU?start=928'),
(36, 'What ? WTF ?', 'wat. WTF!.mp3', '', 'https://www.youtube.com/embed/gHcNYIRS0z0?start=928'),
(37, 'Why are we still here ', 'Why are we still here just to suffer Sound Effect.mp3', '', 'https://www.youtube.com/embed/-QPcjVFHm2A'),
(38, 'Why are you running', 'Why are You Running.mp3', '', 'https://www.youtube.com/embed/W6oQUDFV2C0?start=4'),
(39, 'OOF Sports Theme', 'Wii Sports Theme but with the Roblox Death Sound.mp3', '', 'https://www.youtube.com/embed/KWHrGQpIWP4?start=590'),
(40, 'You\'re breathtaking', 'Youre Breathtaking! KEANU REEVES.mp3', '', 'https://www.youtube.com/embed/5F_Kj5xgAcg?start=14'),
(41, 'They ask you how you are', 'they-ask-you-how-you-are-and-you-just-have-to-say-that-youre-fine-sound-effect_IgYM1CV.mp3', '', 'https://www.youtube.com/embed/77sS5IuR0Gs'),
(42, 'Excuse me princess ', 'Excuse_Me_Princess.mp3', 'Zelda', 'https://www.youtube.com/embed/SZgND4gacP4?start=28'),
(43, 'So yg 2 be such a buffoon', 'So young to be such a bufoon.mp3', '', 'https://www.youtube.com/embed/NkH2_Zaz6eY?start=17'),
(44, 'YAY Kids cheering', 'kids_cheering.mp3', '', 'https://www.youtube.com/embed/_Z3ra0CxCE0'),
(45, 'Thomas the train EARRAPE', 'Thomas the train engine EAR RAPE.mp3', '', 'https://www.youtube.com/embed/agxG5K38g1c?start=8'),
(46, 'ISSOU Long', 'issou 1.mp3', 'Risitas, ISSOU', 'https://www.youtube.com/embed/GDLBaHjy9Ho?start=280'),
(47, 'ISSOU', 'issou 2.mp3', 'Risitas, ISSOU', 'https://www.youtube.com/embed/GDLBaHjy9Ho?start=280'),
(48, 'My man', 'my-man.mp3', '', 'https://www.youtube.com/embed/KpcmfjFN8OI'),
(49, 'Don\'t do it i\'m a virgin', 'no-dont-do-it-im-a-virgin.mp3', '', 'https://www.youtube.com/embed/lgPmRV9OdHA?start=32'),
(50, 'Pumped up kicks remix', 'passinho-do-gstv-pumped-up-kicks.mp3', '', 'https://www.youtube.com/embed/bR-s4ReIxJo?start=13'),
(51, 'Sitcom laughs', 'sitcom-laughing-1.mp3', '', 'https://www.youtube.com/embed/ySkafsRm9po'),
(52, 'Cyka blyat hardbass', 'suka-blyat_sYftCfd.mp3', '', 'https://www.youtube.com/embed/sLxJAH6zeEA?start=5'),
(53, 'Sacha Grey orgasm', 'sasha grey orgasm.mp3', '', ''),
(54, 'Ear rape moaning girl', 'ear-rape-moaning-girl-troll-sound-crappy-long-edition-loudtronix-hq.mp3', '', ''),
(55, 'Error WIndows', 'erro.mp3', '', 'https://www.youtube.com/embed/0lhhrUuw2N8'),
(56, 'Big Shaq - Las Ketchup', 'Big Shaq - Just Sauce Song.mp3', 'Big Shaq', 'https://www.youtube.com/embed/lwwipA_nBeY'),
(57, 'Big Shaq - Ting Runnin 90\'s', 'The Ting Goes Running In The 90s.mp3', 'Big Shaq', 'https://www.youtube.com/embed/Pz68j1pXrLE'),
(58, 'Big Shaq - Quick Maths', 'QuickMaths.mp3', 'Big Shaq', 'https://www.youtube.com/embed/3M_5oYU-IsU?start=65'),
(59, 'Big Shaq - RAW SAUCE', 'Just Sauce Raw Sauce.mp3', 'Big Shaq', 'https://www.youtube.com/embed/3M_5oYU-IsU?'),
(60, 'Big Shaq - The Ting goes Skra', 'The Ting goes Skraaaaa.mp3', 'Big Shaq', 'https://www.youtube.com/embed/3M_5oYU-IsU?start=149'),
(61, 'Hit or Miss ?', 'Hit or Miss.mp3', '', 'https://www.youtube.com/embed/XpV_uS5s-GY?start=2'),
(62, 'TIKO Mode', 'TIKO Mode.mp3', 'Hit or Miss', 'https://www.youtube.com/embed/HJeaZEiPfms'),
(63, 'Bitconeeeeeeeeeect', 'Bitconnect wow.mp3', 'Bitconnect', 'https://www.youtube.com/embed/yIL9wLxG01M?start=26'),
(64, 'Bitconnect Childish ', 'Childish Biconnect.mp3', 'Bitconnect', 'https://www.youtube.com/embed/GLQAXo0xonI?start=5'),
(65, 'Bitconnect EDM Remix', 'BITCONNECT EDM REMIX (FULL SONG).mp3', 'Bitconnect', 'https://www.youtube.com/embed/e5nyQmaq4k4'),
(66, 'BLEND S INTRO', 'BLEND S INTRO.mp3', '', 'https://www.youtube.com/embed/4wURrijamOw'),
(67, 'PEWDS - FLOOR GANG OOH !', 'FLOOR GANG OOH!!!.mp3', 'PEWDS, PewDiePie', 'https://www.youtube.com/embed/f8GZE0gozUs?start=6'),
(68, 'OMG WOW OMG', 'OMG WOW OMG.mp3', '', 'https://www.youtube.com/embed/H46FRRvb-9o'),
(70, 'WIDER WALK', 'WIDER WALK.mp3', '', 'https://www.youtube.com/embed/VQ7lKPSUc2g'),
(71, 'COOFfin Dance', 'COOFfin dance.mp3', 'Coffin', 'https://www.youtube.com/embed/glUQV8rZ7AE'),
(74, 'Air horn', 'air horn.mp3', '', 'https://www.youtube.com/embed/17ahNDRc14w'),
(75, 'Oh baby a triple !', 'ohbabytriple.mp3', '', 'https://www.youtube.com/embed/XlLbsTP0C_U'),
(76, 'Naaaaaaaaaaah Cry', 'Naaaaaah Cry.mp3', '', 'https://www.youtube.com/embed/RoO-wvnxyWs?start=14'),
(77, 'Trump bing bing', 'Trump bing bing.mp3', '', 'https://www.youtube.com/embed/niSLZDVApdQ'),
(78, 'Bruh', 'Bruh.mp3', '', 'https://www.youtube.com/embed/2ZIpFytCSVc'),
(80, 'Buzzer wrong answer', 'buzzer wrong.mp3', '', 'https://www.youtube.com/embed/V0DGjXE_BQQ'),
(81, 'Goat scream', 'goat scream.mp3', '', 'https://www.youtube.com/embed/1PXCBpVs3k4?start=3'),
(82, 'Okay', 'okay.mp3', '', 'https://www.youtube.com/embed/Obgnr9pc820?start=5'),
(83, 'MLG horns', 'MLG horns.mp3', '', 'https://www.youtube.com/embed/OFr74zI1LBM'),
(84, 'Nein nein nein', 'nein_nein_nein.mp3', '', 'https://www.youtube.com/embed/5lbGAzo9RrM?start=3'),
(85, 'WEEEEEEEEEEEEEEEEEEEEEE', 'WEEEEEEEEEEEEEEEE.mp3', '', 'https://www.youtube.com/embed/iz24kqGjOME'),
(86, 'PEWDS - S stands for SDFDM', 'S Stands For.. (PewDiePie YLYL Episode 3435 Intro).mp3', 'PEWDS, PewDiePie', 'https://www.youtube.com/embed/34dEQVNRNEo'),
(87, 'PEWDS - HEJ MONIKA', 'HEJ MONIKA.mp3', 'PEWDS, PewDiePie', 'https://www.youtube.com/embed/Vk8UEWHYfEg'),
(88, 'PEWDS - FLOOR GANG ', 'PewDiePie - Floor Gang (Remix).mp3', 'PEWDS, PewDiePie', 'https://www.youtube.com/embed/ot7q_my379o'),
(89, 'Big Shaq - SandSauce', 'Big Shaq - The Ting Goes DUDUDUDUDU.mp3', 'Big Shaq', 'https://www.youtube.com/embed/fp3MvrSOtPs'),
(90, 'Biq Shaq - PPAP Maths', 'Learning Quick Maths with Big Shaq.mp3', 'Big Shaq', 'https://www.youtube.com/embed/3-Hjm3FnY5A'),
(91, 'HMM HMM NONONO', 'HMM HMM NO NO NO.mp3', 'Bitconnect', 'https://www.youtube.com/embed/15bLDWs0Q4Q'),
(92, 'ZA WARUDO', 'ZA WARUDO.mp3', '', 'https://www.youtube.com/embed/7ePWNmLP0Z0'),
(93, 'Yatangaki', 'Yatangaki.mp3', 'Risitas, ISSOU', 'https://www.youtube.com/embed/09zjNV0cclY'),
(94, 'La Chancla', 'Risitas La Chancla.mp3', 'Risitas, ISSOU', 'https://www.youtube.com/embed/oEwkEFH78bg'),
(95, 'It\'s time to stop', 'its time to stop.mp3', '', 'https://www.youtube.com/embed/2k0SmqbBIpQ'),
(96, 'Another One', 'DJ Khaled another one.mp3', '', 'https://www.youtube.com/embed/5xntOpWCIfo'),
(97, 'Right in her pussy', 'Fuck her right in the pussy original.mp3', '', 'https://www.youtube.com/embed/CdIT74L8hGI?start=5');

-- --------------------------------------------------------

--
-- Structure de la table `wtc`
--

CREATE TABLE `wtc` (
  `ID` int(10) UNSIGNED NOT NULL,
  `Nom` varchar(255) NOT NULL,
  `Son` varchar(255) NOT NULL,
  `keywords` text NOT NULL,
  `source` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `wtc`
--

INSERT INTO `wtc` (`ID`, `Nom`, `Son`, `keywords`, `source`) VALUES
(1, 'C\'est dégueulasse', 'cest-degueulasse.mp3', 'WHAT THE CUT - SPÉCIAL RUSSIE, WTC RUSSIE', 'https://www.youtube.com/embed/EcaRKNcxyRk'),
(3, 'Mwhahaha Antoine Daniel', 'mwhahhahaha.mp3', 'WHAT THE CUT #36, WTC 36', 'https://www.youtube.com/embed/F23568GDskw'),
(4, 'Petit FDP de merde', 'petit-fdp-de-merd.mp3', 'WHAT THE CUT #36, WTC 36', 'https://www.youtube.com/embed/F23568GDskw'),
(5, 'Popopoooo', 'Popopoooo.mp3', 'WHAT THE CUT #26, WTC 26', 'https://www.youtube.com/embed/GGtQJnlbpwo'),
(6, 'On est les bananes', '(274) WTC - Antoine Daniel - On est les bananes - YouTube - Mozilla Firefox (Navigation privée) 2020-07-12 22-30-26.mp3', 'WHAT THE CUT #37, WTC 37', 'https://www.youtube.com/embed/_ghgW_tSPAI'),
(7, 'Je détruis ton vagin', 'WTC - Antoine Daniel - Je detruis ton vagin - Special Quebecoise.mp3', 'WHAT THE CUT - SPÉCIAL QUÉBEC, WTC QUEBEC', 'https://www.youtube.com/embed/zJDoCPYybYY'),
(8, 'Super Richard', 'Super Richard.mp3', 'WHAT THE CUT - SPÉCIAL RUSSIE, WTC RUSSIE', 'https://www.youtube.com/embed/EcaRKNcxyRk'),
(9, 'Je souris à la vie', 'WTC - Antoine Daniel - Je souris a la vie.mp3', 'WHAT THE CUT #26, WTC 26', 'https://www.youtube.com/embed/GGtQJnlbpwo'),
(10, 'Le Chuck Norris Indien', 'WTC - Antoine daniel - Le gentil - Special Indienne.mp3', 'WHAT THE CUT - SPÉCIAL INDE, WTC INDE', 'https://www.youtube.com/embed/EBe0qO116s0'),
(11, 'Je suis Patate', 'WTC - Antoine Daniel - Je suis Patate.mp3', 'WHAT THE CUT #32, WTC 32', 'https://www.youtube.com/embed/flBwfPNKNvE'),
(12, 'J\'aime les yaourts ', 'WTC - Antoine Daniel - Penis dans les yaourts.mp3', 'WHAT THE CUT #33, WTC 33', 'https://www.youtube.com/embed/CjsPSeupj2w'),
(13, 'L\'histoire du pipi', 'WTC - Antoine Daniel - Lhistoire du pipi.mp3', 'WHAT THE CUT #34, WTC 34', 'https://www.youtube.com/embed/JYVAGod7lxk'),
(14, 'C\'est cool la mort', 'WTC - Antoine Daniel - Cest cool la mort - Special Russie.mp3', 'WHAT THE CUT - SPÉCIAL RUSSIE, WTC RUSSIE', 'https://www.youtube.com/embed/EcaRKNcxyRk'),
(15, 'J\'ai très envie de vomir', 'WTC - Antoine Daniel - Jai tres envis de vomir - Special Japon 2.mp3', 'WHAT THE CUT - SPÉCIAL JAPON 2, WTC JAPON 2', 'https://www.youtube.com/embed/1cG1UigenvI'),
(16, 'Mickey &amp; ses amis', 'WTC - Antoine Daniel - Mikey et ses amis.mp3', 'WHAT THE CUT #35, WTC 35', 'https://www.youtube.com/embed/IB7Cg6BAdo0'),
(17, 'Plus de ca-cash', 'WTC - Antoine Daniel - pas de couilles plus de cash.mp3', 'WHAT THE CUT #37, WTC 37', 'https://www.youtube.com/embed/_ghgW_tSPAI'),
(18, 'Prévention MST', 'WTC - Antoine Daniel - Transforme tes couilles.mp3', 'WHAT THE CUT #37, WTC 37', 'https://www.youtube.com/embed/_ghgW_tSPAI'),
(19, 'Jingle Bells ', 'Jingle Bells, Jingle Bells BANDE DENCULÉS.mp3', 'WHAT THE CUT #37, WTC 37', 'https://www.youtube.com/embed/_ghgW_tSPAI'),
(20, 'Sexe, urètre, pied et un anus', 'WTC - Antoine Daniel - Peut tu mettre.mp3', 'WHAT THE CUT #30, WTC 30', 'https://www.youtube.com/embed/19rugHsRb0o'),
(21, 'Jostophe', 'WTC - Antoine Daniel - Jostophe.mp3', 'WHAT THE CUT #37, WTC 37', 'https://www.youtube.com/embed/_ghgW_tSPAI'),
(22, 'Père de l\'année', 'WTC - Antoine Daniel - Père de lannée.mp3', 'WHAT THE CUT #36, WTC 36', 'https://www.youtube.com/embed/F23568GDskw'),
(23, 'La Mécanophilie', 'WTC - Antoine Daniel - La Mécanophilie.mp3', 'WHAT THE CUT #36, WTC 36', 'https://www.youtube.com/embed/F23568GDskw'),
(24, 'Tarte à la Mirabelle', 'WTC - Antoine - Tarte a la Mirabelle.mp3', 'WHAT THE CUT #37, WTC 37', 'https://www.youtube.com/embed/_ghgW_tSPAI'),
(25, 'L\'argent', 'Antoine Daniel - Largent.mp3', 'WHAT THE CUT #36, WTC 36', 'https://www.youtube.com/embed/F23568GDskw'),
(26, 'J\'aime manger des pneus', 'Antoine Daniel - Jaime manger des pneus.mp3', 'WHAT THE CUT #35, WTC 35', 'https://www.youtube.com/embed/IB7Cg6BAdo0'),
(27, 'Pour Internet', 'Pour internet.mp3', 'WHAT THE CUT #37, WTC 37', 'https://www.youtube.com/embed/_ghgW_tSPAI'),
(28, 'Michel du Calvados Remix ', 'WHAT THE CUT N°37 REMIX.mp3', 'WHAT THE CUT #37, WTC 37', 'https://www.youtube.com/embed/_ghgW_tSPAI'),
(29, 'Tu décèdes', 'WTC - tu décèdes.mp3', 'WHAT THE CUT #29, WTC 29', 'https://www.youtube.com/embed/TKHPRKd1qaY'),
(30, 'Uga Aga Pipi Kaka', '29 Uga Aga Pipi Kaka.mp3', 'WHAT THE CUT #29, WTC 29', 'https://www.youtube.com/embed/TKHPRKd1qaY'),
(32, 'Uga Aga Pipi Kaka Full', 'Uga Aga Pipi Kaka Full.mp3', 'WHAT THE CUT #29, WTC 29', 'https://www.youtube.com/embed/TKHPRKd1qaY'),
(33, 'Michel', 'Michel.mp3', 'WHAT THE CUT #29, WTC 29', 'https://www.youtube.com/embed/TKHPRKd1qaY'),
(34, 'Prévention Drogues', 'Prévention Drogues.mp3', 'WHAT THE CUT #29, WTC 29', 'https://www.youtube.com/embed/TKHPRKd1qaY'),
(35, 'Qu\'es ce qu\'il se passe ?', 'Je ne sais pas ce quil se passe.mp3', 'WHAT THE CUT #29, WTC 29', 'https://www.youtube.com/embed/TKHPRKd1qaY'),
(36, 'L\'explication claire', 'Lexplication claire et précise.mp3', 'WHAT THE CUT #29, WTC 29', 'https://www.youtube.com/embed/TKHPRKd1qaY'),
(37, 'Premier Psaume', 'Premier Psaume.mp3', 'WHAT THE CUT #29, WTC 29', 'https://www.youtube.com/embed/TKHPRKd1qaY'),
(38, 'Alerte Pyschopathe', '23 Alerte Pyschopathe.mp3', 'WHAT THE CUT #23, WTC 23', 'https://www.youtube.com/embed/iOz0GkHYTeE'),
(39, 'SALMON DANCE', 'SALMON DANCE WTC.mp3', 'WHAT THE CUT #36, WTC 36', 'https://www.youtube.com/embed/F23568GDskw'),
(40, 'Respirer c\'est important', '8 Respirer cest important.mp3', 'WHAT THE CUT #08, WTC 8', 'https://www.youtube.com/embed/md3gGDCj67c'),
(41, 'Besoin de Traduction ', '15 Besoin Traduction Alexdu76.mp3', 'WHAT THE CUT #15, WTC 15', 'https://www.youtube.com/embed/DIIW1-VBLDY'),
(42, 'Avec un chat ?!', '13 Douleur pénienne féline.mp3', 'WHAT THE CUT #13, WTC 13', 'https://www.youtube.com/embed/EerMCWNon34'),
(43, 'Bande de YEAH', '11 Compris bande de yeah à Jacques Chirac.mp3', 'WHAT THE CUT #11, WTC 11', 'https://www.youtube.com/embed/pYcWWPj6lvg'),
(44, 'On va parler de ma bite', '11 On va parler de ma bite.mp3', 'WHAT THE CUT #11, WTC 11', 'https://www.youtube.com/embed/pYcWWPj6lvg'),
(45, 'ENFIN !', '11 Enfin !.mp3', 'WHAT THE CUT #11, WTC 11', 'https://www.youtube.com/embed/pYcWWPj6lvg'),
(46, 'Leçon à retenir', '11 Leçon à retenir.mp3', 'WHAT THE CUT #11, WTC 11', 'https://www.youtube.com/embed/pYcWWPj6lvg'),
(47, 'WTC sous coke', 'WTC sous coke.mp3', 'WHAT THE CUT, WTC', ''),
(48, 'Sérieux ?!', '15 Sérieux !.mp3', 'WHAT THE CUT #15, WTC 15', 'https://www.youtube.com/embed/DIIW1-VBLDY'),
(49, 'Assez t-il tout étant', '18 Assez t--il tout étant.mp3', 'WHAT THE CUT #18, WTC 18', 'https://www.youtube.com/embed/UtvkKgH84vU'),
(50, 'Caca chez Paul', '19 Caca chez Paul.mp3', 'WHAT THE CUT #19, WTC 19', 'https://www.youtube.com/embed/W7m8yDNNVo4'),
(51, 'Déjà pris une douche ?', '23 Déja pris une douche.mp3', 'WHAT THE CUT #23, WTC 23', 'https://www.youtube.com/embed/iOz0GkHYTeE'),
(52, 'VENGEANCE', '22 VENGEANCE.mp3', 'WHAT THE CUT #22, WTC 22', 'https://www.youtube.com/embed/EFhif72jZoA'),
(53, 'Ceci est mon urine', '22 Ceci est mon urine.mp3', 'WHAT THE CUT #22, WTC 22', 'https://www.youtube.com/embed/EFhif72jZoA'),
(54, 'Carmina Douchina', '23 Carmina Douchina.mp3', 'WHAT THE CUT #23, WTC 23', 'https://www.youtube.com/embed/iOz0GkHYTeE'),
(56, 'Saloperie d\'objets', 'Saloperie dobjets.mp3', 'WHAT THE CUT, WTC', ''),
(57, 'YEAH YEAH YEAH', '23 Yeah yeah yeah.mp3', 'WHAT THE CUT #23, WTC 23', 'https://www.youtube.com/embed/iOz0GkHYTeE'),
(58, 'Paroles Divines', '23 Paroles Divines.mp3', 'WHAT THE CUT #23, WTC 23', 'https://www.youtube.com/embed/iOz0GkHYTeE'),
(59, 'Les carottes râpées', '24 Les carottes rapées.mp3', 'WHAT THE CUT #24, WTC 24', 'https://www.youtube.com/embed/fw3yDPBLVmY'),
(60, 'Perte d\'audition', '23 Perte daudition.mp3', 'WHAT THE CUT #23, WTC 23', 'https://www.youtube.com/embed/iOz0GkHYTeE'),
(61, 'Je retire mes lunettes', 'Je retire mes lunettes.mp3', 'WHAT THE CUT, WTC', ''),
(62, 'Sodomie surprise', '25 Sodomie surprise.mp3', 'WHAT THE CUT #25, WTC 25', 'https://www.youtube.com/embed/kqefNJ7qaOY'),
(63, 'Elle est morte mec', '23 Elle est morte mec.mp3', 'WHAT THE CUT #23, WTC 23', 'https://www.youtube.com/embed/iOz0GkHYTeE'),
(64, 'Bonjour Amour', '25 Bonjour amour.mp3', 'WHAT THE CUT #25, WTC 25', 'https://www.youtube.com/embed/kqefNJ7qaOY'),
(65, 'La cigarette c\'est mal', '25 La cigarette cest mal.mp3', 'WHAT THE CUT #25, WTC 25', 'https://www.youtube.com/embed/kqefNJ7qaOY'),
(66, 'YOLO', 'RU YOLO.mp3', 'WHAT THE CUT - SPÉCIAL RUSSIE, WTC RUSSIE', 'https://www.youtube.com/embed/EcaRKNcxyRk'),
(67, 'Branlix 2000', 'RU Branlix 2000.mp3', 'WHAT THE CUT - SPÉCIAL RUSSIE, WTC RUSSIE', 'https://www.youtube.com/embed/EcaRKNcxyRk'),
(68, 'Bien évidemment !', '37 Bien évidemment !.mp3', 'WHAT THE CUT #37, WTC 37', 'https://www.youtube.com/embed/_ghgW_tSPAI'),
(69, 'C\'est beau la pétanque', '28 Cest beau la pétanque.mp3', 'WHAT THE CUT #28, WTC 28', 'https://www.youtube.com/embed/MEugteASSBw'),
(70, 'C\'est normal en Russie', 'RU Cest normal en Russie.mp3', 'WHAT THE CUT - SPÉCIAL RUSSIE, WTC RUSSIE', 'https://www.youtube.com/embed/EcaRKNcxyRk'),
(71, 'Les fruits et légumes', '21 Les fruits et légumes.mp3', 'WHAT THE CUT #21, WTC 21', 'https://www.youtube.com/embed/bBcfOMqL844'),
(72, 'Pour le travail', '24 Pour la travail.mp3', 'WHAT THE CUT #24, WTC 24', 'https://www.youtube.com/embed/fw3yDPBLVmY'),
(73, 'Concombre DANCE', '21 Cocombre Dance.mp3', 'WHAT THE CUT #21, WTC 21', 'https://www.youtube.com/embed/bBcfOMqL844'),
(74, 'Vu sur Internet = Vrai #1', '35 Tout ce qui est sur Internet est vrai 1.mp3', 'WHAT THE CUT #35, WTC 35', 'https://www.youtube.com/embed/IB7Cg6BAdo0'),
(75, 'Vu sur Internet = Vrai #2', '35 Tout ce qui est sur Internet est vrai 2.mp3', 'WHAT THE CUT #35, WTC 35', 'https://www.youtube.com/embed/IB7Cg6BAdo0'),
(76, 'Bob l\'éponge carré', '35 Bob léponge carée.mp3', 'WHAT THE CUT #35, WTC 35', 'https://www.youtube.com/embed/IB7Cg6BAdo0'),
(77, 'Sad Horn', '36 Sad Horn.mp3', 'WHAT THE CUT #36, WTC 36', 'https://www.youtube.com/embed/F23568GDskw'),
(78, 'Chanson Branlix 2000', 'RU Chanson Branlix 2000.mp3', 'WHAT THE CUT - SPÉCIAL RUSSIE, WTC RUSSIE', 'https://www.youtube.com/embed/EcaRKNcxyRk'),
(79, 'Intros WTC', 'Intros WTC.mp3', 'WHAT THE CUT, WTC', ''),
(80, 'Le conseil du laping', '34 Le conseil du laping.mp3', 'WHAT THE CUT #34, WTC 34', 'https://www.youtube.com/embed/JYVAGod7lxk'),
(81, 'LOTR en 10 secondes', 'LOTR en 10sec.mp3', 'WHAT THE CUT #35, WTC 35', 'https://www.youtube.com/embed/IB7Cg6BAdo0'),
(82, 'OLOLOLEILOLEI', 'OLOLOLELOLELOLAI 36.mp3', 'WHAT THE CUT #36, WTC 36', 'https://www.youtube.com/embed/F23568GDskw'),
(83, 'J\'adore Internet', '32 Jadore internet.mp3', 'WHAT THE CUT #32, WTC 32', 'https://www.youtube.com/embed/flBwfPNKNvE'),
(84, 'PEE-PEE Long', 'PEE-PEE LONG 34.mp3', 'WHAT THE CUT #34, WTC 34', 'https://www.youtube.com/embed/JYVAGod7lxk'),
(85, 'Je suis devenu un lapin', '34 Je suis devenu un lapin.mp3', 'WHAT THE CUT #34, WTC 34', 'https://www.youtube.com/embed/JYVAGod7lxk'),
(86, 'Mes orteils dans mon nez', 'Orteils dans nez.mp3', 'WHAT THE CUT, WTC', ''),
(87, 'Le sens de la vie', 'Le sens de la vie 32.mp3', 'WHAT THE CUT #32, WTC 32', 'https://www.youtube.com/embed/flBwfPNKNvE'),
(88, 'Frappe moi dans les ballz', 'Frappe moi dans les couilles 37.mp3', 'WHAT THE CUT #37, WTC 37', 'https://www.youtube.com/embed/_ghgW_tSPAI'),
(89, 'La surenchère', '37 La surenchère.mp3', 'WHAT THE CUT #37, WTC 37', 'https://www.youtube.com/embed/_ghgW_tSPAI'),
(90, 'Je vais boire ton urine', '22 Je vais boire ton urine.mp3', 'WHAT THE CUT #22, WTC 22', 'https://www.youtube.com/embed/EFhif72jZoA'),
(91, 'Baiser manger vomir', '17 Baiser manger vomir repeat.mp3', 'WHAT THE CUT #17, WTC 17', 'https://www.youtube.com/embed/jDWqyNjLd8Q'),
(92, 'Le roi Arthur', 'RU Le roi arthur.mp3', 'WHAT THE CUT - SPÉCIAL RUSSIE, WTC RUSSIE', 'https://www.youtube.com/embed/EcaRKNcxyRk'),
(93, 'Anus full sirop d\'érable', 'QUEB Anus full de sirop derable.mp3', 'WHAT THE CUT - SPÉCIAL QUÉBEC, WTC QUEBEC', 'https://www.youtube.com/embed/zJDoCPYybYY'),
(94, 'Détruire rêves + espoirs', '2 Detruire les reves et les espoirs.mp3', 'WHAT THE CUT #02, WTC 2', 'https://www.youtube.com/embed/QQhj1ckZwBQ'),
(95, 'Sodomie douloureuse', '18 Sodomie douloureuse.mp3', 'WHAT THE CUT #18, WTC 18', 'https://www.youtube.com/embed/UtvkKgH84vU'),
(96, 'Destruction d\'anus', '11 Destruction danus.mp3', 'WHAT THE CUT #11, WTC 11', 'https://www.youtube.com/embed/pYcWWPj6lvg'),
(97, 'Je t\'aime', '20 Je taime.mp3', 'WHAT THE CUT #20, WTC 20', ''),
(98, 'Vagin sauce tandori', 'Inde Vagin sauce tandori.mp3', 'WHAT THE CUT - SPÉCIAL INDE, WTC INDE', 'https://www.youtube.com/embed/EBe0qO116s0'),
(99, 'Fan #1 de Michel Drucker', '4 Fan N°1 de Michel Drucker.mp3', 'WHAT THE CUT #04, WTC 4', 'https://www.youtube.com/embed/P-iq9GiyXg0'),
(100, 'Penis sauce samourai', 'Penis sauce samourai 12.mp3', 'WHAT THE CUT #12, WTC 12', 'https://www.youtube.com/embed/fn3VpMxMHQs'),
(101, 'Vagin full nouilles', '8 Vagin nouilles.mp3', 'WHAT THE CUT #08, WTC 8', 'https://www.youtube.com/embed/md3gGDCj67c'),
(102, 'Pokémon de type bite', 'Pokémon de type bite 6.mp3', 'WHAT THE CUT #06, WTC 6', 'https://www.youtube.com/embed/1Cd9DLNfTdw'),
(103, 'Vagin engloutisseur', 'Vagin engloutisseur 21.mp3', 'WHAT THE CUT #21, WTC 21', 'https://www.youtube.com/embed/bBcfOMqL844'),
(104, 'Explication Congolexico', 'Explication Conglolex 25.mp3', 'WHAT THE CUT #25, WTC 25', 'https://www.youtube.com/embed/kqefNJ7qaOY'),
(105, 'La nucléarité des rollers', 'La nucléarité des rollers 25.mp3', 'WHAT THE CUT #25, WTC 25', 'https://www.youtube.com/embed/kqefNJ7qaOY'),
(106, 'Gâcher la nourriture ?!', 'pas bien gacher la nourriture.mp3', 'WHAT THE CUT #37, WTC 37', 'https://www.youtube.com/embed/_ghgW_tSPAI'),
(107, 'Humour jamais convaincant', 'humour jamais convaincant.mp3', 'WHAT THE CUT #37, WTC 37', 'https://www.youtube.com/embed/_ghgW_tSPAI'),
(108, 'Mon boulgour', 'Mon boulgour.mp3', 'WHAT THE CUT #37, WTC 37', 'https://www.youtube.com/embed/_ghgW_tSPAI'),
(109, 'WTC en 30 secondes', '21 WTC en 30 sec.mp3', 'WHAT THE CUT #21, WTC 21', 'https://www.youtube.com/embed/bBcfOMqL844'),
(110, '1 million de dollars', '15 1 Million de dollars.mp3', 'WHAT THE CUT #15, WTC 15', 'https://www.youtube.com/embed/DIIW1-VBLDY'),
(111, 'Le sexe c\'est trop bien', '35 Le sexe cest trop bien.mp3', 'WHAT THE CUT #35, WTC 35', 'https://www.youtube.com/embed/IB7Cg6BAdo0'),
(112, 'WOTAKEN', '35 WOTAKEN.mp3', 'WHAT THE CUT #35, WTC 35', 'https://www.youtube.com/embed/IB7Cg6BAdo0'),
(113, 'Michel Forever Tonight', '29 Michel Forever tonight.mp3', 'WHAT THE CUT #29, WTC 29', 'https://www.youtube.com/embed/TKHPRKd1qaY'),
(114, 'J’arrête tout', 'Jarrete tout.mp3', 'WHAT THE CUT #29, WTC 29', 'https://www.youtube.com/embed/TKHPRKd1qaY'),
(115, 'Pk met le feu a son slip', 'pourquoi il met le feu a son slip.mp3', 'WHAT THE CUT #29, WTC 29', 'https://www.youtube.com/embed/TKHPRKd1qaY'),
(116, 'Le feu au cul', 'le feu au cul.mp3', 'WHAT THE CUT #29, WTC 29', 'https://www.youtube.com/embed/TKHPRKd1qaY'),
(117, 'EDDY MALOU', 'Eddy Malou 25.mp3', 'WHAT THE CUT #25, WTC 25', 'https://www.youtube.com/embed/kqefNJ7qaOY'),
(118, 'Un piège ?!', 'Un piége.mp3', 'WHAT THE CUT #36, WTC 36', 'https://www.youtube.com/embed/F23568GDskw'),
(119, 'Ils veulent la guerre ?', 'Ils veulent la guerre.mp3', 'WHAT THE CUT #36, WTC 36', 'https://www.youtube.com/embed/F23568GDskw'),
(120, 'L\'homme écureuil du N.P', 'homme ecureuil du néant profond.mp3', 'WHAT THE CUT #36, WTC 36', 'https://www.youtube.com/embed/F23568GDskw'),
(121, 'Le lance patate long', 'Le lance patate long.mp3', 'WHAT THE CUT #36, WTC 36', 'https://www.youtube.com/embed/F23568GDskw'),
(122, 'Le lance patate', '36 Le lance patate court.mp3', 'WHAT THE CUT #36, WTC 36', 'https://www.youtube.com/embed/F23568GDskw'),
(123, 'Destruire mon vaginarium', 'détruire mon vaginarium.mp3', 'WHAT THE CUT #36, WTC 36', 'https://www.youtube.com/embed/F23568GDskw'),
(124, 'Casse moi tout lad dans', '36 Casse moi tout lad dans.mp3', 'WHAT THE CUT #36, WTC 36', 'https://www.youtube.com/embed/F23568GDskw'),
(125, 'Très triste comme le JV', 'Trés triste comme le JV.mp3', 'WHAT THE CUT #36, WTC 36', 'https://www.youtube.com/embed/F23568GDskw'),
(126, 'Fermer ta grosse gueule', 'fermer ta grosse gueule.mp3', 'WHAT THE CUT #36, WTC 36', 'https://www.youtube.com/embed/F23568GDskw'),
(127, 'Je croivai ke je pouvé le fer', 'Je croivais ke je pouvais le faire.mp3', 'WHAT THE CUT #36, WTC 36', 'https://www.youtube.com/embed/F23568GDskw'),
(128, 'Insolite n\'est-il pas ?', 'insolite nest-il pas.mp3', 'WHAT THE CUT #36, WTC 36', 'https://www.youtube.com/embed/F23568GDskw'),
(129, 'Homme + Pot d\'échapmt =&lt;3', 'lhomme qui mettais son sexe dans les pots dechappements.mp3', 'WHAT THE CUT #36, WTC 36', 'https://www.youtube.com/embed/F23568GDskw'),
(130, 'La vie est trop courte', 'la vie est trop courte.mp3', 'WHAT THE CUT #36, WTC 36', 'https://www.youtube.com/embed/F23568GDskw'),
(131, 'Absence d\'internet', '36 Absence dinternet.mp3', 'WHAT THE CUT #36, WTC 36', 'https://www.youtube.com/embed/F23568GDskw'),
(132, 'L\'art figuratif', 'Lart figurratif.mp3', 'WHAT THE CUT #36, WTC 36', 'https://www.youtube.com/embed/F23568GDskw'),
(133, 'Fédération FR de Luge', 'Communiqué Féd.Fr. de Luge.mp3', 'WHAT THE CUT #36, WTC 36', 'https://www.youtube.com/embed/F23568GDskw'),
(134, 'BITE BITE BITE long', 'BITE BITE BITE long.mp3', 'WHAT THE CUT #36, WTC 36', 'https://www.youtube.com/embed/F23568GDskw'),
(135, 'BITE BITE BITE', 'BITE BITE BITE court.mp3', 'WHAT THE CUT #36, WTC 36', 'https://www.youtube.com/embed/F23568GDskw'),
(136, 'PacificSound3003', 'PacificSound3003.mp3', 'WHAT THE CUT #36, WTC 36', 'https://www.youtube.com/embed/F23568GDskw'),
(137, 'Anus bien rempli', 'Anus bien rempli.mp3', 'WHAT THE CUT #36, WTC 36', 'https://www.youtube.com/embed/F23568GDskw'),
(138, 'On est les vitamines C', 'On est les vitamines C.mp3', 'WHAT THE CUT #36, WTC 36', 'https://www.youtube.com/embed/F23568GDskw'),
(139, 'Science Bitch', 'science bitch.mp3', 'WHAT THE CUT #36, WTC 36', 'https://www.youtube.com/embed/F23568GDskw'),
(140, 'Bienvenue dans garderie', 'bienvenue dans notre garderie.mp3', 'WHAT THE CUT #36, WTC 36', 'https://www.youtube.com/embed/F23568GDskw'),
(141, '1,2,3 t\'es une oie', '1,2,3, tes une oie.mp3', 'WHAT THE CUT #36, WTC 36', 'https://www.youtube.com/embed/F23568GDskw'),
(143, 'SAUCISSE', 'Saucisse.mp3', 'WHAT THE CUT #36, WTC 36', 'https://www.youtube.com/embed/F23568GDskw'),
(144, 'Silence de la Mastercard', 'le silence de la mastercard.mp3', 'WHAT THE CUT #36, WTC 36', 'https://www.youtube.com/embed/F23568GDskw'),
(145, 'NON', 'NOOOOOOOON.mp3', 'WHAT THE CUT #36, WTC 36', 'https://www.youtube.com/embed/F23568GDskw'),
(146, 'Keske vs aimer ds la vie', 'Ques ce que vous aimez faire dans la vie.mp3', 'WHAT THE CUT #36, WTC 36', 'https://www.youtube.com/embed/F23568GDskw'),
(147, 'Jean Damien raciste', 'jean damien raciste.mp3', 'WHAT THE CUT #37, WTC 37', 'https://www.youtube.com/embed/_ghgW_tSPAI'),
(148, 'Explication claire 2.0 ', 'Lexplication claire et précise revamped.mp3', 'WHAT THE CUT #37, WTC 37', 'https://www.youtube.com/embed/_ghgW_tSPAI'),
(149, 'Sylvain Durif Aliases', 'Sylvain Durif Aliiases.mp3', 'WHAT THE CUT #37, WTC 37', 'https://www.youtube.com/embed/_ghgW_tSPAI'),
(150, 'cesoirjevaisdurcir.gouv', 'www.cesoirjevaisdurcir.gouv.mp3', 'WHAT THE CUT #37, WTC 37', 'https://www.youtube.com/embed/_ghgW_tSPAI'),
(151, 'LOLELOLELOL', 'LOLELOLELOLELOLELELOL.mp3', 'WHAT THE CUT #37, WTC 37', 'https://www.youtube.com/embed/_ghgW_tSPAI'),
(152, 'BADASS', 'BADASS 34.mp3', 'WHAT THE CUT #34, WTC 34', 'https://www.youtube.com/embed/JYVAGod7lxk'),
(153, 'KS KS c\'est glacé', 'KS KS cest glacé 36.mp3', 'WHAT THE CUT #36, WTC 36', 'https://www.youtube.com/embed/F23568GDskw'),
(154, 'Brutal Anal 4', '33 Brutal Anal 4.mp3', 'WHAT THE CUT #33, WTC 33', 'https://www.youtube.com/embed/CjsPSeupj2w'),
(155, 'Films de propagande', '34 Films de propagande.mp3', 'WHAT THE CUT #34, WTC 34', 'https://www.youtube.com/embed/JYVAGod7lxk'),
(156, 'Le Néoréalisme Italien', '32 Le Néoréalisme Italien.mp3', 'WHAT THE CUT #32, WTC 32', 'https://www.youtube.com/embed/flBwfPNKNvE'),
(157, 'Antonios Danielos', '32 Antonios Danielos.mp3', 'WHAT THE CUT #32, WTC 32', 'https://www.youtube.com/embed/flBwfPNKNvE'),
(158, 'Usages d\'une pelle', '32 Usages de pelle.mp3', 'WHAT THE CUT #32, WTC 32', 'https://www.youtube.com/embed/flBwfPNKNvE'),
(159, 'Révélation de la pelle', '32 Révelation de la pelle.mp3', 'WHAT THE CUT #32, WTC 32', 'https://www.youtube.com/embed/flBwfPNKNvE'),
(160, 'Témoins de la Ste Pelle', '32 Témoins de la sainte pelle.mp3', 'WHAT THE CUT #32, WTC 32', 'https://www.youtube.com/embed/flBwfPNKNvE'),
(161, 'Je me sens seul ', '32 Je me sens seul mais moustache.mp3', 'WHAT THE CUT #32, WTC 32', 'https://www.youtube.com/embed/flBwfPNKNvE'),
(162, 'Patate vs Pelle', '32 Patate vs Pelle.mp3', 'WHAT THE CUT #32, WTC 32', 'https://www.youtube.com/embed/flBwfPNKNvE'),
(163, 'Punchline Périmée', '32 Punchline périmée.mp3', 'WHAT THE CUT #32, WTC 32', 'https://www.youtube.com/embed/flBwfPNKNvE'),
(164, 'Les sacs poubelle', '32 Les sacs poubelles.mp3', 'WHAT THE CUT #32, WTC 32', 'https://www.youtube.com/embed/flBwfPNKNvE'),
(165, 'Désanusseur de Malte', '32 Désanusseur de Malte.mp3', 'WHAT THE CUT #32, WTC 32', 'https://www.youtube.com/embed/flBwfPNKNvE'),
(166, 'Ce sont mes patates', '32 Ce sont mes patates.mp3', 'WHAT THE CUT #32, WTC 32', 'https://www.youtube.com/embed/flBwfPNKNvE'),
(167, 'Ma vie est une patate', '32 Ma vie est une patate.mp3', 'WHAT THE CUT #32, WTC 32', 'https://www.youtube.com/embed/flBwfPNKNvE'),
(168, 'J\'aime manger des patates', '32 Moi jaime bien manger des patates.mp3', 'WHAT THE CUT #32, WTC 32', 'https://www.youtube.com/embed/flBwfPNKNvE'),
(169, 'Départ des patates', '32 Départ des patates.mp3', 'WHAT THE CUT #32, WTC 32', 'https://www.youtube.com/embed/flBwfPNKNvE'),
(170, 'My life is potato', '32 My life is potato.mp3', 'WHAT THE CUT #32, WTC 32', 'https://www.youtube.com/embed/flBwfPNKNvE'),
(171, 'My life is potato LONG', '32 My life is potato LONG.mp3', 'WHAT THE CUT #32, WTC 32', 'https://www.youtube.com/embed/flBwfPNKNvE'),
(172, 'HARDCORE', '21 HARDCORE.mp3', 'WHAT THE CUT #21, WTC 21', 'https://www.youtube.com/embed/bBcfOMqL844'),
(173, 'Goûter mon concombre', '21 gouter son comcombre.mp3', 'WHAT THE CUT #21, WTC 21', 'https://www.youtube.com/embed/bBcfOMqL844'),
(174, 'Trop d\'éléments scénario', '35 Trop déléments scénaristiques.mp3', 'WHAT THE CUT #35, WTC 35', 'https://www.youtube.com/embed/IB7Cg6BAdo0'),
(175, 'Je chiale putain', '35 je chiale putain.mp3', 'WHAT THE CUT #35, WTC 35', 'https://www.youtube.com/embed/IB7Cg6BAdo0'),
(176, 'Suce moi', '35 suce moi.mp3', 'WHAT THE CUT #35, WTC 35', 'https://www.youtube.com/embed/IB7Cg6BAdo0'),
(177, 'Réponse à tout', '35 Reponse a tout.mp3', 'WHAT THE CUT #35, WTC 35', 'https://www.youtube.com/embed/IB7Cg6BAdo0'),
(178, 'Des larmes coulent', '35 des larmes coulent.mp3', 'WHAT THE CUT #35, WTC 35', 'https://www.youtube.com/embed/IB7Cg6BAdo0'),
(179, 'Bienvenue sur Internet', '35 Bienvenue sur Internet.mp3', 'WHAT THE CUT #35, WTC 35', 'https://www.youtube.com/embed/IB7Cg6BAdo0'),
(180, 'Tu cherches la merde ?', '35 tu cherches la merde.mp3', 'WHAT THE CUT #35, WTC 35', 'https://www.youtube.com/embed/IB7Cg6BAdo0'),
(181, 'Luntik', '35 Luntik.mp3', 'WHAT THE CUT #35, WTC 35', 'https://www.youtube.com/embed/IB7Cg6BAdo0'),
(182, 'J\'adore les enfants', '35 Jadore les enfants.mp3', 'WHAT THE CUT #35, WTC 35', 'https://www.youtube.com/embed/IB7Cg6BAdo0'),
(183, 'Les violoneux', 'QUEB Les violoneux.mp3', 'WHAT THE CUT - SPÉCIAL QUÉBEC, WTC QUEBEC', 'https://www.youtube.com/embed/zJDoCPYybYY'),
(184, 'Le flûtiste Richard', 'QUEB Le flutiste Richard.mp3', 'WHAT THE CUT - SPÉCIAL QUÉBEC, WTC QUEBEC', 'https://www.youtube.com/embed/zJDoCPYybYY'),
(185, 'Le violoneux Ronald', 'QUEB Le violoneux Ronald.mp3', 'WHAT THE CUT - SPÉCIAL QUÉBEC, WTC QUEBEC', 'https://www.youtube.com/embed/zJDoCPYybYY'),
(186, 'Pouliche liche moi ', 'QUEB Pouliche liche moi la babine.mp3', 'WHAT THE CUT - SPÉCIAL QUÉBEC, WTC QUEBEC', 'https://www.youtube.com/embed/zJDoCPYybYY'),
(187, 'Le Violongay', 'QUEB Le ViolonGay.mp3', 'WHAT THE CUT - SPÉCIAL QUÉBEC, WTC QUEBEC', 'https://www.youtube.com/embed/zJDoCPYybYY'),
(188, 'Excepté 1 fois au chalet', 'QUEb Excepté une fois au chalet.mp3', 'WHAT THE CUT - SPÉCIAL QUÉBEC, WTC QUEBEC', 'https://www.youtube.com/embed/zJDoCPYybYY'),
(189, 'Johnny Crying', 'QUEB Johnny Crying.mp3', 'WHAT THE CUT - SPÉCIAL QUÉBEC, WTC QUEBEC', 'https://www.youtube.com/embed/zJDoCPYybYY'),
(190, 'Intro Roi Heenok', 'QUEB Intro Roi Heenok.mp3', 'WHAT THE CUT - SPÉCIAL QUÉBEC, WTC QUEBEC', 'https://www.youtube.com/embed/zJDoCPYybYY'),
(191, 'Le Roi Heenok', 'QUEB Le Roi Heenok.mp3', 'WHAT THE CUT - SPÉCIAL QUÉBEC, WTC QUEBEC', 'https://www.youtube.com/embed/zJDoCPYybYY'),
(192, 'Vampirisme hurlant ', 'QUEB Vampirisme hurlant dans la nuit.mp3', 'WHAT THE CUT - SPÉCIAL QUÉBEC, WTC QUEBEC', 'https://www.youtube.com/embed/zJDoCPYybYY'),
(193, 'J\'te le jure', 'QUEB Jte le jure.mp3', 'WHAT THE CUT - SPÉCIAL QUÉBEC, WTC QUEBEC', 'https://www.youtube.com/embed/zJDoCPYybYY'),
(194, 'It\'s VENDREDI', 'QUEB Its Friday.mp3', 'WHAT THE CUT - SPÉCIAL QUÉBEC, WTC QUEBEC', 'https://www.youtube.com/embed/zJDoCPYybYY'),
(195, 'Meilleures blagues d\'A.D', 'RU Meilleures blagues AD.mp3', 'WHAT THE CUT - SPÉCIAL RUSSIE, WTC RUSSIE', 'https://www.youtube.com/embed/EcaRKNcxyRk'),
(196, 'La batte de baseball', 'RU La batte de baseball.mp3', 'WHAT THE CUT - SPÉCIAL RUSSIE, WTC RUSSIE', 'https://www.youtube.com/embed/EcaRKNcxyRk'),
(197, 'Professeur Pédoncule', '27 Professeur Pédoncule.mp3', 'WHAT THE CUT #27, WTC 27', 'https://www.youtube.com/embed/DyUyyQERqAA'),
(198, 'Absolument tout !', '27 Absolument tout.mp3', 'WHAT THE CUT #27, WTC 27', 'https://www.youtube.com/embed/DyUyyQERqAA'),
(199, 'As tu vu les quenouilles ', '27 As tu vu les quenouilles.mp3', 'WHAT THE CUT #27, WTC 27', 'https://www.youtube.com/embed/DyUyyQERqAA'),
(200, 'Les quenouilles', '27 Les Quenouilles.mp3', 'WHAT THE CUT #27, WTC 27', 'https://www.youtube.com/embed/DyUyyQERqAA'),
(201, 'Avec un berlingot de lait', 'QUEB Avec un berlingot de lait.mp3', 'WHAT THE CUT - SPÉCIAL QUÉBEC, WTC QUEBEC', 'https://www.youtube.com/embed/zJDoCPYybYY'),
(202, 'Sacerdoce', '37 Sacerdoce.mp3', 'WHAT THE CUT #37, WTC 37', 'https://www.youtube.com/embed/_ghgW_tSPAI'),
(203, 'Jumpcuts', '37 Jumpcuts.mp3', 'WHAT THE CUT #37, WTC 37', 'https://www.youtube.com/embed/_ghgW_tSPAI'),
(204, 'Mon nom à moi c\'est Guitare', '19 Guitare.mp3', 'WHAT THE CUT #19, WTC 19', 'https://www.youtube.com/embed/W7m8yDNNVo4'),
(205, 'PK j\'ai une érection ?!', '19 Pk erection.mp3', 'WHAT THE CUT #19, WTC 19', 'https://www.youtube.com/embed/W7m8yDNNVo4'),
(206, 'Dépuceler le tic-tac', '19 Dépuceler le tictac.mp3', 'WHAT THE CUT #19, WTC 19', 'https://www.youtube.com/embed/W7m8yDNNVo4'),
(207, 'L\'annonce de Gaëtan', '19 Annonce de Gaetan.mp3', 'WHAT THE CUT #19, WTC 19', 'https://www.youtube.com/embed/W7m8yDNNVo4'),
(208, 'Ma bite', '11 Ma bite.mp3', 'WHAT THE CUT #11, WTC 11', 'https://www.youtube.com/embed/pYcWWPj6lvg'),
(209, 'Alerte Pédophile 2 niv 11', '11 Alerte Pédophille de niveau 11.mp3', 'WHAT THE CUT #11, WTC 11', 'https://www.youtube.com/embed/pYcWWPj6lvg'),
(210, 'On se frottis frotta', '11 On se frotti on se frotta.mp3', 'WHAT THE CUT #11, WTC 11', 'https://www.youtube.com/embed/pYcWWPj6lvg'),
(211, 'Alerte zoophile 2 niv 12', '11 Alerte Zoophile de niveau 12.mp3', 'WHAT THE CUT #11, WTC 11', 'https://www.youtube.com/embed/pYcWWPj6lvg'),
(212, 'Je rencontre la jument', '11 Je rencontre la jument.mp3', 'WHAT THE CUT #11, WTC 11', 'https://www.youtube.com/embed/pYcWWPj6lvg'),
(213, 'Le roi des Maths', '11 13 ans + grand que 10 ans.mp3', 'WHAT THE CUT #11, WTC 11', 'https://www.youtube.com/embed/pYcWWPj6lvg'),
(214, 'Plus de 60 vierges', '11 Plus de 60 vierges.mp3', 'WHAT THE CUT #11, WTC 11', 'https://www.youtube.com/embed/pYcWWPj6lvg'),
(215, 'Pure soirée de folie IRL', '26 Pure soirée de folie IRL.mp3', 'WHAT THE CUT #26, WTC 26', 'https://www.youtube.com/embed/GGtQJnlbpwo'),
(216, 'Exil au Nicaragua', '26 Exil au Nicaragua.mp3', 'WHAT THE CUT #26, WTC 26', 'https://www.youtube.com/embed/GGtQJnlbpwo'),
(217, 'Elle lui suce la bite', '26 Elle lui suce la bite.mp3', 'WHAT THE CUT #26, WTC 26', 'https://www.youtube.com/embed/GGtQJnlbpwo'),
(218, 'Occupation TEC', '26 Occupation Transport En Commun.mp3', 'WHAT THE CUT #26, WTC 26', 'https://www.youtube.com/embed/GGtQJnlbpwo'),
(219, 'Quelconque', '36 Quelconque.mp3', 'WHAT THE CUT #36, WTC 36', 'https://www.youtube.com/embed/F23568GDskw'),
(220, 'Education sexuelle', '32 Education sexuelle.mp3', 'WHAT THE CUT #32, WTC 32', 'https://www.youtube.com/embed/flBwfPNKNvE'),
(221, 'Vieux pots = best soupes', '32 Vieux Pots = Meilleures soupes.mp3', 'WHAT THE CUT #32, WTC 32', 'https://www.youtube.com/embed/flBwfPNKNvE'),
(222, 'Manger le kiki', '10 Manger le kiki.mp3', 'WHAT THE CUT #10, WTC 10', 'https://www.youtube.com/embed/AyfOQG05G3Y'),
(223, 'Alex du 76', '15 Alex du 76.mp3', 'WHAT THE CUT #15, WTC 15', 'https://www.youtube.com/embed/DIIW1-VBLDY'),
(224, 'Lecture sur lèvres', '15 Lecture sur lévres.mp3', 'WHAT THE CUT #15, WTC 15', 'https://www.youtube.com/embed/DIIW1-VBLDY'),
(225, 'RIEN', '15 RIEN.mp3', 'WHAT THE CUT #15, WTC 15', 'https://www.youtube.com/embed/DIIW1-VBLDY'),
(226, 'Je voulais juste briller', '15 Je voulais juste briller.mp3', 'WHAT THE CUT #15, WTC 15', 'https://www.youtube.com/embed/DIIW1-VBLDY'),
(227, 'Pure soirée de folie FULL', '26 Pure soirée de folie FULL.mp3', 'WHAT THE CUT #26, WTC 26', 'https://www.youtube.com/embed/GGtQJnlbpwo'),
(228, 'Pure soirée de folie ', '26 Pure soirée de folie refrain.mp3', 'WHAT THE CUT #26, WTC 26', 'https://www.youtube.com/embed/GGtQJnlbpwo'),
(229, 'Luigi Paolo', '35 Luigi Paolo.mp3', 'WHAT THE CUT #35, WTC 35', 'https://www.youtube.com/embed/IB7Cg6BAdo0'),
(230, 'Merveilleuses', '35 Merveilleuses.mp3', 'WHAT THE CUT #35, WTC 35', 'https://www.youtube.com/embed/IB7Cg6BAdo0'),
(231, 'Qui est le violongay ?', 'QUEB Qui est le violongay.mp3', 'WHAT THE CUT - SPÉCIAL QUÉBEC, WTC QUEBEC', 'https://www.youtube.com/embed/zJDoCPYybYY'),
(232, 'Un fois au chalet A.D', 'QUEB Excepté une fois au chalet AD.mp3', 'WHAT THE CUT - SPÉCIAL QUÉBEC, WTC QUEBEC', 'https://www.youtube.com/embed/zJDoCPYybYY'),
(233, 'Infinte MAAAAAH', '21 Infinite Maaah.mp3', 'WHAT THE CUT #21, WTC 21', 'https://www.youtube.com/embed/bBcfOMqL844'),
(234, 'MAAAAH', '21 Maaah.mp3', 'WHAT THE CUT #21, WTC 21', 'https://www.youtube.com/embed/bBcfOMqL844'),
(235, 'Pitch scénaristique', '21 Pitch Scénaristique.mp3', 'WHAT THE CUT #21, WTC 21', 'https://www.youtube.com/embed/bBcfOMqL844'),
(236, 'Un dent contre lui', '33 Un dent vs lui.mp3', 'WHAT THE CUT #33, WTC 33', 'https://www.youtube.com/embed/CjsPSeupj2w'),
(237, 'Une grive rieuse', '33 Une grive rieuse.mp3', 'WHAT THE CUT #33, WTC 33', 'https://www.youtube.com/embed/CjsPSeupj2w'),
(238, 'La Finlande', '33 La Finlande.mp3', 'WHAT THE CUT #33, WTC 33', 'https://www.youtube.com/embed/CjsPSeupj2w'),
(239, 'PEE PEE', '34 PEE PEE.mp3', 'WHAT THE CUT #34, WTC 34', 'https://www.youtube.com/embed/JYVAGod7lxk'),
(240, 'Laisser + faire des trucs', '34 Ne me laissez plus jamais faire des trucs.mp3', 'WHAT THE CUT #34, WTC 34', 'https://www.youtube.com/embed/JYVAGod7lxk'),
(241, 'Ce que j\'aime les chevaux', '34 Amour des Chevaux.mp3', 'WHAT THE CUT #34, WTC 34', 'https://www.youtube.com/embed/JYVAGod7lxk'),
(242, 'Brandon étudiant US', 'Brandon Etudiant américain Japon 2.mp3', 'WHAT THE CUT - SPÉCIAL JAPON 2, WTC JAPON 2', 'https://www.youtube.com/embed/1cG1UigenvI'),
(243, 'RIP in peace', 'RIP in peace 37.mp3', 'WHAT THE CUT #37, WTC 37', 'https://www.youtube.com/embed/_ghgW_tSPAI'),
(244, 'Tellement de puissance', 'tellement_de_puissance 37.mp3', 'WHAT THE CUT #37, WTC 37', 'https://www.youtube.com/embed/_ghgW_tSPAI'),
(245, 'Pub Choco Ball', 'Pub Choco Ball Japon.mp3', 'WHAT THE CUT - SPÉCIAL JAPON, WTC JAPON', 'https://www.youtube.com/embed/HA7F4zB95y0'),
(246, 'Vomi dans la bouche', 'Vomi dans la bouche japon.mp3', 'WHAT THE CUT - SPÉCIAL JAPON, WTC JAPON', 'https://www.youtube.com/embed/HA7F4zB95y0'),
(247, 'Je me sens violé', 'je me sens violé japon.mp3', 'WHAT THE CUT - SPÉCIAL JAPON, WTC JAPON', 'https://www.youtube.com/embed/HA7F4zB95y0'),
(248, 'Sucer tes tampons usagés', 'sucer tes tampons usagés japon.mp3', 'WHAT THE CUT - SPÉCIAL JAPON, WTC JAPON', 'https://www.youtube.com/embed/HA7F4zB95y0'),
(249, 'Quésako qu\'un bukkake ?', 'Késako un Bukkake japon.mp3', 'WHAT THE CUT - SPÉCIAL JAPON, WTC JAPON', 'https://www.youtube.com/embed/HA7F4zB95y0'),
(250, 'Pique nique paintball', 'pique nique painball 37.mp3', 'WHAT THE CUT #37, WTC 37', 'https://www.youtube.com/embed/_ghgW_tSPAI'),
(251, 'J\'ai tombé ds l\'escalier', 'jai tombé dans lescalier japon 2.mp3', 'WHAT THE CUT - SPÉCIAL JAPON 2, WTC JAPON 2', 'https://www.youtube.com/embed/1cG1UigenvI'),
(252, 'Tartinage de wasabi', 'tartinage de wasabi japon 2.mp3', 'WHAT THE CUT - SPÉCIAL JAPON 2, WTC JAPON 2', 'https://www.youtube.com/embed/1cG1UigenvI'),
(253, 'Orgasme ou AVC ?', 'Orgasme ou AVC  japon 2.mp3', 'WHAT THE CUT - SPÉCIAL JAPON 2, WTC JAPON 2', 'https://www.youtube.com/embed/1cG1UigenvI'),
(254, 'Yatta Full', 'yatta full japon 2.mp3', 'WHAT THE CUT - SPÉCIAL JAPON 2, WTC JAPON 2', 'https://www.youtube.com/embed/1cG1UigenvI'),
(255, 'Yatta refrain', 'yatta refrain japon 2.mp3', 'WHAT THE CUT - SPÉCIAL JAPON 2, WTC JAPON 2', 'https://www.youtube.com/embed/1cG1UigenvI'),
(256, 'YOLO Japonais', 'yolo japon 2.mp3', 'WHAT THE CUT - SPÉCIAL JAPON 2, WTC JAPON 2', 'https://www.youtube.com/embed/1cG1UigenvI'),
(257, 'Yoddle Japonais', 'yoddle suisse par un jap deguisé en allemand japon 2.mp3', 'WHAT THE CUT - SPÉCIAL JAPON 2, WTC JAPON 2', 'https://www.youtube.com/embed/1cG1UigenvI'),
(258, 'Yoddle court', 'court yoddle suisse par un jap deguisé en allemand japon 2.mp3', 'WHAT THE CUT - SPÉCIAL JAPON 2, WTC JAPON 2', 'https://www.youtube.com/embed/1cG1UigenvI'),
(259, 'Masturber dans ta bouche', 'masturber dans ta bouche japon 2.mp3', 'WHAT THE CUT - SPÉCIAL JAPON 2, WTC JAPON 2', 'https://www.youtube.com/embed/1cG1UigenvI'),
(260, 'Pourquoi un japonais ', 'pk jap chante bavarois yoddle suisse japon 2.mp3', 'WHAT THE CUT - SPÉCIAL JAPON 2, WTC JAPON 2', 'https://www.youtube.com/embed/1cG1UigenvI'),
(261, 'Le japon est orange', 'le japon est orange japon 2.mp3', 'WHAT THE CUT - SPÉCIAL JAPON 2, WTC JAPON 2', 'https://www.youtube.com/embed/1cG1UigenvI'),
(262, 'Aucun sushis', 'Aucun sushis japon 2.mp3', 'WHAT THE CUT - SPÉCIAL JAPON 2, WTC JAPON 2', 'https://www.youtube.com/embed/1cG1UigenvI'),
(263, 'Va bien te faire A.D', 'Va bien te faire A.D japon 2.mp3', 'WHAT THE CUT - SPÉCIAL JAPON 2, WTC JAPON 2', 'https://www.youtube.com/embed/1cG1UigenvI'),
(264, 'Cette émission = + a moi', 'cette emission ne mappartient plus japon 2.mp3', 'WHAT THE CUT - SPÉCIAL JAPON 2, WTC JAPON 2', 'https://www.youtube.com/embed/1cG1UigenvI'),
(265, 'Le mec qui un jour s\'est dit', 'le mec qui un jour cest dit japon 2.mp3', 'WHAT THE CUT - SPÉCIAL JAPON 2, WTC JAPON 2', 'https://www.youtube.com/embed/1cG1UigenvI'),
(266, 'INTERNEEEEEEEEEEEET', 'INTERNEEEEEEEET japon 2.mp3', 'WHAT THE CUT - SPÉCIAL JAPON 2, WTC JAPON 2', 'https://www.youtube.com/embed/1cG1UigenvI'),
(267, 'Pq la vie ? Pq la mort ?', 'Pourquoi la vie pk la mort japon 2.mp3', 'WHAT THE CUT - SPÉCIAL JAPON 2, WTC JAPON 2', 'https://www.youtube.com/embed/1cG1UigenvI'),
(268, 'Parce que le Japon !', 'Parce que le japon ! japon 2.mp3', 'WHAT THE CUT - SPÉCIAL JAPON 2, WTC JAPON 2', 'https://www.youtube.com/embed/1cG1UigenvI'),
(269, 'Bad case of diarrhea', 'i have a bad case of diahrea japon 2.mp3', 'WHAT THE CUT - SPÉCIAL JAPON 2, WTC JAPON 2', 'https://www.youtube.com/embed/1cG1UigenvI'),
(270, 'Bad case of diarrhea song', 'i have a bad case of diahrea song japon 2.mp3', 'WHAT THE CUT - SPÉCIAL JAPON 2, WTC JAPON 2', 'https://www.youtube.com/embed/1cG1UigenvI');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `inconnus`
--
ALTER TABLE `inconnus`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `Nom` (`Nom`),
  ADD KEY `Son` (`Son`),
  ADD KEY `keywords` (`keywords`(1000)),
  ADD KEY `source` (`source`(1000));

--
-- Index pour la table `jday`
--
ALTER TABLE `jday`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `Nom` (`Nom`),
  ADD KEY `Son` (`Son`),
  ADD KEY `keywords` (`keywords`(1000)),
  ADD KEY `source` (`source`(1000));

--
-- Index pour la table `keywrds`
--
ALTER TABLE `keywrds`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `Nom` (`Nom`),
  ADD KEY `Appartenance` (`Appartenance`);

--
-- Index pour la table `mv`
--
ALTER TABLE `mv`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `Son` (`Son`),
  ADD KEY `Nom` (`Nom`) USING BTREE,
  ADD KEY `keywords` (`keywords`(1000)),
  ADD KEY `source` (`source`(1000));

--
-- Index pour la table `soundfr`
--
ALTER TABLE `soundfr`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `Son` (`Son`),
  ADD KEY `Nom` (`Nom`) USING BTREE,
  ADD KEY `keywords` (`keywords`(1000)),
  ADD KEY `source` (`source`(1000));

--
-- Index pour la table `soundw`
--
ALTER TABLE `soundw`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `Nom` (`Nom`),
  ADD KEY `Son` (`Son`),
  ADD KEY `keywords` (`keywords`(1000)),
  ADD KEY `source` (`source`(1000));

--
-- Index pour la table `wtc`
--
ALTER TABLE `wtc`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `Nom` (`Nom`),
  ADD KEY `Son` (`Son`),
  ADD KEY `keywords` (`keywords`(1000)),
  ADD KEY `source` (`source`(1000));

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `inconnus`
--
ALTER TABLE `inconnus`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT pour la table `jday`
--
ALTER TABLE `jday`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT pour la table `keywrds`
--
ALTER TABLE `keywrds`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=137;

--
-- AUTO_INCREMENT pour la table `mv`
--
ALTER TABLE `mv`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT pour la table `soundfr`
--
ALTER TABLE `soundfr`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=342;

--
-- AUTO_INCREMENT pour la table `soundw`
--
ALTER TABLE `soundw`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;

--
-- AUTO_INCREMENT pour la table `wtc`
--
ALTER TABLE `wtc`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=271;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
