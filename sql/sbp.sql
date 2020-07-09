-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : jeu. 09 juil. 2020 à 22:13
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
(231, 'Ya pas de panneaux', 'YA PAS DE PANNEAUX VIDEO ENTIERE.mp3'),
(232, 'Question vite répondue ', 'question vite repondue.mp3'),
(233, 'Jeune entrepreneur bus', 'jeune entrepreneur verre.mp3'),
(234, 'Jeune entrepreneur étud', 'jeune entrepreneur études.mp3'),
(235, 'Jeune entrepreneur RS', 'jeune entrepreneur rs.mp3'),
(236, 'Tu prends caleçons sales ', 'Tu prends tes calcons sales.mp3'),
(237, 'Et tu hors de ma vue', 'et tu hors de ma vue.mp3'),
(238, 'Mais t\'as pas de valeurs', 'mais ta pas de valeur.mp3'),
(239, 'COMBIEN ?!', 'COMBIEN !.mp3'),
(240, 'D7D8 short', 'D7D8.mp3'),
(241, 'D7D8 Mais je suis Pamela', 'd7d8 pamela.mp3'),
(242, 'D7D8 Full', 'D7D8 full.mp3'),
(243, 'Raid Saxo Legends', '1. Raid Saxo Legends.mp3'),
(244, 'Lofi de merde', '2. Lofi de Merde.mp3'),
(245, 'Minecraft', '3. Minecraft.mp3'),
(246, 'CEO de mon coeur', '4. CEO de mon Coeur.mp3'),
(247, 'Twitch ASMR', '5. TWITCH ASMR.mp3'),
(251, 'Qui fume ici ? Full', 'méthode commando pour arrêter de fumer qui fume ici (Marius commandos marine).mp3'),
(252, 'Qui fume ici ?', 'qui fume ici.mp3'),
(253, 'Bien ou quoi ?', 'bien ou quoi.mp3'),
(254, 'Pièce ', 'piece.mp3'),
(255, 'Serguei Bubka est debout ', 'Serguei Bubka est debout.mp3'),
(256, 'Record du monde', 'Record du monde.mp3'),
(2258, 'Voila le gâteau', 'Voila le gateau.mp3'),
(2259, 'Regardez moi ça', 'regarder moi ça.mp3'),
(2260, 'Regardez un peu', 'regardez un peu.mp3'),
(2261, 'Et vlan !', 'et vlan.mp3'),
(2262, 'AROUF et l\'anglais', '[AROUF GANGSTA] Casse les couilles à parler anglais !.mp3'),
(2263, 'Je veux faire l\'amour lg', '[MEME] JE VEUX FAIRE L\'AMOUR !.mp3'),
(2264, 'Je veux faire l\'amour crt', '[MEME] JE VEUX FAIRE L\'AMOUR short.mp3'),
(2265, 'Pensais pas ça de toi', '[MEME] Mais je pensais pas ça de toi ! TK.mp3'),
(2266, 'Salut mon pote !', '[MEME] Salut mon pote.mp3'),
(2267, 'je suis Abasourdi', 'A-BA-SOUR-DI.mp3'),
(2268, 'Accordéon court', 'Accordeon court.mp3'),
(2269, 'Accordéon long', 'Accordeon long.mp3'),
(2270, 'AIE AIE AIE DJ', 'AIE AIE AIE.mp3'),
(2271, 'Allez méga fiesta !', 'Allez mega fiesta.mp3'),
(2272, 'ATTENTION CONSEIL IMP', 'ATTENTION CONSEIL IMPORTANT.mp3'),
(2273, 'Canard coin coin short', 'Canard coin coin court.mp3'),
(2274, 'Canard coin coin long', 'Canard coin coin long.mp3'),
(2275, 'Qui est à l\'envers ?', 'C\'est moi qui suis à l\'envers.mp3'),
(2276, 'Chavirer un chameau', 'chavirer un chameau.mp3'),
(2277, 'Comme le disait Yoda', 'comme le disait yoda.mp3'),
(2278, 'Matelas bouche Moundir', 'elle parle ces des matelas qui sortent de sa bouche.mp3'),
(2279, 'Ému mais pas des yeux', 'emu mais pas des yeux.mp3'),
(2280, 'Fanfare 1 Zanne', 'Fanfare boffe.mp3'),
(2281, 'FDP ma lumière', 'FDP ma lumiere.mp3'),
(2282, 'Frappe moi = EMPOISONNÉ', 'Frappe moi je t\'empoisonne.mp3'),
(2283, 'HAN OUAIS', 'Han ouais.mp3'),
(2284, 'IBIZA DJ ', 'IBIZA.mp3'),
(2285, 'J\'adore l\'eau JCVD', 'JCVD J\'adore l\'eau, dans 2030 ans y en aura plus..mp3'),
(2286, 'JE LEUR PISSE AU CUL', 'JE LEURS PISSE AU CUL !.mp3'),
(2287, 'JE PORTE PLAINTE CYRIX', 'Je porte plainte pour diffamation, harcèlement et incitation à la haine.mp3'),
(2288, 'J\'VAIS BOIRE TON SANG', 'J\'vais t\'enculr je vais te briser tes os j\'vais boire ton sang.mp3'),
(2289, 'POUDRE DE PERLIMPINPIN', 'la poudre de perlimpinpin.mp3'),
(2290, 'Le sytème gargamel', 'le systeme gargamel.mp3'),
(2291, 'Motus FDP Maskey', 'Maskey - Motus FDP.mp3'),
(2292, 'Moundir Aventurier lait', 'Moundir Aventurier du lait.mp3'),
(2293, 'Fragile du moteur', 'Moundir est fragile du moteur.mp3'),
(2294, 'Moundir et le 14 juillet', 'Moundir et le 14 juillet.mp3'),
(2295, 'Moundir Punchline OMG', 'moundir punchlines.mp3'),
(2296, 'J\'transpire du genou', 'moundir transpire du genou.mp3'),
(2297, 'Pas assez divertis ?!', 'NE VOUS ETES VOUS PAS ASSEZ DIVERTIS - GLADIATOR.mp3'),
(2298, 'Oh yeah yeah yes DJ', 'oh yeah yeah yes.mp3'),
(2299, 'Zé Parti !', 'ZÉ PARTI.mp3'),
(2300, 'OKAYYYYY let\'s go ! long', 'OKAYYY LETS GO - FORAIN long.mp3'),
(2301, 'OKAYYYYY let\'s go ! court', 'OKAYYY LETS GO - FORAIN short.mp3'),
(2302, 'PK aussi corrompu ?! crt', 'pk etre aussi corrompu short.mp3'),
(2303, 'PK aussi corrompu ?! long', 'pk etre aussi corrompu long.mp3'),
(2304, 'SQUALALA => partis', 'SQUALALA NOUS SOMME PARTIS ! Zelda.mp3'),
(2305, 'Tu n\'est pas qualifiée !', 'Tu n\'est pas qualifié !.mp3'),
(2306, 'Vous êtes fatigueyyy ?', 'vous etes fatigues.mp3'),
(2307, 'Envie de Clubber', '6. Envie de Clubber.mp3'),
(2308, 'Big Art', '7. Big Art.mp3'),
(2309, 'Grosse Annonce', '8. Grosse Annonce.mp3'),
(2310, 'GOULAG K2A', 'GOULAG K2A.mp3'),
(2311, 'Appels de phares', 'Les appels de phares.mp3'),
(2312, 'Bas du dos bombé', 'bas du dos bien bombé.mp3'),
(2313, 'Sac à dos non vidé', 'j\'ai pas vidé le sac a dos.mp3'),
(2314, 'Finir dans sa lune', 'je vais finir sur sa lune.mp3');

