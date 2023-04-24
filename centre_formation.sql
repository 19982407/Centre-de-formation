
-- Structure de la table `administrarteur`

CREATE TABLE `administrarteur` (
  `Id_administrateur` int(11) NOT NULL,
  `Nom_administrateur` varchar(50) DEFAULT NULL,
  `Prénom_administrateur` varchar(50) DEFAULT NULL,
  `Mail_administrateur` varchar(50) DEFAULT NULL,
  `Télé_administrateur` varchar(50) DEFAULT NULL
);

-- Déchargement des données de la table `administrarteur`

INSERT INTO `administrarteur` (`Id_administrateur`, `Nom_administrateur`, `Prénom_administrateur`, `Mail_administrateur`, `Télé_administrateur`) VALUES
(16, 'Faiz', 'Safaa', 'safaa@example.com', '0678980934'),
(17, 'Faiz', 'Safaa', 'safaa@example.com', '0678980934'),
(18, 'Faiz', 'Safaa', 'safaa@example.com', '0678980934'),
(19, 'Faiz', 'Safaa', 'safaa@example.com', '0678980934'),
(20, 'Faiz', 'Safaa', 'safaa@example.com', '0678980934'),
(21, 'Faiz', 'Safaa', 'safaa@example.com', '0678980934'),
(22, 'Faiz', 'Safaa', 'safaa@example.com', '0678980934'),
(23, 'Faiz', 'Safaa', 'safaa@example.com', '0678980934'),
(24, 'Faiz', 'Safaa', 'safaa@example.com', '0678980934'),
(25, 'Faiz', 'Safaa', 'safaa@example.com', '0678980934'),
(26, 'Faiz', 'Safaa', 'safaa@example.com', '0678980934'),
(27, 'Faiz', 'Safaa', 'safaa@example.com', '0678980934'),
(28, 'Faiz', 'Safaa', 'safaa@example.com', '0678980934'),
(29, 'Faiz', 'Safaa', 'safaa@example.com', '0678980934'),
(30, 'Faiz', 'Safaa', 'safaa@example.com', '0678980934'),
(31, 'Faiz', 'Safaa', 'safaa@example.com', '0678980934'),
(32, 'Faiz', 'Safaa', 'safaa@example.com', '0678980934'),
(33, 'Faiz', 'Safaa', 'safaa@example.com', '0678980934');


-- Structure de la table `année_universitaire`
--

CREATE TABLE `année_universitaire` (
  `id_universitaire` date NOT NULL,
  `date_univer` date DEFAULT NULL
);

--
-- Déchargement des données de la table `année_universitaire`
--

INSERT INTO `année_universitaire` (`id_universitaire`, `date_univer`) VALUES
('0000-00-00', '2020-01-01');

-- Structure de la table `apprenant`
--

CREATE TABLE `apprenant` (
  `id_apprenant` int(11) NOT NULL,
  `Nom_apprenant` varchar(50) DEFAULT NULL,
  `Prénom_apprenant` varchar(50) DEFAULT NULL,
  `Email_apprenant` varchar(50) DEFAULT NULL,
  `Télé_apprenant` varchar(50) DEFAULT NULL,
  `Id_FORMATION` int(11) NOT NULL,
  `id_session` int(11) NOT NULL
);

-- Déchargement des données de la table `apprenant`

INSERT INTO `apprenant` (`id_apprenant`, `Nom_apprenant`, `Prénom_apprenant`, `Email_apprenant`, `Télé_apprenant`, `Id_FORMATION`, `id_session`) VALUES
(31, 'Alaoui', 'Ahmed', 'alaoui@gmail.com', '0678980934', 26, 13),
(32, 'Soulami', 'Youness', 'soulami@gmail.com', '0678980934', 26, 13),
(33, 'Abasi', 'Amine', 'abasi@gmail.com', '0678980934', 26, 13),
(34, 'Rahmani', 'Yassine', 'rahmani@gmail.com', '0678980934', 26, 13),
(35, 'Tahiri', 'Khadija', 'tahiri@gmail.com', '0678980934', 26, 13),
(36, 'Alaoui', 'Ahmed', 'alaoui@gmail.com', '0678980934', 26, 13),
(37, 'Soulami', 'Youness', 'soulami@gmail.com', '0678980934', 26, 13),
(38, 'Abasi', 'Amine', 'abasi@gmail.com', '0678980934', 26, 13),
(39, 'Rahmani', 'Yassine', 'rahmani@gmail.com', '0678980934', 26, 13),
(40, 'Tahiri', 'Khadija', 'tahiri@gmail.com', '0678980934', 26, 13);

