-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : ven. 02 avr. 2021 à 15:03
-- Version du serveur :  10.3.16-MariaDB
-- Version de PHP : 7.3.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `id15602210_sbp`
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
(7, 'Vous pouvez répéter la question ?', 'pouvez repeter la question.mp3', 'Télémagouilles', 'https://www.youtube.com/embed/BDaUNr3unU0?start=352'),
(8, 'Miou-Miou', 'Miou-Miou.mp3', 'Télémagouilles', 'https://www.youtube.com/embed/BDaUNr3unU0?start=572'),
(9, 'Gagner le golo', 'gagner le golo.mp3', 'Télémagouilles', 'https://www.youtube.com/embed/BDaUNr3unU0?start=352'),
(10, 'L\'urgence non urgente', 'lurgence.mp3', 'Hôpital', 'https://www.youtube.com/embed/RFLxu5_m3r8?start=42'),
(11, 'J\'ai beau être matinal', 'jai beau etre matinal.mp3', 'Youpi Matin', 'https://www.youtube.com/embed/YYnNnhA9AQY?start=227'),
(12, 'Bon et mauvais chasseur', 'le bon et le mauvais chasseur.mp3', 'Les chasseurs', 'https://www.youtube.com/embed/QuGcoOJKXT8?start=179'),
(13, 'Brocouille', 'Brocouille.mp3', 'Les chasseurs', 'https://www.youtube.com/embed/QuGcoOJKXT8?start=110'),
(14, 'Insultes', 'Une famille en plomb - Insultes.mp3', 'Un famille en plomb', 'https://www.youtube.com/embed/NtLnbWuMlp0?start=473'),
(15, 'Rien à foutre', 'Une famille en plomb - Rien a foutre.mp3', 'Un famille en plomb', 'https://www.youtube.com/embed/NtLnbWuMlp0?start=538'),
(16, 'Des casseroles', 'Une famille en plomb -  Des casseroles.mp3', 'Un famille en plomb', 'https://www.youtube.com/embed/NtLnbWuMlp0?start=137'),
(17, 'On ouvre et c\'est froid', 'Une famille en plomb -  On ouvre et cest froid.mp3', 'Un famille en plomb', 'https://www.youtube.com/embed/NtLnbWuMlp0?start=158'),
(18, 'Les coucougnous', 'Une famille en plomb -  Les coucougnous.mp3', 'Un famille en plomb', 'https://www.youtube.com/embed/NtLnbWuMlp0?start=333'),
(19, 'Rap-tout - Refrain', 'Rap-tout.mp3', 'Rap-tout', 'https://www.youtube.com/embed/fy5ewMwLvMc?start=92'),
(20, 'Salle inondée', 'Fort Boyaux - Salle inondée.mp3', 'Fort Boyaux', 'https://www.youtube.com/embed/pGQ_vwobVF0?start=84'),
(21, 'Cri de guerre', 'Fort Boyaux - Cri de guerre.mp3', 'Fort Boyaux', 'https://www.youtube.com/embed/pGQ_vwobVF0?start=91'),
(22, 'Enfoiré', 'Fort Boyaux - Enfoiré.mp3', 'Fort Boyaux', 'https://www.youtube.com/embed/pGQ_vwobVF0?start=393'),
(23, 'Énigme Père Fouras', 'Fort Boyaux - Enigme Père Fouras.mp3', 'Fort Boyaux', 'https://www.youtube.com/embed/pGQ_vwobVF0?start=293'),
(24, 'Manu tu descends ?', 'La ZUP - Manu tu descends.mp3', 'La ZUP', 'https://www.youtube.com/embed/uHdKki05MX4?start=98'),
(25, 'Si tu descends j\'te descends', 'La ZUP - Si tu descends je te descends.mp3', 'La ZUP', 'https://www.youtube.com/embed/uHdKki05MX4?start=160'),
(26, 'Le Pahatois', 'La ZUP - Le Pahatois.mp3', 'La ZUP', 'https://www.youtube.com/embed/uHdKki05MX4?start=309'),
(27, 'Les gardiens de la paix', 'Le Commissariat de police - Les gardiens de la paix.mp3', 'Le Commissariat de police', 'https://www.youtube.com/embed/mo2O1desNHA?start=17'),
(28, 'À fortiori', 'Commissariat - à Fortiori.mp3', 'Le Commissariat de police', 'https://www.youtube.com/embed/mo2O1desNHA?start=38'),
(29, 'Vice et versa', 'Vice et versa.mp3', 'Vice et versa', 'https://www.youtube.com/embed/ZTeqM5gciH8'),
(30, 'Vice et versa - Refrain', 'Vice et versa - Refrain.mp3', 'Vice et versa', 'https://www.youtube.com/embed/ZTeqM5gciH8?start=35'),
(31, 'L\'alcôve multicolore', 'Vice et versa - Lalcôve multicolor.mp3', 'Vice et versa', 'https://www.youtube.com/embed/ZTeqM5gciH8?start=143'),
(32, 'Cautionner l\'irréalité', 'Vice et versa - Cautionner lirréalité.mp3', 'Vice et versa', 'https://www.youtube.com/embed/ZTeqM5gciH8?start=173'),
(33, 'F bonne maman', 'Une famille en plomb - F bonne maman.mp3', 'Un famille en plomb', 'https://www.youtube.com/embed/NtLnbWuMlp0?start=72'),
(34, 'Le roi Henri  XVI', 'La révolution - le roi Henri XVI.mp3', 'La révolution', 'https://www.youtube.com/embed/pibSbfAPE-g?start=68'),
(35, 'Le roi et le peuple', 'La révolution - le roi et le peuple.mp3', 'La révolution', 'https://www.youtube.com/embed/pibSbfAPE-g?start=85'),
(36, 'Difficile d\'être le roi', 'La révolution - quil est difficile detre le roi de la france.mp3', 'La révolution', 'https://www.youtube.com/embed/pibSbfAPE-g?start=179'),
(37, 'Il a la fève', 'La révolution - il a la fève.mp3', 'La révolution', 'https://www.youtube.com/embed/pibSbfAPE-g?start=225'),
(38, 'La faim du peuple et son régime', 'La révolution - la faim du peuple et son régime.mp3', 'La révolution', 'https://www.youtube.com/embed/pibSbfAPE-g?start=247'),
(39, 'Mac Gyver émigre à Varennes', 'La révolution - Mac Gyver émigre à Varennes.mp3', 'La révolution', 'https://www.youtube.com/embed/pibSbfAPE-g?start=395'),
(40, 'Eh le schtroumpf ici !', 'La révolution - Eh le schtroumpf ici.mp3', 'La révolution', 'https://www.youtube.com/embed/pibSbfAPE-g?start=492'),
(41, 'La guillotine', 'La révolution - La guillotine.mp3', 'La révolution', 'https://www.youtube.com/embed/pibSbfAPE-g?start=516'),
(42, 'Louis Croix V Baton', 'La révolution - Louis Croix V Baton.mp3', 'La révolution', 'https://www.youtube.com/embed/pibSbfAPE-g?start=256'),
(43, 'Méditation Richenou', 'Les sectes - Méditation Richenou.mp3', 'Les sectes', 'https://www.youtube.com/embed/dOJwGl3yLMU?start=168'),
(44, 'Skippy et les soucis', 'Les sectes - Skippy et les soucis.mp3', 'Les sectes', 'https://www.youtube.com/embed/dOJwGl3yLMU?start=41'),
(45, 'Totale liberté de pensée cosmique', 'Les sectes - Totale liberté de pensée.mp3', 'Les sectes', 'https://www.youtube.com/embed/dOJwGl3yLMU?start=41'),
(46, 'Cela ne nous regarde pas', 'Athlétisme - Cela ne nous regarde pas.mp3', 'Athlétisme', 'https://www.youtube.com/embed/MyNoWkXCEA8?start=267'),
(47, 'L\'hernie testiculaire', 'Athlétisme - Hernie testiculaire.mp3', 'Athlétisme', 'https://www.youtube.com/embed/MyNoWkXCEA8?start=264'),
(48, 'La vie sexuelle de JC', 'Athlétisme - La vie sexuelle de JC.mp3', 'Athlétisme', 'https://www.youtube.com/embed/MyNoWkXCEA8?start=462'),
(49, 'Le panache à la française', 'Athlétisme - Le panache à la française.mp3', 'Athlétisme', 'https://www.youtube.com/embed/MyNoWkXCEA8?start=559'),
(50, 'C\'est toi que je t\'aime', 'Cest toi que je taime.mp3', 'C\'est toi que je t\'aime', 'https://www.youtube.com/embed/DPnk1H1m7Cs?start=126'),
(51, 'Le suicide forcé', 'Le jeu de la vérité vraie - Le suicide forcé.mp3', 'Le jeu de la vérité vraie', 'https://www.youtube.com/embed/6d27K-nxi48?start=163'),
(52, 'Responsable mais pas coupable', 'Le jeu de la vérité vraie - Responsable mais pas coupable.mp3', 'Le jeu de la vérité vraie', 'https://www.youtube.com/embed/6d27K-nxi48?start=202'),
(53, 'C\'est ton destin', 'Cest ton destin.mp3', 'C\'est ton destin', 'https://www.youtube.com/embed/1V0IE87waHU'),
(54, 'Dans le RER', 'Cest ton destin - Dans le RER.mp3', 'C\'est ton destin', 'https://www.youtube.com/embed/1V0IE87waHU?start=5'),
(55, 'Pas de soumission à ta vouloir', 'Cest ton destin - pas de soumission a ta vouloir.mp3', 'C\'est ton destin', 'https://www.youtube.com/embed/1V0IE87waHU?start=24'),
(56, 'Eh manu tu descends ?', 'Cest ton destin - Eh manu.mp3', 'C\'est ton destin', 'https://www.youtube.com/embed/1V0IE87waHU?start=58'),
(57, 'C\'est ton destin - Refrain', 'Cest ton destin - refrain.mp3', 'C\'est ton destin', 'https://www.youtube.com/embed/1V0IE87waHU?start=11'),
(58, 'Rien à dire de plus', 'Cest ton destin - Rien a dire de plus.mp3', 'C\'est ton destin', 'https://www.youtube.com/embed/1V0IE87waHU?start=78'),
(59, 'Biouman - Intro', 'Biouman - Intro.mp3', 'Biouman', 'https://www.youtube.com/embed/-WoQsLZmynY'),
(60, 'La gentille et le méchant', 'Biouman - La gentille et le méchant.mp3', 'Biouman', 'https://www.youtube.com/embed/-WoQsLZmynY?start=63'),
(61, 'Oh mais que ce passe t-il ?', 'Biouman - Oh mais que se passe til.mp3', 'Biouman', 'https://www.youtube.com/embed/-WoQsLZmynY?start=77'),
(62, 'Un méchant ?!', 'Biouman - Un mechant.mp3', 'Biouman', 'https://www.youtube.com/embed/-WoQsLZmynY?start=90'),
(63, 'Je suis le méchant', 'Biouman - Je suis le mechant.mp3', 'Biouman', 'https://www.youtube.com/embed/-WoQsLZmynY?start=109'),
(64, 'Parce que t\'es une gentille', 'Biouman - Parce que tes une gentille.mp3', 'Biouman', 'https://www.youtube.com/embed/-WoQsLZmynY?start=114'),
(65, 'Tiens prends ça dans ta gl', 'Biouman - tiens prends ca.mp3', 'Biouman', 'https://www.youtube.com/embed/-WoQsLZmynY?start=187'),
(66, 'Le Bio de PQ', 'Biouman - Besoin de Bio de PQ.mp3', 'Biouman', 'https://www.youtube.com/embed/-WoQsLZmynY?start=208'),
(67, 'On aime pas les méchants', 'Biouman - On aime pas les mechants.mp3', 'Biouman', 'https://www.youtube.com/embed/-WoQsLZmynY?start=270'),
(68, '100 % sauveur', '100 pour 100 sauveur.mp3', 'Jésus II le retour', 'https://www.youtube.com/embed/-xSORIDw1Sg?start=123'),
(69, 'Maintenant ça va chier', 'Maintenant ca va chier.mp3', 'Jésus II le retour', 'https://www.youtube.com/embed/-xSORIDw1Sg?start=212'),
(70, 'Pilate Ponce Pilate', 'Ponce pilate.mp3', 'Jésus II le retour', 'https://www.youtube.com/embed/-xSORIDw1Sg?start=178'),
(71, 'Pour sauver sa peau il doit mourir', 'Pour sauver sa peau il doit mourrir.mp3', 'Jésus II le retour', 'https://www.youtube.com/embed/-xSORIDw1Sg?start=169'),
(72, 'Vous allez tous vous aimez ', 'vous allez vous aimer bordel.mp3', 'Jésus II le retour', 'https://www.youtube.com/embed/-xSORIDw1Sg?start=107'),
(73, 'Gwendoline a les yeux verts', 'Gwendoline à les yeux verts.mp3', 'Isabelle a les yeux bleus', 'https://www.youtube.com/embed/kKAI6gp7jIc?start=202'),
(74, 'Isabelle - Refrain', 'Isabelle a les yeux bleus - refrain.mp3', 'Isabelle a les yeux bleus', 'https://www.youtube.com/embed/kKAI6gp7jIc?start=6'),
(75, 'On privilégie surtout les paroles', 'On privilégie surtout les paroles.mp3', 'Isabelle a les yeux bleus', 'https://www.youtube.com/embed/kKAI6gp7jIc?start=100'),
(76, 'Isabelle a les yeux bleus', 'Les Inconnus Isabelle a les yeux bleus.mp3', 'Isabelle a les yeux bleus', 'https://www.youtube.com/embed/xGQSPnvSlHE'),
(77, 'Alain de loin', 'Alain de loin.mp3', 'Tournez ménages', 'https://www.youtube.com/embed/-wF6n9t5LxQ?start=274'),
(78, 'Ingrid es-ce que tu baises ?', 'Ingrid esce que tu baises.mp3', 'Tournez ménages', 'https://www.youtube.com/embed/-wF6n9t5LxQ?start=73'),
(79, 'Je m\'en vais comme un prince', 'je men vais comme un prince.mp3', 'Tournez ménages', 'https://www.youtube.com/embed/-wF6n9t5LxQ?start=346'),
(80, 'Voyage en polygamie française', 'Voyage en polygamie francaise.mp3', 'Télémagouilles', 'https://www.youtube.com/embed/-wF6n9t5LxQ?start=200'),
(81, 'Soudain quand elle est partie', 'Soudain quand elle est partie.mp3', 'Isabelle a les yeux bleus', 'https://www.youtube.com/embed/kKAI6gp7jIc?start=17'),
(82, 'Le saxophone', 'la set (peinture sculpture) le saxophone.mp3', 'La set (peinture - sculpture)', 'https://www.youtube.com/embed/1yKay8HDjPU?start=261'),
(83, 'Le père Ducrasse', 'Le pere ducrasse.mp3', 'Le père Ducrasse ', 'https://www.youtube.com/embed/dIy1Jma43WI'),
(84, 'Je vais vous bouffer tout cru', 'savon camux - je vais vous bouffer tout cru.mp3', 'Savon Camux', 'https://www.youtube.com/embed/-tcJKk9Xb_o?start=85'),
(85, 'Un chagrin d\'amour', 'Les Inconnus - Un chagrin damour.mp3', 'Un chagrin d\'amour', 'https://www.youtube.com/embed/z-sXHFzcdiI'),
(86, 'À l’hôpital Velpeau ?', 'hopital velpeau.mp3', 'Maîtresses et patients', 'https://www.youtube.com/embed/_dLzh-DFu4s?start=201'),
(87, 'Juliette Godemiche', 'linsupportable.mp3', 'Les escarres', 'https://www.youtube.com/embed/tqdk0k_U8Zg?start=143'),
(88, 'Peux-tu seulement le comprendre ?', 'peux tu seulement le comprendre.mp3', 'Les escarres', 'https://www.youtube.com/embed/tqdk0k_U8Zg?start=168'),
(89, 'Edith Piaf est morte ?!', 'edith piaf est morte.mp3', 'Les commerces', 'https://www.youtube.com/embed/TpNYDEd5dx8?start=225'),
(90, 'Ça te barbera - Intro', 'ca te barbera intro.mp3', 'Ça te barbera', 'https://www.youtube.com/embed/t1_zaPfw-Wc'),
(91, 'Agir autrement que tel que je l\'ai fait ?', 'Ca te barbera Esce que tu me comprends.mp3', 'Ça te barbera', 'https://www.youtube.com/embed/t1_zaPfw-Wc?start=44'),
(92, 'Tu as des soucis ?', 'Ca te barbera tu as des soucis.mp3', 'Ça te barbera', 'https://www.youtube.com/embed/t1_zaPfw-Wc?start=177'),
(93, 'Casser les couilles', 'florent brunel casser les couilles.mp3', 'Florent Brunel', 'https://www.youtube.com/embed/MFXEajm-a-E?start=55'),
(94, 'Vous les politiciens', 'florent brunel vous les politiciens.mp3', 'Florent Brunel', 'https://www.youtube.com/embed/MFXEajm-a-E?start=61'),
(95, 'Salut Charlie !', 'hamburger family salut charlie.mp3', 'Hamburger Family', 'https://www.youtube.com/embed/7yeC18AljL0?start=78'),
(96, 'Jean-Pierre François', 'Les Inconnus - Jean-Pierre François.mp3', 'Jean-Pierre François', 'https://www.youtube.com/embed/O-Ad4bx579c?start=21');

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
(136, 'Samy Naceri', 'FR'),
(137, 'Da Foncesca', 'FR'),
(138, 'La kette', 'FR'),
(139, 'Un famille en plomb', 'INCONNUS'),
(140, 'Rap-tout', 'INCONNUS'),
(141, 'Fort Boyaux', 'INCONNUS'),
(142, 'La ZUP', 'INCONNUS'),
(143, 'Le Commissariat de police', 'INCONNUS'),
(144, 'Vice et versa', 'INCONNUS'),
(145, 'La révolution', 'INCONNUS'),
(146, 'Chef Dumas', 'FR'),
(147, 'Les sectes', 'INCONNUS'),
(148, 'Athlétisme', 'INCONNUS'),
(149, 'C\'est toi que je t\'aime', 'INCONNUS'),
(150, 'Le jeu de la vérité vraie', 'INCONNUS'),
(151, 'C\'est ton destin', 'INCONNUS'),
(152, 'Biouman', 'INCONNUS'),
(153, 'Bande organisée', 'FR'),
(154, 'Jésus II le retour', 'INCONNUS'),
(155, 'Isabelle a les yeux bleus', 'INCONNUS'),
(156, 'Tournez ménages', 'INCONNUS'),
(157, 'La set (peinture - sculpture)', 'INCONNUS'),
(158, 'Le père Ducrasse ', 'INCONNUS'),
(159, 'Savon Camux', 'INCONNUS'),
(160, 'Un chagrin d\'amour', 'INCONNUS'),
(161, 'Maîtresses et patients', 'INCONNUS'),
(162, 'Les escarres', 'INCONNUS'),
(163, 'Les commerces', 'INCONNUS'),
(164, '4 mariages pour 1 lune de miel', 'FR'),
(165, 'Ça te barbera', 'INCONNUS'),
(166, 'Florent Brunel', 'INCONNUS'),
(167, 'Hamburger Family', 'INCONNUS'),
(168, 'Jean-Pierre François', 'INCONNUS'),
(169, 'WHAT THE CUT #30', 'WTC'),
(170, 'All star, Shrek, Smash Mouth', 'WORLD'),
(171, 'Omae wa mou shindeiru, Nani', 'WORLD'),
(172, 'Bref', 'FR'),
(173, 'Norman Genius', 'FR'),
(174, 'Julien Beats ', 'FR'),
(175, 'Sabattier, BRUMA', 'FR'),
(176, 'Sabattier', 'FR'),
(177, 'Le maillon faible', 'FR'),
(178, 'Ils l\'ont tous embrassée', 'FR'),
(179, 'complotiste', 'FR');

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
(22, 'J\'adore le Zboub ', 'Jadore Le Zboub.mp3', 'Mister MV', 'https://www.youtube.com/embed/2MnmEnOi27U'),
(23, 'Le Zboub refrain', 'Jadore le zboub refrain.mp3', 'Mister MV', 'https://www.youtube.com/embed/2MnmEnOi27U'),
(24, 'Et j\'adore le Zboub ', 'Jadore le zboub court.mp3', 'Mister MV', 'https://www.youtube.com/embed/2MnmEnOi27U'),
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
(7, 'Ta gueule', 'ta gueule fanta.mp3', 'Fanta', 'https://www.youtube.com/embed/CQZtyO0Usxw'),
(8, 'Ouais mais c\'est pas toi qui décides', 'Fanta - Ouai mais cest pas toi qui décide.mp3', 'Fanta', 'https://www.youtube.com/embed/ooWd8vV2dCs'),
(9, 'Taisez vous !', 'Finkielkraut - taisez-vous.mp3', 'Finkelkraut', 'https://www.youtube.com/embed/9TKC27K8cIo'),
(10, 'J\'ai un background', 'Jai une histoire, jai un background - DJ SNAKE.mp3', 'DJ Snake', 'https://www.youtube.com/embed/NLnKeM6sGj0'),
(11, 'Sard - Mais c\'était sûr en fait', 'Sardoche - MAIS VOILA MAIS CÉTAIT SÛR EN FAIT.mp3', 'Sardoche', 'https://www.youtube.com/embed/zexeTY3347Y?start=6'),
(12, 'Encore ! Ça fait bcp la non ?', 'Encore, Ca fait beaucoup la non! Mister V.mp3', 'Mister V', 'https://www.youtube.com/embed/6elK8VI1rPs'),
(13, 'Enorme', 'Enorme - Jamy (cest pas sorcier).mp3', 'Jamy', 'https://www.youtube.com/embed/biJq3CSBQ4s'),
(14, 'Ecole vétérinaire Maisons-Alfort', 'Je suis à lécole vétérinaire de Maison-Alfort, et je vais apprendre à masturber un chien .mp3', 'Maisons-Alfort', 'https://www.youtube.com/embed/vBqmxDKZRTg'),
(15, 'Mon sperme ne t\'a pas suffit', 'MON SPERME NE TA PAS SUFFIT.mp3', 'Mon sperme ', 'https://www.youtube.com/embed/Yazl_Ja9RVA?start=2'),
(16, 'Oulala l\'enchainement', 'oulala lenchainement !.mp3', 'Bob Sinclair', 'https://www.youtube.com/embed/ahZvE8eaaAw?start=8'),
(17, 'BRICOLE Refrain', 'BRICOLE Refrain.mp3', 'Bricole', 'https://www.youtube.com/embed/UClipdS0WV8?start=28'),
(18, 'Bricole Pistolet', 'Pistolet à colle.mp3', 'Bricole', 'https://www.youtube.com/embed/UClipdS0WV8?start=43'),
(19, 'La rafale - checker moi ça', 'Checker moi ça.mp3', 'La rafale', 'https://www.youtube.com/embed/k_kKz9VcVfQ?start=15'),
(20, 'La rafale', 'la rafale.mp3', 'La rafale', 'https://www.youtube.com/embed/k_kKz9VcVfQ?start=15'),
(21, 'La rafale full', 'Checker moi ça la rafale.mp3', 'La rafale', 'https://www.youtube.com/embed/k_kKz9VcVfQ?start=15'),
(22, 'Maité - Boeuf Bourguignon', 'boeuf bourguignon.mp3', 'Maité, boeuf bourgignon', 'https://www.youtube.com/embed/eT5tsFA6pCg?start=3'),
(23, 'Maité - Carottes Fondantes', 'carottes fondantes.mp3', 'Maité, boeuf bourgignon', 'https://www.youtube.com/embed/eT5tsFA6pCg?start=9'),
(24, 'Péage - Ah ça mère', 'ah-sa-mere.mp3', 'Ah sa mére, taper le péage, comme un balle', 'https://www.youtube.com/embed/QoD10UOA5bE?start=25'),
(25, 'Péage - Taper le péage', 'ah sa mere taper péage.mp3', 'Ah sa mére, taper le péage, comme un balle', 'https://www.youtube.com/embed/QoD10UOA5bE?start=29'),
(26, 'Péage - comme une balle', 'comme une balle.mp3', 'Ah sa mére, taper le péage, comme un balle', 'https://www.youtube.com/embed/QoD10UOA5bE?start=8'),
(27, 'Péage - Go fast ', 'gofast ton camion comme une balle.mp3', 'Ah sa mére, taper le péage, comme un balle', 'https://www.youtube.com/embed/QoD10UOA5bE?start=8'),
(28, 'QI de 143', 'QI DE 143 kirby 54.mp3', 'Kirby 54', 'https://www.youtube.com/embed/vr82yr47RzM?start=2'),
(29, 'Nous sommes en guerre', 'Nous sommes en guerre.mp3', 'Macron', 'https://www.youtube.com/embed/5wYyJckGrdc?start=17'),
(30, 'L\'État paiera', 'Létat paiera.mp3', 'Macron', 'https://www.youtube.com/embed/60iwEgn4qbU'),
(31, 'Avec du savon', 'Avec du savon !.mp3', 'Macron', 'https://www.youtube.com/embed/60iwEgn4qbU?start=2'),
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
(56, 'Maité - l\'ortolan', 'Culte Maïté explique comment manger un ortolan Archive INA.mp3', 'Maité, sucer le derrière', 'https://www.youtube.com/embed/SEPMuyGe7dg?start=86'),
(57, 'Damn les gens', 'DAMN LES GENS.mp3', 'Tibo InShape', 'https://www.youtube.com/embed/QVEg6o3hV1o?start=13'),
(58, 'Alors peut être !', 'alors peut etre.mp3', '', 'https://www.youtube.com/embed/G-VYwC28KXI?start=43'),
(59, 'AH !', 'Denis Brogniart AH.mp3', 'Denis Brogniart', 'https://www.youtube.com/embed/XE6YaLtctcI'),
(60, 'Grigny la grande borne', 'Grigny la grande borne.mp3', 'Grigny la Grande Borne', 'https://www.youtube.com/embed/Ho8xZ5VN9oM?start=2'),
(64, 'L\'amour sans préliminaires', 'lamour sans preliminaire.mp3', 'Da Foncesca', 'https://www.youtube.com/embed/EvVAxJ7sJAE?start=16'),
(65, 'Jeanne au secours !', 'Jean Marie Le Pen - Jeanne au secours !!.mp3', 'JMLP, Jean Marie Le Pen', 'https://www.youtube.com/embed/v1mxMtr8Mws'),
(67, 'Lopez (Gitan énérvé) - Le joe le david', 'le djo le david.mp3', 'Le joe, le david, hoffman, calotte, de ces morts, ta femme, ferme ta gueule, ftg, lopez', 'https://www.youtube.com/embed/kLwy1uYfpRo?start=3'),
(68, 'Le raaaaaaaaaaanch', 'Le raaaaaaaaaanch.mp3', 'Vieux Callaghan', 'https://www.youtube.com/embed/ZEfvyTMA1nQ?start=52'),
(69, 'Mister V - Le Bâtiment 4 ', 'mais jamais vous allez trouver misterv.mp3', 'Mister V', 'https://www.youtube.com/embed/MxsDaDuEDBg?start=26'),
(70, 'Claqué au sol', 'Mister V - Claqué au sol.mp3', 'Mister V', 'https://www.youtube.com/embed/sLl4YXqHMRQ'),
(72, 'Tkt ça va bien se passer', 'Ne tinquiète pas ça va bien se passer.mp3', '', 'https://www.youtube.com/embed/q6VxDM8Wd-o'),
(73, 'Michel c\'est le Brésil', 'Michel cest le Brésil !! 1.mp3', 'Palmashow', 'https://www.youtube.com/embed/sxO0j5V9jtY?start=3'),
(74, 'Michel c\'est le Velux', 'Michel cest le Brésil !! 2.mp3', 'Palmashow', 'https://www.youtube.com/embed/sxO0j5V9jtY?start=9'),
(76, 'Vraiment très intéressant', 'Cétait vraiment très intéressant..mp3', '', 'https://www.youtube.com/embed/lItyCpRny-E'),
(77, 'David Goodenough', 'Compilation David Goodenough + Mickael Goodenough.mp3', 'JDG, Joueur du Grenier', 'https://www.youtube.com/embed/ho4W5LnFl6s?start=43'),
(78, 'SD Hallucination Collective', 'hallucination collective -Sylvain Durif.mp3', 'Sylvain Durif', 'https://www.youtube.com/embed/jUz5RgfXMP0'),
(79, 'HEY SALUT A TOUS LES AMIS', 'HEY, SALUT A TOUS LES AMIS, CEST DAVID LAFARGE POKEMON.mp3', 'David Lafarge Pokémon', 'https://www.youtube.com/embed/xBP39fBS60s'),
(80, 'Philippe ! Salaud !', 'hitman-le-cobra-philippe-je-sais-ou-tu-te-caches.mp3', 'Je sais où tu caches, salaud', 'https://www.youtube.com/embed/qznbecUX3Fc?start=1'),
(81, 'Pas venue pour souffrir ', 'Je suis pas venu ici pour souffrir OK !.mp3', '', 'https://www.youtube.com/embed/6Yl-A0ckXNU'),
(82, 'JPK  -  Mais c\'est de la merde !', 'Jean-Pierre Coffe - Mais cest dla MERDE - Version courte.mp3', 'Jean Pierre Koffe', 'https://www.youtube.com/embed/CoB36zxT940'),
(83, 'Les inconscients', 'Les inconscients ne savent pas quils sont inconscients car il ne connaissent pas la.mp3', '', 'https://www.youtube.com/embed/SFDsL_FxHIQ'),
(85, 'Lopez (Gitan énérvé) - Ferme ta gueule ', 'ferme ta gueule lopez.mp3', 'Le joe, le david, hoffman, calotte, de ces morts, ta femme, ferme ta gueule, ftg, lopez', 'https://www.youtube.com/embed/xKHTAnhqeKI?start=47'),
(86, 'Lopez (Gitan énérvé) - NRV Full', 'Lopez gitan énervé.mp3', 'Le joe, le david, hoffman, calotte, de ces morts, ta femme, ferme ta gueule, ftg, lopez', 'https://www.youtube.com/embed/kLwy1uYfpRo'),
(87, 'OSS - Il va la fermer ', 'Mais il va la fermer sa gueule.mp3', 'OSS 117', 'https://www.youtube.com/embed/ABUtjkqt8bI?start=1'),
(88, 'Mais oui c\'est clair', 'Mais oui cest clair ! By Eddy-Malou !.mp3', 'Eddy Malou', 'https://www.youtube.com/embed/ma7TL8jJT0A'),
(89, 'Ma personne est sacrée', 'Me touché pas vous avez pas le droit , ma personne est sacré.mp3', 'Mélenchon', 'https://www.youtube.com/embed/HviaKNRsisU'),
(90, 'Coucou', 'MissJirachi Coucou.mp3', 'Miss Jirachi', 'https://www.youtube.com/embed/AsVdSicpGpY?start=7'),
(92, 'Oh l\'assassin !', 'Oh lassassin !.mp3', '', 'https://www.youtube.com/embed/9W9ZiIxK1Y8'),
(93, 'SD Oh mais qu\'es ce que ', 'OH MAIS QUEST QUE CEST QUE SE TRUC LA.mp3', 'Sylvain Durif', 'https://www.youtube.com/embed/OEo_UMSLvgA'),
(94, 'Oh patron court', 'oh patron court.mp3', 'Bonne Nuit les Petits, Nounours', ''),
(95, 'Oh patron long', 'oh patron long.mp3', 'Bonne Nuit les Petits, Nounours', ''),
(96, 'Ah c\'est marrant ', 'Orelsan - Ah cest marrant.mp3', 'Orelsan', 'https://www.youtube.com/embed/Ngw-8_No6b0'),
(98, 'OSS - Oh si c\'est rigolo ', 'OSS 117 - Oh si, cest rigolo !.mp3', 'OSS 117', 'https://www.youtube.com/embed/OYz_BD3I9w0?start=1'),
(99, 'OSS - Une dictature ', 'OSS 117-Rio ne répond plus-Une dictature.mp3', 'OSS 117', 'https://www.youtube.com/embed/NOnESat0mwM'),
(100, 'OUI', 'oui_2.mp3', 'Zerator', 'https://www.youtube.com/embed/4on2DZUb0M0?start=7'),
(101, 'C\'est notre projet', 'PARCE QUE CEST NOTRE PROJET.mp3', 'Macron', 'https://www.youtube.com/embed/d7RWIcOcHgg'),
(102, 'Pas ça Zinedine', 'Pas ca Zinedine....mp3', '', 'https://www.youtube.com/embed/7wZbcCxBP3c?start=10'),
(107, 'RHINOSHIEEEELD', 'RHINOSHIELD.mp3', '', 'https://www.youtube.com/embed/n00_wpU8nA0?start=38'),
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
(120, 'Tu crois que c\'est du respect', 'Tu crois qucest du respect ça.mp3', '', 'https://www.youtube.com/embed/sTY0k4UkFkE'),
(122, 'PANO - Ya pas de panneaux', 'YA PAS DE PANNEAUX VIDEO ENTIERE.mp3', 'Ya pas de Pano', 'https://www.youtube.com/embed/LjWjBjyr_Y8?start=49'),
(123, 'La question est vite répondue ', 'question vite repondue.mp3', 'Jeune entrepreneur, question vite repondue', ''),
(130, 'COMBIEN ?!', 'COMBIEN !.mp3', '', 'https://www.youtube.com/embed/WfjHbpXt-oQ?start=6'),
(131, 'D7D8 short', 'D7D8.mp3', 'Pamela, d7 d8', 'https://www.youtube.com/embed/WSsafS77zMs?start=4'),
(132, 'D7D8 Mais je suis Pamela', 'd7d8 pamela.mp3', 'Pamela, d7 d8', 'https://www.youtube.com/embed/WSsafS77zMs?start=42'),
(133, 'D7D8 Full', 'D7D8 full.mp3', 'Pamela, d7 d8', 'https://www.youtube.com/embed/WSsafS77zMs?start=42'),
(134, 'Raid Saxo Legends', '1. Raid Saxo Legends.mp3', 'Antoine Daniel', 'https://www.youtube.com/embed/D_l6iw1I16U'),
(135, 'Lofi de merde', '2. Lofi de Merde.mp3', 'Antoine Daniel', 'https://www.youtube.com/embed/cBItJUwqlQk'),
(136, 'Minecraft', '3. Minecraft.mp3', 'Antoine Daniel', 'https://www.youtube.com/embed/Uz2X9vtGkgI?start=293'),
(137, 'CEO de mon coeur', '4. CEO de mon Coeur.mp3', 'Antoine Daniel', 'https://www.youtube.com/embed/pSVwlm7gvRI'),
(138, 'Twitch ASMR', '5. TWITCH ASMR.mp3', 'Antoine Daniel', 'https://www.youtube.com/embed/Uz2X9vtGkgI?start=479'),
(139, 'Qui fume ici ? Full', 'méthode commando pour arrêter de fumer qui fume ici (Marius commandos marine).mp3', 'Marius', 'https://www.youtube.com/embed/1PaOW1hO8fA'),
(140, 'Qui fume ici ?', 'qui fume ici.mp3', 'Marius', 'https://www.youtube.com/embed/1PaOW1hO8fA?start=10'),
(142, 'Pièce ', 'piece.mp3', 'Bosh, Djomb, piece', 'https://www.youtube.com/embed/zquFZaHw2TQ?start=11'),
(143, 'Serguei Bubka est debout ', 'Serguei Bubka est debout.mp3', '', 'https://www.youtube.com/embed/-V06We5lDMk?start=21'),
(144, 'Record du monde', 'Record du monde.mp3', '', 'https://www.youtube.com/embed/-V06We5lDMk?start=9'),
(145, 'Voila le gâteau', 'Voila le gateau.mp3', 'Sortez les couteaux, la pièce montée on va la démonter', 'https://www.youtube.com/embed/mYaEh_k37ZA?start=11'),
(149, 'AROUF et l\'anglais', '[AROUF GANGSTA] Casse les couilles à parler anglais !.mp3', 'Arouf Gangsta', 'https://www.youtube.com/embed/WOkpLp2A0yk'),
(150, 'Je veux faire l\'amour long', '[MEME] JE VEUX FAIRE LAMOUR !.mp3', '', 'https://www.youtube.com/embed/ENMx8r9kDAk?start=4'),
(151, 'Je veux faire l\'amour court', '[MEME] JE VEUX FAIRE LAMOUR short.mp3', '', 'https://www.youtube.com/embed/ENMx8r9kDAk?start=21'),
(152, 'TK78 - Pensais pas ça de toi', '[MEME] Mais je pensais pas ça de toi ! TK.mp3', 'TK,The Kairi 78', 'https://www.youtube.com/embed/x2jYxrfdh5k'),
(153, 'Salut mon pote !', '[MEME] Salut mon pote.mp3', '', 'https://www.youtube.com/embed/6Z9m2-VH2m8?start=8'),
(154, 'Je suis abasourdi', 'A-BA-SOUR-DI.mp3', '', ''),
(155, 'Accordéon court', 'Accordeon court.mp3', '', ''),
(156, 'Accordéon long', 'Accordeon long.mp3', '', ''),
(157, 'AIE AIE AIE ', 'AIE AIE AIE.mp3', 'DJ Belge', 'https://www.youtube.com/embed/yxZGVBp2Sxw?start=18'),
(158, 'Allez méga fiesta !', 'Allez mega fiesta.mp3', 'DJ Belge', 'https://www.youtube.com/embed/yxZGVBp2Sxw?start=10'),
(159, 'ATTENTION CONSEIL IMPORTANT', 'ATTENTION CONSEIL IMPORTANT.mp3', '', 'https://www.youtube.com/embed/cuzA8qnI7LQ'),
(160, 'Canard coin coin short', 'Canard coin coin court.mp3', '', 'https://www.youtube.com/embed/FSoQNtU-MFA?start=41'),
(161, 'Canard coin coin long', 'Canard coin coin long.mp3', '', 'https://www.youtube.com/embed/FSoQNtU-MFA?start=41'),
(162, 'Qui est à l\'envers ?', 'Cest moi qui suis à lenvers.mp3', '', 'https://www.youtube.com/embed/SVrLA-zYc7o'),
(163, 'Faire chavirer un chameau', 'chavirer un chameau.mp3', 'Moundir', 'https://www.youtube.com/embed/ZMwjWBSAVPw?start=111'),
(164, 'La sagesse de Yoda', 'comme le disait yoda.mp3', 'Moundir', 'https://www.youtube.com/embed/ZMwjWBSAVPw?start=151'),
(165, 'Matelas qui sort de sa bouche ', 'elle parle ces des matelas qui sortent de sa bouche.mp3', 'Moundir', 'https://www.youtube.com/embed/ZMwjWBSAVPw?start=211'),
(166, 'Ému mais pas des yeux', 'emu mais pas des yeux.mp3', 'Moundir', 'https://www.youtube.com/embed/ZMwjWBSAVPw?start=308'),
(167, 'Fanfare Beaufland', 'Fanfare boffe.mp3', '', ''),
(168, 'TK78 - FDP ma lumière', 'FDP ma lumiere.mp3', 'TK, The Kairi, 78', 'https://www.youtube.com/embed/x2jYxrfdh5k?start=3'),
(169, 'Frappe moi je t\'empoisonne', 'Frappe moi je tempoisonne.mp3', '', 'https://www.youtube.com/embed/_Ljs7l8TAko'),
(170, 'HAN OUAIS', 'Han ouais.mp3', '', 'https://www.youtube.com/embed/DN-bVt76K8s?start=10'),
(171, 'IBIZA ', 'IBIZA.mp3', 'DJ Belge', 'https://www.youtube.com/embed/yxZGVBp2Sxw?start=51'),
(172, 'JCVD - J\'adore l\'eau', 'JCVD Jadore leau, dans 2030 ans y en aura plus.mp3', 'JCVD', 'https://www.youtube.com/embed/Ggq0c4e2hjA?start=45'),
(173, 'JE LEUR PISSE AU CUL', 'JE LEURS PISSE AU CUL !.mp3', 'Eric Cantona', 'https://www.youtube.com/embed/kEi6h6Wb8wg'),
(174, 'JE PORTE PLAINTE', 'Je porte plainte pour diffamation, harcèlement et incitation à la haine.mp3', 'Thomas Cyrix', 'https://www.youtube.com/embed/MgLN4KmsB9Y'),
(176, 'La Poudre de perlimpinpin', 'la poudre de perlimpinpin.mp3', 'Macron', 'https://www.youtube.com/embed/a_AkC7MEw_U?start=143'),
(177, 'Moundir et le système gargamel', 'le systeme gargamel.mp3', 'Moundir', 'https://www.youtube.com/embed/ZMwjWBSAVPw?start=317'),
(179, 'Pour être un aventurier ', 'Moundir Aventurier du lait.mp3', 'Moundir', 'https://www.youtube.com/embed/ZMwjWBSAVPw?start=8'),
(180, 'Moundir est fragile du moteur', 'Moundir est fragile du moteur.mp3', 'Moundir', 'https://www.youtube.com/embed/ZMwjWBSAVPw?start=50'),
(181, 'Moundir et le 14 juillet', 'Moundir et le 14 juillet.mp3', 'Moundir', 'https://www.youtube.com/embed/ZMwjWBSAVPw?start=19'),
(182, 'La punchline de Moundir OMG', 'moundir punchlines.mp3', 'Moundir', 'https://www.youtube.com/embed/ZMwjWBSAVPw?start=268'),
(183, 'Moundir transpire du genou', 'moundir transpire du genou.mp3', 'Moundir', 'https://www.youtube.com/embed/ZMwjWBSAVPw?start=296'),
(184, 'Pas assez divertis ?!', 'NE VOUS ETES VOUS PAS ASSEZ DIVERTIS - GLADIATOR.mp3', '', 'https://www.youtube.com/embed/fMW__0nVlGE?start=3'),
(185, 'Oh yeah yeah yes ', 'oh yeah yeah yes.mp3', 'DJ Belge', 'https://www.youtube.com/embed/yxZGVBp2Sxw?start=48'),
(186, 'Zé Parti !', 'ZÉ PARTI.mp3', 'DJ Belge', 'https://www.youtube.com/embed/yxZGVBp2Sxw?start=43'),
(187, 'OKAYYYYY let\'s go ! long', 'OKAYYY LETS GO - FORAIN long.mp3', '', 'https://www.youtube.com/embed/AWM5ZNdWlqw'),
(188, 'OKAYYYYY let\'s go ! court', 'OKAYYY LETS GO - FORAIN short.mp3', '', 'https://www.youtube.com/embed/AWM5ZNdWlqw'),
(189, 'Pourquoi être aussi Corrompu ?! Court', 'pk etre aussi corrompu short.mp3', 'Moundir', 'https://www.youtube.com/embed/ZMwjWBSAVPw?start=125'),
(190, 'Pourquoi être aussi Corrompu ?! Long', 'pk etre aussi corrompu long.mp3', 'Moundir', 'https://www.youtube.com/embed/ZMwjWBSAVPw?start=122'),
(191, 'SQUALALA => partis', 'SQUALALA NOUS SOMME PARTIS ! Zelda.mp3', 'Zelda', 'https://www.youtube.com/embed/8r2HRgYrmgQ'),
(192, 'Tu n\'es pas qualifiée !', 'Tu nest pas qualifié !.mp3', '', 'https://www.youtube.com/embed/vnjy-35Lxjg?start=5'),
(193, 'Vous êtes fatigués', 'vous etes fatigues.mp3', 'DJ Belge', 'https://www.youtube.com/embed/yxZGVBp2Sxw?start=34'),
(194, 'Envie de Clubber', '6. Envie de Clubber.mp3', 'Antoine Daniel', 'https://www.youtube.com/embed/Uz2X9vtGkgI?start=589'),
(195, 'Big Art', '7. Big Art.mp3', 'Antoine Daniel', 'https://www.youtube.com/embed/Uz2X9vtGkgI?start=700'),
(196, 'Grosse Annonce', '8. Grosse Annonce.mp3', 'Antoine Daniel', 'https://www.youtube.com/embed/Uz2X9vtGkgI'),
(202, 'Objection !', 'phoenix-objection.mp3', '', ''),
(203, 'Gros Bouffon Sexiste - KOUHIZINNE', 'COUHIZINNE.mp3', 'CUISINE, Le BOUFF Sexiste, La place', 'https://www.youtube.com/embed/adCyaYx4h_M?start=40'),
(205, 'Le Buzz avec un double Z', 'ANTOINE DANIEL A FAIT LE BUZZ AVEC UN DOUBLE Z !!!!!.mp3', 'Antoine Daniel', 'https://www.youtube.com/embed/-D0t0LdLz9A'),
(206, 'Renaud - Toujours Vivant', 'Toujours vivant.mp3', 'Renaud, Toujours la banane', 'https://www.youtube.com/embed/uv37yxc51bE?start=35'),
(207, 'Renaud - T\'a débarqué un jour de Chine', 'Corona Song.mp3', 'Renaud, connard de virus', 'https://www.youtube.com/embed/RK3J2sDEQ1M?start=14'),
(208, 'Renaud - Connard de Virus', 'Connard de Virus.mp3', 'Renaud, connard de virus', 'https://www.youtube.com/embed/RK3J2sDEQ1M?start=17'),
(209, 'Wallah', 'David Lafarge Wallah.mp3', 'David Lafarge Pokémon', 'https://www.youtube.com/embed/j9vYCAsMy7Y?start=3'),
(210, 'Quadricolor', 'Quadricolor.mp3', '', 'https://www.youtube.com/embed/7TcfhntQdYg'),
(211, 'Que des N°10 dans ma team', 'Que des N°10 dans ma team.mp3', 'Booba', 'https://www.youtube.com/embed/IZmCwtYk98A?start=15'),
(212, 'Le dessert', 'YTP]FR Le dessert.mp3', '', 'https://www.youtube.com/embed/C5vL4qVff6Y'),
(213, 'Dommage', 'Dommage Edouard Phillippe.mp3', '', 'https://www.youtube.com/embed/3PZ35tHyzSk'),
(214, 'Ça ça va la ', 'ça ça va la.mp3', 'Valorant', 'https://www.youtube.com/embed/jUE-pYTG6wk'),
(215, 'Oh purée de pomme de terre', 'OH PURÉE DE POMME DE TERRE MAIS CEST PAS VRAI ÇA.mp3', '', 'https://www.youtube.com/embed/cbb4ltI3Xuw?start=1'),
(216, 'Achète ma merde', 'JDG - Joueur du Grenier - Achète ma merde.mp3', 'JDG, Joueur du Grenier', 'https://www.youtube.com/embed/GIWIjw-yotQ'),
(217, 'CHAOS - Un petit peu vulgaire', 'Un petit peu vulgaire.mp3', 'Antoine Daniel', 'https://www.youtube.com/embed/OpqzEd7Ktlc?start=8'),
(219, 'CHAOS - Dommage', 'DOMMAGE DU CHAOS DE ANTOINE DANIEL.mp3', 'Antoine Daniel', 'https://www.youtube.com/embed/toUbk23yu7Q'),
(220, 'Philippe Poutou', 'PHILIPPE.mp3', 'Antoine Daniel', 'https://www.youtube.com/embed/bIft0PeKoJw'),
(221, 'Started from the bottom', 'Started from the bottom.mp3', 'Le Récap', 'https://www.youtube.com/embed/Eg1Fcyz-Tvo?start=23'),
(222, 'Salut la commu !', 'Salut la commu.mp3', 'Le Récap', 'https://www.youtube.com/embed/Eg1Fcyz-Tvo?start=28'),
(223, 'Alerte Générale !', 'Alerte generale - Taxi - Gilbert.mp3', 'Taxi', 'https://www.youtube.com/embed/LACbRkqcbhU'),
(224, 'Pensez printemps !', 'Pensez printemps les amis.mp3', '', 'https://www.youtube.com/embed/KOGeO6nY6fk'),
(225, 'MA LUBULLULE - 8.6', '8 morts 6 blessés.mp3', '8 morts 6 blessés, je pète ma bière, ma lubullule, ma libellule', 'https://www.youtube.com/embed/XCBQZ3xdDu0'),
(226, 'Ma lubullule', 'Ma lubullule.mp3', '8 morts 6 blessés, je pète ma bière, ma lubullule, ma libellule', 'https://www.youtube.com/embed/XCBQZ3xdDu0?start=8'),
(227, 'OUI Didier Drogba', 'what-the-cut-oui.mp3', '', 'https://www.youtube.com/embed/9MpXQEIkfjc?start=15'),
(228, 'HORAS', 'HORAS.mp3', 'Le Récap', 'https://www.youtube.com/embed/IHygqjQz1LQ?start=421'),
(232, 'Sard - DOMO, je suis japonais', 'je suis japonais.mp3', 'Sardoche', 'https://www.youtube.com/embed/niD-zC_1tPU?start=66'),
(233, 'AU REVOIR', 'Au revoir mitterand.mp3', '', 'https://www.youtube.com/embed/Dq5XnXh1nDY?start=6'),
(234, 'PANO - Si on peut parking', 'Si on peut parking alors on park.mp3', 'Ya pas de Pano', 'https://www.youtube.com/embed/LjWjBjyr_Y8?start=38'),
(235, 'C\'est la mer noire Full', 'mer noire.mp3', '', 'https://www.youtube.com/embed/0SdcfsD_WVE?start=36'),
(236, 'C\'est la mer noire ?', 'cest la mer noire.mp3', '', 'https://www.youtube.com/embed/0SdcfsD_WVE?start=49'),
(238, 'Ça va péter ! Full ', 'Ca va péter full.mp3', '', 'https://www.youtube.com/embed/tX0oyVX8KWE?start=5'),
(239, 'Ça va péter !', 'Ca va péter.mp3', '', 'https://www.youtube.com/embed/tX0oyVX8KWE?start=5'),
(240, 'Double ration de frites', 'KF - Double ration de frites.mp3', 'Khaled Freak', 'https://www.youtube.com/embed/jiAm8OC2pXk?start=46'),
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
(264, 'Je suis un homme en COLÈRE', 'homme_colere.mp3', '', 'https://www.youtube.com/embed/I457tqgON8E'),
(265, 'Hôpital se fout des charrettes', 'hopital_charette jojo.mp3', '', 'https://www.youtube.com/embed/r2PAwI2EI9E?start=46'),
(266, 'La moitié du sel FR', 'ICI ON RECOLTE LA MOITIE DU SEL FRANCAIS.mp3', '', 'https://www.youtube.com/embed/z6aelNSRr9s?start=1'),
(267, 'Ish Ish', 'ish_ish_final.mp3', '', 'https://www.youtube.com/embed/XZBU7BWQsZs?start=107'),
(268, 'J\'ai pas touché', 'brandao g pas touché.mp3', '', 'https://www.youtube.com/embed/FCCGQ9SBTuI?start=9'),
(269, 'Je suis papa !', 'je_suis_papa.mp3', '', 'https://www.youtube.com/embed/eX1VsLaS2Q4?start=8'),
(270, 'Perlimpinpin', 'KF - Perlimpinpin.mp3', 'Khaled Freak', 'https://www.youtube.com/embed/rCK-7Hki4II?start=10'),
(271, 'Lâche moi Michel', 'lache moi michel.mp3', '', 'https://www.youtube.com/embed/DR6fIOpAzPI?start=2'),
(272, 'Le gravier', 'le_gravier.mp3', '', 'https://www.youtube.com/embed/APe0V--peNY?start=96'),
(275, 'OSS - Faisons comme ça', 'OSS 117  faisons comme ça.mp3', 'OSS 117', 'https://www.youtube.com/embed/xkUoUnYLSto'),
(276, 'Vous m\'emmerdez ', 'KF - Vous memmerdez.mp3', 'Khaled Freak', 'https://www.youtube.com/embed/h8-QGeOHx_Y?start=46'),
(277, 'AH ! Remix', 'KF - AH remix.mp3', 'Khaled Freak', 'https://www.youtube.com/embed/Ri7GzCUTC5s'),
(278, 'Commence à me parler poliment', 'commence a me parler poliment.mp3', '', 'https://www.youtube.com/embed/MX_l4pRMI8w?start=48'),
(279, 'Bordel j\'ai le droit', 'mais bordel jai le droit.mp3', '', 'https://www.youtube.com/embed/-bVL_Nvm4A8'),
(280, 'Non binaire', 'non binaire.mp3', '', 'https://www.youtube.com/embed/ZDjymMD7PTU?start=23'),
(281, 'Mais c\'est contre nature han', 'cest contre nature han.mp3', '', 'https://www.youtube.com/embed/a3WuxELOKJA?start=14'),
(283, 'Hollande et l\'Anglais', 'hollande et langlais.mp3', '', 'https://www.youtube.com/embed/M2wyG8Kt3fA?start=4'),
(284, 'Ils sont la partout MLP', 'Ils sont la ils sont partout.mp3', 'MLP, Marine Le Pen', 'https://www.youtube.com/embed/Y6UHYemqvco'),
(285, 'Marina passe tu t’écartes', 'Marina passe et tu tecartes.mp3', '', 'https://www.youtube.com/embed/_MX-YiYs9YU?start=21'),
(286, 'Kalash kalash', 'kalash kalash.mp3', '', 'https://www.youtube.com/embed/_MX-YiYs9YU?start=35'),
(287, 'Savez-vous ce que c\'est ?', 'micose_vaginale.mp3', '', ''),
(288, 'Mon sac est fait', 'mon_sac_est_fait.mp3', '', 'https://www.youtube.com/embed/05yQW0Sbrv8'),
(289, 'Multiplex', 'multiplex.mp3', '', 'https://www.youtube.com/embed/vF34AHJzbU0'),
(290, 'Les nerfs sont tendus', 'nerf_tendu.mp3', '', 'https://www.youtube.com/embed/2lNDfxSddUg?start=53'),
(291, 'Non ! ', 'non mario.mp3', '', 'https://www.youtube.com/embed/caXgpo5Ezo4'),
(292, 'Doucement avec les bonbons', 'oh-doucement-avec-les-bonbons.mp3', '', 'https://www.youtube.com/embed/kvmyR2AuQVc?start=420'),
(293, 'OK ', 'ok_mister_v_final.mp3', 'Mister V', 'https://www.youtube.com/embed/OxvinfGPtQM'),
(294, 'Okay ! Jacquouille', 'okay_jacquoille_final.mp3', '', 'https://www.youtube.com/embed/zZURohVP5JY?start=8'),
(295, 'Oui d\'accord', 'oui_d_accord.mp3', 'Macron', 'https://www.youtube.com/embed/Z8et47AbmgU'),
(296, 'C\'est pas faux', 'pas_faux_final.mp3', '', 'https://www.youtube.com/embed/3w5cwBrvtf4?start=1'),
(297, 'Mais t\'es pas net ?', 'pas_net_remix.mp3', 'Khaled Freak', 'https://www.youtube.com/embed/pQjg6GlkQYM?start=56'),
(298, 'J\'suis pas ta mère', 'pas_ta_mere_jojo.mp3', '', ''),
(299, 'Je suis Passe Partout', 'passe_partout.mp3', '', 'https://www.youtube.com/embed/Z8wZ7JaSP64?start=59'),
(300, 'Petit Poney', 'petit poney.mp3', '', 'https://www.youtube.com/embed/u5Ho1trvlro'),
(301, 'Petit Poney refrain', 'petit poney refrain.mp3', '', 'https://www.youtube.com/embed/u5Ho1trvlro'),
(302, 'Poce bleu', 'poce_bleu_final.mp3', '', ''),
(303, 'Si ton coté = feu éteint', 'Si de ton côté le feu sest éteint.mp3', '', 'https://www.youtube.com/embed/4BP__EF9ess?start=15'),
(304, 'Slt a tous, c\'est Lasalle', 'slt_lasalle.mp3', '', 'https://www.youtube.com/embed/9JGNQvL7teE?start=15'),
(305, 'Du Sprite sa mère', 'sprite_mere_final.mp3', '', 'https://www.youtube.com/embed/uEov4qWmHCY?start=6'),
(306, 'Super Spermatoz Jamy !', 'superbe_zigote_jamy.mp3', 'Jamy', 'https://www.youtube.com/embed/Sqgr2WNHRkM'),
(307, 'T\'en as trop pris gros !', 'trop_pris_gros.mp3', 'SLG, Salut les Geeks', 'https://www.youtube.com/embed/4wxsLz9RLrY'),
(308, 'JCVD - 1 + 1 = 11 ', 'un_plus_un_jcdm.mp3', 'JCVD', 'https://www.youtube.com/embed/FTKV29C7yJE?start=21'),
(309, 'Véga Missile', 'vega_misyl_satellise.mp3', '', 'https://www.youtube.com/embed/5V2D1aXX_UM?start=132'),
(310, 'Zbeub Zbeub', 'zbeub_final.mp3', '', ''),
(311, 'Mister V - Koba LA D FULL', 'MAIS COMMENT VOUS MAVEZ TROUVÉ - MISTER V.mp3', 'Mister V', 'https://www.youtube.com/embed/MxsDaDuEDBg'),
(312, 'Très très sale ', 'Très très sale - Maitre Van Diest ft M6 Boutique.mp3', '', 'https://www.youtube.com/embed/jwMFYcXjTbQ'),
(313, 'PTDR T KI ?', 'Ptdr t ki.mp3', 'Jiraya, La Jij', 'https://www.youtube.com/embed/u4SklJm7ZHQ?start=198'),
(314, 'Ça c\'était gratuit', 'ÇA CÉTAIT GRATUIT - Maskey.mp3', 'Maskey', 'https://www.youtube.com/embed/1IuAmxG0Mb4'),
(315, 'On appelle ça une douille', 'on appelle ça une douille maskey.mp3', 'Maskey', 'https://www.youtube.com/embed/QJH00mv8Y4I'),
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
(332, 'Ekip 667', 'Ekip.mp3', 'Freeze Corleone, Ekip, 667', 'https://www.youtube.com/embed/tr2zDYYKLMM?start=185'),
(333, 'Et ça fait zumba cafew', 'Zumba cafew carnaval.mp3', 'Bande organisée', 'https://www.youtube.com/embed/-CVn3-3g_BI?start=194'),
(334, 'Pas de préliminaires !', 'Pas besoin de préliminaire !.mp3', '', 'https://www.youtube.com/embed/sIKS1vjXWA4'),
(336, 'Quel goût !', 'Quel gout.mp3', '', 'https://www.youtube.com/embed/4N9Endw_nD8?start=10'),
(337, 'Eul\'Vraie France', 'Eul Vraie France.mp3', 'Kamini', 'https://www.youtube.com/embed/Fy2VK7nBKhY?start=30'),
(338, 'SN - J\'ai fait des conneries', 'Jai fait des conneries.mp3', 'Samy Naceri', 'https://www.youtube.com/embed/V6ljXkkGXG0?start=64'),
(339, 'SN - Les rimes en &quot;ence&quot;', 'Les rimes en ence.mp3', 'Samy Naceri', 'https://www.youtube.com/embed/V6ljXkkGXG0?start=164'),
(340, 'SN - Oui j\'ai envie', 'oui jai envie.mp3', 'Samy Naceri', 'https://www.youtube.com/embed/V6ljXkkGXG0?start=95'),
(342, 'Champion du moooonde', 'Champion du mooooooonde.mp3', '', 'https://www.youtube.com/embed/h75PJ-xfsFY?start=600'),
(343, 'Le coup de soufflage', 'Da Foncesca - le coup de soufflage.mp3', 'Da Foncesca', ''),
(344, 'Le rouge à lèvres', 'Da Foncesca - Le rouge à lévres.mp3', 'Da Foncesca', ''),
(345, 'Enculé', 'ENCULÉ.mp3', '', 'https://www.youtube.com/embed/okEqM6VOOj8?start=34'),
(346, 'Crucifié x3', 'crucifié crucifié crucifié.mp3', '', 'https://www.youtube.com/embed/lSeUQn_ErRU?start=31'),
(347, 'Il est de retour', 'il est de retour.mp3', '', 'https://www.youtube.com/embed/lSeUQn_ErRU?start=13'),
(348, 'L\'ange s\'est envolé', 'lange sest envolé.mp3', '', 'https://www.youtube.com/embed/lSeUQn_ErRU?start=21'),
(349, 'Indétectable', 'Indétectable.mp3', '', 'https://www.youtube.com/embed/e5RsjgA_ehY?start=56'),
(350, 'Je l\'ai dit bordel', 'je lai dit bordel.mp3', '', 'https://www.youtube.com/embed/zDlLKmvcqhQ?start=104'),
(351, 'La ligne 4', 'La ligne 4.mp3', 'Antoine Daniel', 'https://www.youtube.com/embed/cBItJUwqlQk?start=55'),
(352, 'Ta mère elle va jumper', 'Ta mére elle va jumpey.mp3', '', 'https://www.youtube.com/embed/pZRR35zFnhg?start=217'),
(358, 'Je code avec le cul', 'jecodeaveclecul.mp3', '', 'https://www.youtube.com/embed/MYZ67-Sh7kM?start=55'),
(359, 'C\'est non !', 'cest non.mp3', '', 'https://www.youtube.com/embed/hSpQkbcw0TE?start=1'),
(360, 'Chef Dumas - Salut la visite !', 'Chef Dumas - Salut la visite.mp3', 'Chef Dumas', 'https://www.youtube.com/embed/KAfC7XAHN14?start=3'),
(361, 'Chef Dumas - Maître d\'hôtel ', 'Chef Dumas - Maitre dhotel.mp3', 'Chef Dumas', 'https://www.youtube.com/embed/KAfC7XAHN14?start=717'),
(362, 'Oui ma gâtée', 'oui ma gatée.mp3', 'Bande organisée', 'https://www.youtube.com/embed/-CVn3-3g_BI?start=26'),
(363, 'Let\'s go les gars !', 'Lets go les gars.mp3', '', ''),
(364, 'Un petit géranium', 'et juste la un petit geranium.mp3', '', 'https://www.youtube.com/embed/YjBdJqUT1XY?start=19'),
(365, 'Le lion ne s\'associe pas avec le cafard', 'le lion et le cafard.mp3', '', 'https://www.youtube.com/embed/Q_apYjjyD-o?start=4'),
(367, 'Une robe vraimeeent', 'UNE ROBE VRAIMENT.mp3', '4 mariages pour 1 lune de miel', 'https://www.youtube.com/embed/atRlF-En7wA?start=5'),
(369, 'Pépite de chocolat', 'Pepite de chocolat.mp3', '', 'https://www.youtube.com/embed/SEHoOSQWxyU?start=6'),
(370, 'Gourmande', 'Gourmande.mp3', '4 mariages pour 1 lune de miel', ''),
(371, 'MmmmhOUIIIIII', 'MmhOUI.mp3', '4 mariages pour 1 lune de miel', ''),
(372, 'Même les diabétiques ?! WOW', 'Meme les diabetiques.mp3', '4 mariages pour 1 lune de miel', 'https://www.youtube.com/embed/atRlF-En7wA?start=88'),
(373, 'Encore ?!', 'encore mister v.mp3', 'Mister V', 'https://www.youtube.com/embed/6elK8VI1rPs'),
(374, 'Oh ptn ça fait du bien', 'oh ptn ça fait du bien.mp3', '', 'https://www.youtube.com/embed/WXb2C4fHwvo'),
(375, 'Capitaine, Capitaine !', 'Bref - Capitaine capitaine.mp3', 'Bref', 'https://www.youtube.com/embed/ryxGEUexfCc?start=2'),
(376, 'Buona Sera', 'buena sera norman.mp3', 'Norman Genius', ''),
(377, 'C\'est bien Eléonore', 'Cest bien Eleonore on est content.mp3', 'Le maillon faible', 'https://www.youtube.com/embed/L9e8tGd11vQ?start=7'),
(378, 'C\'est reparti comme en 46 !', 'comme en 46.mp3', '', 'https://www.youtube.com/embed/nR_agiSh1nw?start=5'),
(379, 'Continuez Jackson', 'Continuez Jackson.mp3', '', 'https://www.youtube.com/embed/mYo9OUy3gDI?start=1'),
(380, 'La citrouille démoniaque', 'la citrouille.mp3', 'Norman Genius', ''),
(381, 'Oh gourmande !', 'oh gourmande jamy.mp3', 'Jamy', 'https://www.youtube.com/embed/FNvKshhLE1o?start=1013'),
(382, 'Oh la mamacitas', 'ohla mamacitas.mp3', 'Norman Genius', ''),
(383, 'Je roucoule, je broie la langue de Molière', 'Je roucoule  je broie la langue de Molière.mp3', '', 'https://www.youtube.com/embed/MKr1CA1r5s4?start=14'),
(384, 'Une entrée fracassante ', 'entree fracassante.mp3', 'Julien Beats ', 'https://www.youtube.com/embed/-bjVX6-N8Us?start=1013'),
(385, 'BRUMAAAAAAA', 'BRUMA.mp3', 'Sabattier, BRUMA', 'https://www.youtube.com/embed/-qZSyCfFDWg?start=158'),
(386, 'Le jamaïcaaaaaaiiiiiin ', 'Le jamaicain.mp3', 'Sabattier', 'https://www.youtube.com/embed/-qZSyCfFDWg?start=110'),
(387, 'Un mètre cube ?', 'un metre cube.mp3', 'Le maillon faible', 'https://www.youtube.com/embed/UBTJ_CHAqNU?start=1296 '),
(388, 'Les œufs et lapins de Pâques', 'cest pour les enfants.mp3', 'Le maillon faible', 'https://www.youtube.com/embed/UBTJ_CHAqNU?start=2132'),
(389, 'Louis XVI a précédé à Louis XV', 'louis xvi.mp3', 'Le maillon faible', 'https://www.youtube.com/embed/UBTJ_CHAqNU?start=916'),
(390, 'Vrai ou faux ? Bleu !', 'vrai ou faux Bleu.mp3', 'Le maillon faible', 'https://www.youtube.com/embed/UBTJ_CHAqNU?start=1847'),
(391, 'The end = cassoulet', 'the end egal cassoulet.mp3', 'Le maillon faible', 'https://www.youtube.com/embed/UBTJ_CHAqNU?start=1559'),
(392, 'Le PAF = l\'Espagne', 'le paf egal lespagne.mp3', 'Le maillon faible', 'https://www.youtube.com/embed/UBTJ_CHAqNU?start=212'),
(393, 'DOLLAR !', 'DOLLAR.mp3', 'Le maillon faible', 'https://www.youtube.com/embed/UBTJ_CHAqNU?start=855'),
(394, 'Bah croc', 'bah croc.mp3', 'Le maillon faible', 'https://www.youtube.com/embed/UBTJ_CHAqNU?start=524'),
(395, 'Le printemps des petits pois ?', 'le printemps des petits pois.mp3', 'Le maillon faible', 'https://www.youtube.com/embed/UBTJ_CHAqNU?start=2398'),
(396, 'C\'est lui le capitaine', 'cest lui le capitaine.mp3', 'Ils l\'ont tous embrassée', 'https://www.youtube.com/embed/IZWoGOUSxkM?start=3'),
(397, 'Complotiste !', 'complotiste remix.mp3', 'Khaled Freak', 'https://www.youtube.com/embed/XrVp6hlePfk'),
(398, 'J-M vous avez une rage incroyable !', 'jm rage incroyable.mp3', 'complotiste', 'https://www.youtube.com/embed/V2EOgyICFEw?start=237'),
(399, 'Aux ordres du POGNON !', 'aux ordres.mp3', 'complotiste', 'https://www.youtube.com/embed/V2EOgyICFEw?start=237'),
(400, 'Ça me scandalise', 'ca me scandalise.mp3', '4 mariages pour 1 lune de miel', ''),
(401, 'Carton rouge', 'carton rouge.mp3', '4 mariages pour 1 lune de miel', ''),
(402, 'Et peng !', 'et peng.mp3', 'Sabattier', 'https://www.youtube.com/embed/23T_Q20Rb0A?start=48'),
(403, 'Le coup du foulard', 'le coup du foulaaaaard.mp3', 'Sabattier', 'https://www.youtube.com/embed/4kkagtURMxg?start=450'),
(404, 'Le coup de clim', 'Le coup de clim.mp3', 'Sabattier', 'https://www.youtube.com/embed/-qZSyCfFDWg?start=150'),
(405, 'Un but somptueux !', 'Un but somptueux.mp3', 'Sabattier', 'https://www.youtube.com/embed/-qZSyCfFDWg?start=58');

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
(22, 'NO GOD PLZ NO', 'NO GOD! PLEASE NO!!! NOOOOOOOOOO.mp3', '', 'https://www.youtube.com/embed/umDr0mPuyQc?start=3'),
(23, 'NICE', 'Nice Meme teneis videooo.mp3', '', 'https://www.youtube.com/embed/3WAOxKOmR90'),
(24, 'NOPE', 'nope.mp3', '', 'https://www.youtube.com/embed/N9iyAeu7wac'),
(25, 'PH Community Intro', 'pornhub-community-intro.mp3', '', 'https://www.youtube.com/embed/DCmh5fvgqq4'),
(26, 'OOF', 'Roblox Death Sound - OOF Sound Effect.mp3', '', 'https://www.youtube.com/embed/HoBa2SyvtpE'),
(27, 'Running in the 90\'s', 'running.mp3', '', 'https://www.youtube.com/embed/rWLoUjz-w-8?start=24'),
(28, 'STONKS', 'STONKS.mp3', '', 'https://www.youtube.com/embed/SMRg9mKcyhM'),
(29, 'To be continued', 'to-be-continued.mp3', '', 'https://www.youtube.com/embed/cPCLFtxpadE?start=41'),
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
(96, 'Another One Infinite', 'DJ Khaled another one.mp3', '', 'https://www.youtube.com/embed/5xntOpWCIfo'),
(97, 'Right in her pussy', 'Fuck her right in the pussy original.mp3', '', 'https://www.youtube.com/embed/CdIT74L8hGI?start=5'),
(98, 'Hello there !', 'Hello there.mp3', '', 'https://www.youtube.com/embed/rEq1Z0bjdwc?start=8'),
(99, 'Hello there general kenobi', 'Hello there general kenobi.mp3', '', 'https://www.youtube.com/embed/rEq1Z0bjdwc?start=8'),
(100, 'Tapped the brakes', 'Gagging on the spoon.mp3', '', 'https://www.youtube.com/embed/6Qbqo8EFd7A?start=2'),
(101, 'RUN', 'RUN.mp3', '', 'https://www.youtube.com/embed/mw2kKyJu9gY?start=125'),
(102, 'AHHHHHH w/ intro', 'AHHHHHH +  intro.mp3', '', 'https://www.youtube.com/embed/yBLdQ1a4-JI'),
(103, 'AHHHHHH', 'AHHHHHH.mp3', '', 'https://www.youtube.com/embed/yBLdQ1a4-JI?start=13'),
(104, 'JOJO Goldenwind', 'JOJO Goldenwind.mp3', '', 'https://www.youtube.com/embed/U0TXIXTzJEY?start=222'),
(105, 'Kirby runnin\'', 'kirby running.mp3', '', 'https://www.youtube.com/embed/QN7ME5tqBsk'),
(106, 'Yoshi.mp4', 'Yoshimp4.mp3', '', 'https://www.youtube.com/embed/q5-cZIpldFk'),
(107, 'Yoshi Flower Garden', 'Yoshi Flower garden.mp3', '', 'https://www.youtube.com/embed/oL5fbozc3kU'),
(108, 'Be Gone THOT', 'Be Gone Thot Original Meme.mp3', '', 'https://www.youtube.com/embed/Kbx7m2qVVA0?start=2'),
(109, 'Elevator music', 'elevator music.mp3', '', 'https://www.youtube.com/embed/xy_NKN75Jhw'),
(110, 'Everybody is here', 'Everybody is here.mp3', '', 'https://www.youtube.com/embed/zeKE0NHUtUw?start=2'),
(111, 'Another One', 'Another one.mp3', '', 'https://www.youtube.com/embed/5xntOpWCIfo'),
(112, 'FBI Open Up', 'FBI OPEN UP.mp3', '', 'https://www.youtube.com/embed/4wX2xBOuzRg'),
(113, 'Stop it, get some help', 'stop it get some help.mp3', '', 'https://www.youtube.com/embed/rb8z2BMrd60?start=48'),
(114, 'We\'ll be right back', 'We ll be right back.mp3', '', '\"https://www.youtube.com/embed/uleM9ZNTE34'),
(115, 'And they don\'t stop coming', 'and they dont stop coming.mp3', 'All star, Shrek, Smash Mouth', 'https://www.youtube.com/embed/eT3BFzSD6YY?start=22'),
(116, 'Somebody once told me', 'Somebody once told me.mp3', 'All star, Shrek, Smash Mouth', 'https://www.youtube.com/embed/L_jWHffIx5E?start=37'),
(117, 'Omae wa mou shindeiru', 'Omae wa mou shindeiru.mp3', 'Omae wa mou shindeiru, Nani', 'https://www.youtube.com/embed/dNQs_Bef_V8?start=4'),
(118, 'NANI ?!', 'NANI.mp3', 'Omae wa mou shindeiru, Nani', 'https://www.youtube.com/embed/dNQs_Bef_V8?start=5');

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
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `inconnus`
--
ALTER TABLE `inconnus`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT pour la table `jday`
--
ALTER TABLE `jday`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT pour la table `keywrds`
--
ALTER TABLE `keywrds`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=180;

--
-- AUTO_INCREMENT pour la table `mv`
--
ALTER TABLE `mv`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT pour la table `soundfr`
--
ALTER TABLE `soundfr`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=411;

--
-- AUTO_INCREMENT pour la table `soundw`
--
ALTER TABLE `soundw`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=119;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
