-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mar. 02 juin 2020 à 22:07
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
-- Structure de la table `sound`
--

CREATE TABLE `sound` (
  `ID` int(10) UNSIGNED NOT NULL,
  `Nom` varchar(255) CHARACTER SET utf8 NOT NULL,
  `Son` varchar(255) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `sound`
--

INSERT INTO `sound` (`ID`, `Nom`, `Son`) VALUES
(1, 'Ah sa mère !', 'ah-sa-mere.mp3'),
(2, 'Oui et alors ?', '21.05 oui et alors.mp3'),
(4, 'Alors écoute moi bien', 'Alors écoute moi bien ! (BigFlo).mp3'),
(5, 'Il a taper le péage ', 'ah sa mere taper péage.mp3'),
(6, 'Avec du savon !', 'Avec du savon !.mp3'),
(7, 'Bah oui connard !', 'Alpha cast bah oui connard.mp3'),
(8, 'Carottes fondantes', 'carottes fondantes.mp3'),
(9, 'Rire de droite', 'Antoine Daniel - Rire de droite.mp3'),
(10, 'Caca dans les raviolis', 'caca dans les raviolis.mp3'),
(11, 'Vas y ouvre ta gueule', '[ thekairi78 Sound ] - Ouvre Ta Gueule.mp3'),
(13, 'Il vient de tuer le concours !', '18082013 Teddy Tamgho, 6ème saut à 18,04m.mp3'),
(14, 'How about a little more ?', 'A lot of damage litle more.mp3'),
(15, 'A lot of damage', 'Well that\'s a lot of damage !.mp3'),
(16, 'Anime Wow', 'anime-wow-sound-effect.mp3'),
(17, 'Arouf Gangsta', 'AROUG GANSTA.mp3');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `sound`
--
ALTER TABLE `sound`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `Son` (`Son`),
  ADD KEY `Nom` (`Nom`) USING BTREE;

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `sound`
--
ALTER TABLE `sound`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
