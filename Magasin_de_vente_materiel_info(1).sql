-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le : jeu. 02 déc. 2021 à 11:56
-- Version du serveur :  10.4.18-MariaDB
-- Version de PHP : 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `Magasin_de_vente_materiel_info`
--

-- --------------------------------------------------------

--
-- Structure de la table `article`
--

CREATE TABLE `article` (
  `num_art` int(11) NOT NULL,
  `nom_art` varchar(60) NOT NULL,
  `prix_art` float NOT NULL,
  `quantite_art` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `article`
--

INSERT INTO `article` (`num_art`, `nom_art`, `prix_art`, `quantite_art`) VALUES
(1, 'hearphone', 1000, 30),
(2, 'pochette', 2000, 20),
(3, 'chargeur', 2500, 15),
(4, 'pen drive', 5000, 28),
(5, 'laptop bag', 8000, 16);

-- --------------------------------------------------------

--
-- Structure de la table `authentification`
--

CREATE TABLE `authentification` (
  `login` varchar(60) NOT NULL,
  `mot_de_passe` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `authentification`
--

INSERT INTO `authentification` (`login`, `mot_de_passe`) VALUES
('admin', 'admin'),
('root', 'root');

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

CREATE TABLE `client` (
  `num_client` int(11) NOT NULL,
  `nom` varchar(60) NOT NULL,
  `adresse` varchar(40) NOT NULL,
  `localite` varchar(60) NOT NULL,
  `categorie` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `client`
--

INSERT INTO `client` (`num_client`, `nom`, `adresse`, `localite`, `categorie`) VALUES
(1, 'clarisse denembeye', '40 rue hadjarai', 'walia', 'etudiante'),
(2, 'aliance doumngar', '30 rue chari', 'djari', 'etudiante'),
(3, 'moustapha adoum', 'diguel', 'Diguel', 'vendeur ambulant'),
(4, 'achta amine', 'rue 30, chad', 'Kousseri', 'commercante'),
(5, 'Adoumta felicienne', '76 DD, jjdk', 'diguessou', 'debrouillar');

-- --------------------------------------------------------

--
-- Structure de la table `commande`
--

CREATE TABLE `commande` (
  `num_com` int(11) NOT NULL,
  `date_com` date NOT NULL,
  `date_liv` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `commande`
--

INSERT INTO `commande` (`num_com`, `date_com`, `date_liv`) VALUES
(1, '2021-12-02', '2021-12-02'),
(2, '2021-12-03', '2021-12-10'),
(3, '2021-12-02', '2021-12-07'),
(4, '2021-12-02', '2021-12-04'),
(5, '2021-12-02', '2021-12-06');

-- --------------------------------------------------------

--
-- Structure de la table `detail`
--

CREATE TABLE `detail` (
  `num_com` int(11) NOT NULL,
  `num_prod` int(11) NOT NULL,
  `quantite_prod` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `detail`
--

INSERT INTO `detail` (`num_com`, `num_prod`, `quantite_prod`) VALUES
(1, 1, 4),
(2, 2, 10),
(3, 3, 3),
(4, 4, 13),
(5, 5, 9);

-- --------------------------------------------------------

--
-- Structure de la table `employe`
--

CREATE TABLE `employe` (
  `num_empl` int(11) NOT NULL,
  `nom_empl` varchar(60) NOT NULL,
  `type` varchar(60) NOT NULL,
  `contrat` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `employe`
--

INSERT INTO `employe` (`num_empl`, `nom_empl`, `type`, `contrat`) VALUES
(1, 'djalabi mahamat', 'employe', 'CDD'),
(2, 'Ronelyam Sania', 'employe', 'CDD'),
(3, 'Idriss mahamat ahmat', 'employe', 'CDD'),
(4, 'Kepeulba Elvis', 'employe', 'CDD'),
(5, 'Constant danimbe', 'employe', 'CDI');

-- --------------------------------------------------------

--
-- Structure de la table `enumerateur`
--

CREATE TABLE `enumerateur` (
  `cheque` varchar(60) NOT NULL,
  `liquide` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `enumerateur`
--

INSERT INTO `enumerateur` (`cheque`, `liquide`) VALUES
('10000', '0'),
('0', '12000'),
('35000', '0'),
('30000', '0'),
('0', '25000');

-- --------------------------------------------------------

--
-- Structure de la table `facture`
--

CREATE TABLE `facture` (
  `num_fact` int(11) NOT NULL,
  `mode_payement` varchar(60) NOT NULL,
  `montant` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `facture`
--

INSERT INTO `facture` (`num_fact`, `mode_payement`, `montant`) VALUES
(1, 'liquide', 10000),
(2, 'cheque', 45000),
(3, 'cheque', 300000),
(4, 'liquide', 75000),
(5, 'cheque', 250000);

-- --------------------------------------------------------

--
-- Structure de la table `fournisseur`
--

CREATE TABLE `fournisseur` (
  `num_f` int(11) NOT NULL,
  `nom_f` varchar(60) NOT NULL,
  `ville_f` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `fournisseur`
--

INSERT INTO `fournisseur` (`num_f`, `nom_f`, `ville_f`) VALUES
(1, 'doumbawoula ezert', 'bebalem'),
(2, 'abednezar netoloum', 'doba'),
(3, 'hissein maouloud', 'massaguette'),
(4, 'alio adoum nassir', 'mao');

-- --------------------------------------------------------

--
-- Structure de la table `livraison`
--

CREATE TABLE `livraison` (
  `num_liv` int(11) NOT NULL,
  `num_client` int(11) NOT NULL,
  `addresse` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `livraison`
--

INSERT INTO `livraison` (`num_liv`, `num_client`, `addresse`) VALUES
(1, 1, 'maro'),
(2, 2, 'doba'),
(3, 3, 'n\'djamena');

-- --------------------------------------------------------

--
-- Structure de la table `produit`
--

CREATE TABLE `produit` (
  `num_prod` int(11) NOT NULL,
  `designation` varchar(60) NOT NULL,
  `marque` varchar(60) NOT NULL,
  `prix` float NOT NULL,
  `quante_stock` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `produit`
--

INSERT INTO `produit` (`num_prod`, `designation`, `marque`, `prix`, `quante_stock`) VALUES
(1, 'lapto ', 'HP', 23000, 30),
(2, 'Laptop', 'dell', 300000, 40),
(3, 'laptop', 'lenovo', 150000, 50),
(4, 'appareil bureautique', 'desktop hp', 190000, 24),
(5, 'telephone', 'android techno', 85000, 50);

-- --------------------------------------------------------

--
-- Structure de la table `vente`
--

CREATE TABLE `vente` (
  `num_client` int(11) NOT NULL,
  `num_prod` int(11) NOT NULL,
  `date` date NOT NULL,
  `quantité` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `vente`
--

INSERT INTO `vente` (`num_client`, `num_prod`, `date`, `quantité`) VALUES
(2, 1, '2021-12-03', 5),
(1, 4, '2021-12-02', 7),
(3, 2, '2021-12-02', 23),
(5, 3, '2021-12-02', 1),
(4, 5, '2021-12-02', 1);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