-- --------------------------------------------------------

--
-- Structure de la table `soundw`
--

CREATE TABLE `soundw` (
  `ID` int(10) UNSIGNED NOT NULL,
  `Nom` varchar(255) CHARACTER SET utf8 NOT NULL,
  `Son` varchar(255) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `soundw`
--

INSERT INTO `soundw` (`ID`, `Nom`, `Son`) VALUES
(1, 'Crab Rave', 'crab-rave.mp3'),
(2, 'Curb your enthusiasm', 'curb-your-enthusiasm.mp3'),
(3, 'Gamecube Intro', 'gamecube_intro.mp3'),
(4, 'Big OOF', 'BIG OOF.mp3'),
(5, 'Anime WOW', 'anime-wow-sound-effect.mp3'),
(6, 'Coffin meme', 'Coffin dance meme original clip.mp3'),
(7, 'A lot of damage', 'a lot of damage !.mp3'),
(8, 'A lot a damage FULL', 'A lot of damage litle more.mp3'),
(9, 'Do a barrel roll ', 'barrelroll.swf.mp3'),
(10, 'CR7 SUUUUUU', 'cr_suuu.mp3'),
(11, 'Drop the bass', 'd-d-d-d-drop-the-bass.mp3'),
(12, 'Minecraft death', 'Death sound in Minecraft.mp3'),
(13, 'Déja vu', 'deja-vu.mp3'),
(14, 'Law &amp; Order ', 'dun_dun_1.mp3'),
(15, 'Ah shit here we go again', 'GTA San Andreas - Ah shit, here we go again..mp3'),
(16, 'Inception', 'inceptionbutton.mp3'),
(17, 'Hey listen', 'hey_listen.mp3'),
(18, 'King Croc', 'King Croc Song -- \'Wild Animal Sports Day\' 帰ってきた野生動物.mp3'),
(19, 'L &amp; G we got him', 'ladies-and-gentlemen-we-got-him-song.mp3'),
(20, 'Coffin meme LONG', 'LONG Coffin Dance Meme Template.mp3'),
(21, 'LOUD GUY ORGASM', 'LOUD BLACK GUY ORGASM - with Subtitles.mp3'),
(22, 'NO GOD PLZ NO', 'NO GOD! PLEASE NO!!! NOOOOOOOOOO.mp3'),
(23, 'NICE', 'Nice Meme teneis videooo.mp3'),
(24, 'NOPE', 'nope.mp3'),
(25, 'PH Community Intro', 'pornhub-community-intro.mp3'),
(26, 'OOF', 'Roblox Death Sound - OOF Sound Effect.mp3'),
(27, 'Running in the 90\'s', 'running.mp3'),
(28, 'STONKS', 'STONKS.mp3'),
(29, 'To be continued', 'to-be-continued.mp3'),
(30, 'Ultimate ', 'ultimate-respect-button_MdJiOOn.mp3'),
(31, 'WOW (wink)', 'Waw meme.mp3'),
(32, 'How about a little more', 'how about a little more.mp3'),
(33, 'PEWDS pickle chorus', 'PEWDS CHORUS.mp3'),
(34, 'PEWDS Into a pickle', 'PEWDS into a pickle.mp3'),
(35, 'Objection', 'phoenix-objection.mp3'),
(36, 'What ? WTF ?', 'wat. WTF!.mp3'),
(37, 'Why are we still here ', 'Why are we still here just to suffer Sound Effect.mp3'),
(38, 'Why are you running', 'Why are You Running.mp3'),
(39, 'OOF Sports Theme', 'Wii Sports Theme but with the Roblox Death Sound.mp3'),
(40, 'You\'re breathtaking', 'You\'re Breathtaking! KEANU REEVES.mp3'),
(41, 'They ask you how you are', 'they-ask-you-how-you-are-and-you-just-have-to-say-that-youre-fine-sound-effect_IgYM1CV.mp3'),
(42, 'Excuse me princess Zelda', 'Excuse_Me_Princess.mp3'),
(43, 'So yg 2 be such a buffoon', 'So young to be such a bufoon.mp3'),
(44, 'YAY Kids cheering', 'kids_cheering.mp3'),
(45, 'Thomas the train EARRAPE', 'Thomas the train engine EAR RAPE.mp3'),
(46, 'ISSOU Long', 'issou 1.mp3'),
(47, 'ISSOU', 'issou 2.mp3'),
(48, 'My man', 'my-man.mp3'),
(49, 'Don\'t do it i\'m a virgin', 'no-dont-do-it-im-a-virgin.mp3'),
(50, 'Pumped up kicks remix', 'passinho-do-gstv-pumped-up-kicks.mp3'),
(51, 'Sitcom laughs', 'sitcom-laughing-1.mp3'),
(52, 'Cyka blyat hardbass', 'suka-blyat_sYftCfd.mp3'),
(53, 'Sacha Grey orgasm', 'sasha grey orgasm.mp3'),
(54, 'Ear rape moaning girl', 'ear-rape-moaning-girl-troll-sound-crappy-long-edition-loudtronix-hq.mp3'),
(55, 'Error WIndows', 'erro.mp3'),
(56, 'Just Sauce Song Big Shaq', 'Big Shaq - Just Sauce Song.mp3'),
(57, 'The Ting Goes Runnin 90\'s', 'The Ting Goes Running In The 90s.mp3'),
(58, 'Quick Maths', 'QuickMaths.mp3'),
(59, 'Just Sauce RAW SAUCE', 'Just Sauce Raw Sauce.mp3'),
(60, 'The Ting goes Skraaaaaaa', 'The Ting goes Skraaaaa.mp3'),
(61, 'Hit or Miss ?', 'Hit or Miss.mp3'),
(62, 'TIKO Mode', 'TIKO Mode.mp3'),
(63, 'Bitconneeeeeect', 'Bitconnect wow.mp3'),
(64, 'Childish Bitconnect', 'Childish Biconnect.mp3'),
(65, 'Bitconnect EDM Remix', 'BITCONNECT EDM REMIX (FULL SONG).mp3'),
(66, 'BLEND S INTRO', 'BLEND S INTRO.mp3'),
(67, 'FLOOR GANG OOH !', 'FLOOR GANG OOH!!!.mp3'),
(68, 'OMG WOW OMG', 'OMG WOW OMG.mp3'),
(69, 'PEWDS LWIAY HARDBASS', 'PEWDS LWIAY HARDBASS.mp3'),
(70, 'WIDER WALK', 'WIDER WALK.mp3'),
(71, 'COOFfin Dance', 'COOFfin dance.mp3');

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
-- Index pour la table `soundw`
--
ALTER TABLE `soundw`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `Nom` (`Nom`),
  ADD KEY `Son` (`Son`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

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
