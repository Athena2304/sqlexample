-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : ven. 24 mai 2024 à 05:16
-- Version du serveur : 8.0.30
-- Version de PHP : 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `gestion_campus`
--

-- --------------------------------------------------------

--
-- Structure de la table `campus`
--

CREATE TABLE `campus` (
  `id` int NOT NULL,
  `nom` varchar(33) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `campus`
--

INSERT INTO `campus` (`id`, `nom`) VALUES
(1, 'Bruxelles'),
(2, 'Orleans'),
(3, 'Amiens'),
(4, 'Paris');

-- --------------------------------------------------------

--
-- Structure de la table `etudiants`
--

CREATE TABLE `etudiants` (
  `id` int NOT NULL,
  `nom` varchar(33) NOT NULL,
  `campus_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `etudiants`
--

INSERT INTO `etudiants` (`id`, `nom`, `campus_id`) VALUES
(1, 'etudiant 1', 1),
(2, 'etudiant 2', 1),
(3, 'etudiant 3', 1),
(4, 'etudiant 4', 1),
(5, 'etudiant 5', 1),
(6, 'etudiant 6', 2),
(7, 'etudiant 7', 2),
(8, 'etudiant 8', 2),
(9, 'etudiant 9', 2),
(10, 'etudiant 10', 2),
(11, 'etudiant 11', 3),
(12, 'etudiant 12', 3),
(13, 'etudiant 13', 3),
(14, 'etudiant 14', 3),
(15, 'etudiant 15', 3),
(16, 'etudiant 16', 4),
(17, 'etudiant 17', 4),
(18, 'etudiant 18', 4),
(19, 'etudiant 19', 4),
(20, 'etudiant 20', 4);

-- --------------------------------------------------------

--
-- Structure de la table `formateurs`
--

CREATE TABLE `formateurs` (
  `id` int NOT NULL,
  `nom` varchar(33) NOT NULL,
  `campus_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `formateurs`
--

INSERT INTO `formateurs` (`id`, `nom`, `campus_id`) VALUES
(1, 'formateur 1', 1),
(2, 'formateur 2', 1),
(3, 'formateur 3', 2),
(4, 'formateur 4', 2),
(5, 'formateur 5', 3),
(6, 'formateur 6', 3),
(7, 'formateur 7', 4),
(8, 'formateur 8', 4),
(9, 'formateur 9', 1),
(10, 'formateur 10', 2),
(13, 'formateur 1', 2),
(14, 'formateur 2', 4);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `campus`
--
ALTER TABLE `campus`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `etudiants`
--
ALTER TABLE `etudiants`
  ADD PRIMARY KEY (`id`),
  ADD KEY `campus_id` (`campus_id`);

--
-- Index pour la table `formateurs`
--
ALTER TABLE `formateurs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `campus_id` (`campus_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `campus`
--
ALTER TABLE `campus`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `etudiants`
--
ALTER TABLE `etudiants`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT pour la table `formateurs`
--
ALTER TABLE `formateurs`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `etudiants`
--
ALTER TABLE `etudiants`
  ADD CONSTRAINT `etudiants_ibfk_1` FOREIGN KEY (`campus_id`) REFERENCES `campus` (`id`);

--
-- Contraintes pour la table `formateurs`
--
ALTER TABLE `formateurs`
  ADD CONSTRAINT `formateurs_ibfk_1` FOREIGN KEY (`campus_id`) REFERENCES `campus` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