-- Structure de la table `etat`
--
CREATE TABLE `etat` (
  `Id_etat` int(11) NOT NULL,
  `nom_ETAT` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `etat`
--

INSERT INTO `etat` (`Id_etat`, `nom_ETAT`) VALUES
(20, 'en cours dinscription,'),
(21, 'inscription achevée'),
(22, ' annulée'),
(23, 'en cours'),
(24, 'cloturée'),
(25, 'en cours dinscription,'),
(26, 'inscription achevée'),
(27, ' annulée'),
(28, 'en cours'),
(29, 'cloturée'),
(30, 'en cours dinscription,'),
(31, 'inscription achevée'),
(32, ' annulée'),
(33, 'en cours'),
(34, 'cloturée'),
(35, 'en cours dinscription,'),
(36, 'inscription achevée'),
(37, ' annulée'),
(38, 'en cours'),
(39, 'cloturée'),
(45, 'en cours dinscription,'),
(46, 'inscription achevée'),
(47, ' annulée'),
(48, 'en cours'),
(49, 'cloturée'),
(50, 'en cours dinscription,'),
(51, 'inscription achevée'),
(52, ' annulée'),
(53, 'en cours'),
(54, 'cloturée'),
(55, 'en cours dinscription,'),
(56, 'inscription achevée'),
(57, ' annulée'),
(58, 'en cours'),
(59, 'cloturée'),
(60, 'en cours dinscription,'),
(61, 'inscription achevée'),
(62, ' annulée'),
(63, 'en cours'),
(64, 'cloturée');

-- --------------------------------------------------------

--
-- Structure de la table `evaluation`
--

CREATE TABLE `evaluation` (
  `id_apprenant` int(11) NOT NULL,
  `Id_FORMATION` int(11) NOT NULL,
  `id_universitaire` date NOT NULL,
  `NOTE__evaluation` double DEFAULT NULL
);

-- --------------------------------------------------------

--
-- Structure de la table `formateur`
--

CREATE TABLE `formateur` (
  `Id_formateur` int(11) NOT NULL,
  `Nom_formateur` varchar(50) DEFAULT NULL,
  `prénom_formateur` varchar(50) DEFAULT NULL,
  `compétance_formateur` varchar(50) DEFAULT NULL,
  `mail_formateur` varchar(50) DEFAULT NULL,
  `Télél_formateur` varchar(50) DEFAULT NULL,
  `Id_administrateur` int(11) NOT NULL
);

--
-- Déchargement des données de la table `formateur`
--

INSERT INTO `formateur` (`Id_formateur`, `Nom_formateur`, `prénom_formateur`, `compétance_formateur`, `mail_formateur`, `Télél_formateur`, `Id_administrateur`) VALUES
(1, 'Faiz', 'Safaa', 'SQL, Python', 'safaa@example.com', '0678980934', 16),
(3, 'Faiz', 'Safaa', 'SQL, Python', 'safaa@example.com', '0678980934', 16),
(4, 'Faiz', 'Safaa', 'SQL, Python', 'safaa@example.com', '0678980934', 16),
(5, 'Faiz', 'Safaa', 'SQL, Python', 'safaa@example.com', '0678980934', 16),
(6, 'Faiz', 'Safaa', 'SQL, Python', 'safaa@example.com', '0678980934', 16),
(7, 'Faiz', 'Safaa', 'SQL, Python', 'safaa@example.com', '0678980934', 16),
(9, 'Faiz', 'Safaa', 'SQL, Python', 'safaa@example.com', '0678980934', 16),
(10, 'Faiz', 'Safaa', 'SQL, Python', 'safaa@example.com', '0678980934', 16),
(11, 'Faiz', 'Safaa', 'SQL, Python', 'safaa@example.com', '0678980934', 16),
(12, 'Faiz', 'Safaa', 'SQL, Python', 'safaa@example.com', '0678980934', 16);

-- --------------------------------------------------------

--
-- Structure de la table `formation`
--

CREATE TABLE `formation` (
  `Id_FORMATION` int(11) NOT NULL,
  `Massehoraire_formation` int(11) DEFAULT NULL,
  `Nom_FORMTION` varchar(50) DEFAULT NULL,
  `Sujet_FORMATION` varchar(50) DEFAULT NULL,
  `Catégorie_Formation` varchar(50) DEFAULT NULL
);

--
-- Déchargement des données de la table `formation`
--

INSERT INTO `formation` (`Id_FORMATION`, `Massehoraire_formation`, `Nom_FORMTION`, `Sujet_FORMATION`, `Catégorie_Formation`) VALUES
(26, 20, 'C++', 'introduction for c++', 'programming'),
(27, 15, 'merise', 'basic for merise', 'analyse and conception'),
(28, 30, 'java', 'introduction for java', 'programming'),
(29, 20, 'C++', 'introduction for c++', 'programming'),
(30, 15, 'merise', 'basic for merise', 'analyse and conception'),
(31, 30, 'java', 'introduction for java', 'programming'),
(35, 20, 'C++', 'introduction for c++', 'programming'),
(36, 15, 'merise', 'basic for merise', 'analyse and conception'),
(37, 30, 'java', 'introduction for java', 'programming'),
(38, 20, 'C++', 'introduction for c++', 'programming'),
(39, 15, 'merise', 'basic for merise', 'analyse and conception'),
(40, 30, 'java', 'introduction for java', 'programming'),
(41, 20, 'C++', 'introduction for c++', 'programming'),
(42, 15, 'merise', 'basic for merise', 'analyse and conception'),
(43, 30, 'java', 'introduction for java', 'programming'),
(44, 20, 'C++', 'introduction for c++', 'programming'),
(45, 15, 'merise', 'basic for merise', 'analyse and conception'),
(46, 30, 'java', 'introduction for java', 'programming');

-- --------------------------------------------------------

--
-- Structure de la table `inscription`
--

CREATE TABLE `inscription` (
  `id_inscription` int(11) NOT NULL,
  `Nom_inscription` varchar(50) DEFAULT NULL,
  `Année_inscription` date DEFAULT NULL,
  `id_universitaire` date NOT NULL,
  `Id_FORMATION` int(11) NOT NULL,
  `id_apprenant` int(11) NOT NULL
);

--
-- Déchargement des données de la table `inscription`
--

INSERT INTO `inscription` (`id_inscription`, `Nom_inscription`, `Année_inscription`, `id_universitaire`, `Id_FORMATION`, `id_apprenant`) VALUES
(29, 'c++', '0000-00-00', '0000-00-00', 26, 31),
(30, 'java', '0000-00-00', '0000-00-00', 26, 31),
(31, 'merise', '0000-00-00', '0000-00-00', 26, 31);

-- Structure de la table `session`
--

CREATE TABLE `session` (
  `id_session` int(11) NOT NULL,
  `Date_DEBUT` date DEFAULT NULL,
  `DATE_FIN` date DEFAULT NULL,
  `nombre_MAX` int(11) NOT NULL,
  `Id_formateur` int(11) NOT NULL,
  `Id_etat` int(11) NOT NULL
);

--
-- Déchargement des données de la table `session`
--

INSERT INTO `session` (`id_session`, `Date_DEBUT`, `DATE_FIN`, `nombre_MAX`, `Id_formateur`, `Id_etat`) VALUES
(11, '2020-01-20', '2020-01-24', 10, 1, 20),
(12, '2020-02-10', '2020-03-15', 20, 1, 20),
(13, '2020-04-05', '2020-05-15', 15, 1, 20),
(14, '2020-06-01', '2020-06-15', 10, 1, 20),
(15, '2020-07-10', '2020-07-20', 20, 1, 20),
(16, '2020-01-20', '2020-01-24', 10, 1, 20),
(17, '2020-02-10', '2020-03-15', 20, 1, 20),
(18, '2020-04-05', '2020-05-15', 15, 1, 20),
(19, '2020-06-01', '2020-06-15', 10, 1, 20),
(20, '2020-07-10', '2020-07-20', 20, 1, 20),
(21, '2020-01-20', '2020-01-24', 10, 1, 20),
(22, '2020-02-10', '2020-03-15', 20, 1, 20),
(23, '2020-04-05', '2020-05-15', 15, 1, 20),
(24, '2020-06-01', '2020-06-15', 10, 1, 20),
(25, '2020-07-10', '2020-07-20', 20, 1, 20),
(31, '2020-01-20', '2020-01-24', 10, 1, 20),
(32, '2020-02-10', '2020-03-15', 20, 1, 20),
(33, '2020-04-05', '2020-05-15', 15, 1, 20),
(34, '2020-06-01', '2020-06-15', 10, 1, 20),
(35, '2020-07-10', '2020-07-20', 20, 1, 20),
(36, '2020-01-20', '2020-01-24', 10, 1, 20),
(37, '2020-02-10', '2020-03-15', 20, 1, 20),
(38, '2020-04-05', '2020-05-15', 15, 1, 20),
(39, '2020-06-01', '2020-06-15', 10, 1, 20),
(40, '2020-07-10', '2020-07-20', 20, 1, 20),
(41, '2020-01-20', '2020-01-24', 10, 1, 20),
(42, '2020-02-10', '2020-03-15', 20, 1, 20),
(43, '2020-04-05', '2020-05-15', 15, 1, 20),
(44, '2020-06-01', '2020-06-15', 10, 1, 20),
(45, '2020-07-10', '2020-07-20', 20, 1, 20),
(46, '2020-01-20', '2020-01-24', 10, 1, 20),
(47, '2020-02-10', '2020-03-15', 20, 1, 20),
(48, '2020-04-05', '2020-05-15', 15, 1, 20),
(49, '2020-06-01', '2020-06-15', 10, 1, 20),
(50, '2020-07-10', '2020-07-20', 20, 1, 20);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `administrarteur`
--
ALTER TABLE `administrarteur`
  ADD PRIMARY KEY (`Id_administrateur`);

--
-- Index pour la table `année_universitaire`
--
ALTER TABLE `année_universitaire`
  ADD PRIMARY KEY (`id_universitaire`);

--
-- Index pour la table `apprenant`
--
ALTER TABLE `apprenant`
  ADD PRIMARY KEY (`id_apprenant`),
  ADD KEY `Id_FORMATION` (`Id_FORMATION`),
  ADD KEY `id_session` (`id_session`);

--
-- Index pour la table `etat`
--
ALTER TABLE `etat`
  ADD PRIMARY KEY (`Id_etat`);

--
-- Index pour la table `evaluation`
--
ALTER TABLE `evaluation`
  ADD PRIMARY KEY (`id_apprenant`,`Id_FORMATION`,`id_universitaire`),
  ADD KEY `Id_FORMATION` (`Id_FORMATION`),
  ADD KEY `id_universitaire` (`id_universitaire`);

--
-- Index pour la table `formateur`
--
ALTER TABLE `formateur`
  ADD PRIMARY KEY (`Id_formateur`),
  ADD KEY `Id_administrateur` (`Id_administrateur`);

--
-- Index pour la table `formation`
--
ALTER TABLE `formation`
  ADD PRIMARY KEY (`Id_FORMATION`);

--
-- Index pour la table `inscription`
--
ALTER TABLE `inscription`
  ADD PRIMARY KEY (`id_inscription`),
  ADD KEY `id_universitaire` (`id_universitaire`),
  ADD KEY `Id_FORMATION` (`Id_FORMATION`),
  ADD KEY `id_apprenant` (`id_apprenant`);

--
-- Index pour la table `session`
--
ALTER TABLE `session`
  ADD PRIMARY KEY (`id_session`),
  ADD KEY `Id_formateur` (`Id_formateur`),
  ADD KEY `Id_etat` (`Id_etat`);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `apprenant`
--
ALTER TABLE `apprenant`
  ADD CONSTRAINT `apprenant_ibfk_1` FOREIGN KEY (`Id_FORMATION`) REFERENCES `formation` (`Id_FORMATION`),
  ADD CONSTRAINT `apprenant_ibfk_2` FOREIGN KEY (`id_session`) REFERENCES `session` (`id_session`);

--
-- Contraintes pour la table `evaluation`
--
ALTER TABLE `evaluation`
  ADD CONSTRAINT `evaluation_ibfk_1` FOREIGN KEY (`id_apprenant`) REFERENCES `apprenant` (`id_apprenant`),
  ADD CONSTRAINT `evaluation_ibfk_2` FOREIGN KEY (`Id_FORMATION`) REFERENCES `formation` (`Id_FORMATION`),
  ADD CONSTRAINT `evaluation_ibfk_3` FOREIGN KEY (`id_universitaire`) REFERENCES `année_universitaire` (`id_universitaire`);

--
-- Contraintes pour la table `formateur`
--
ALTER TABLE `formateur`
  ADD CONSTRAINT `formateur_ibfk_1` FOREIGN KEY (`Id_administrateur`) REFERENCES `administrarteur` (`Id_administrateur`);

--
-- Contraintes pour la table `inscription`
--
ALTER TABLE `inscription`
  ADD CONSTRAINT `inscription_ibfk_1` FOREIGN KEY (`id_universitaire`) REFERENCES `année_universitaire` (`id_universitaire`),
  ADD CONSTRAINT `inscription_ibfk_2` FOREIGN KEY (`Id_FORMATION`) REFERENCES `formation` (`Id_FORMATION`),
  ADD CONSTRAINT `inscription_ibfk_3` FOREIGN KEY (`id_apprenant`) REFERENCES `apprenant` (`id_apprenant`);

--
-- Contraintes pour la table `session`
--
ALTER TABLE `session`
  ADD CONSTRAINT `session_ibfk_1` FOREIGN KEY (`Id_formateur`) REFERENCES `formateur` (`Id_formateur`),
  ADD CONSTRAINT `session_ibfk_2` FOREIGN KEY (`Id_etat`) REFERENCES `etat` (`Id_etat`);
COMMIT;