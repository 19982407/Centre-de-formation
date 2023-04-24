CREATE TABLE Formation(
   Id_FORMATION INT,
   Massehoraire_formation INT,
   Nom_FORMTION VARCHAR(50),
   Sujet_FORMATION VARCHAR(50),
   Catégorie_Formation VARCHAR(50),
   PRIMARY KEY(Id_FORMATION)
);

CREATE TABLE Administrarteur(
   Id_administrateur INT,
   Nom_administrateur VARCHAR(50),
   Prénom_administrateur VARCHAR(50),
   Mail_administrateur VARCHAR(50),
   Télé_administrateur VARCHAR(50),
   PRIMARY KEY(Id_administrateur)
);

CREATE TABLE année_universitaire(
   id_universitaire DATE,
   date_univer DATE,
   PRIMARY KEY(id_universitaire)
);

CREATE TABLE Formateur(
   Id_formateur INT,
   Nom_formateur VARCHAR(50),
   prénom_formateur VARCHAR(50),
   compétance_formateur VARCHAR(50),
   mail_formateur VARCHAR(50),
   Télél_formateur VARCHAR(50),
   Id_administrateur INT NOT NULL,
   PRIMARY KEY(Id_formateur),
   FOREIGN KEY(Id_administrateur) REFERENCES Administrarteur(Id_administrateur)
);

CREATE TABLE session(
   id_session INT,
   Date_DEBUT DATE,
   DATE_FIN DATE,
   nombre_MAX INT NOT NULL,
   Id_formateur INT NOT NULL,
   PRIMARY KEY(id_session),
   FOREIGN KEY(Id_formateur) REFERENCES Formateur(Id_formateur)
);

CREATE TABLE Apprenant(
   id_apprenant INT,
   Nom_apprenant VARCHAR(50),
   Prénom_apprenant VARCHAR(50),
   Email_apprenant VARCHAR(50),
   Télé_apprenant VARCHAR(50),
   Id_FORMATION INT NOT NULL,
   id_session INT NOT NULL,
   PRIMARY KEY(id_apprenant),
   FOREIGN KEY(Id_FORMATION) REFERENCES Formation(Id_FORMATION),
   FOREIGN KEY(id_session) REFERENCES session(id_session)
);

CREATE TABLE Inscription(
   id_inscription INT,
   Nom_inscription VARCHAR(50),
   Année_inscription DATE,
   id_universitaire DATE NOT NULL,
   Id_FORMATION INT NOT NULL,
   id_apprenant INT NOT NULL,
   PRIMARY KEY(id_inscription),
   FOREIGN KEY(id_universitaire) REFERENCES année_universitaire(id_universitaire),
   FOREIGN KEY(Id_FORMATION) REFERENCES Formation(Id_FORMATION),
   FOREIGN KEY(id_apprenant) REFERENCES Apprenant(id_apprenant)
);

CREATE TABLE evaluation(
   id_apprenant INT,
   Id_FORMATION INT,
   id_universitaire DATE,
   NOTE__evaluation DOUBLE,
   PRIMARY KEY(id_apprenant, Id_FORMATION, id_universitaire),
   FOREIGN KEY(id_apprenant) REFERENCES Apprenant(id_apprenant),
   FOREIGN KEY(Id_FORMATION) REFERENCES Formation(Id_FORMATION),
   FOREIGN KEY(id_universitaire) REFERENCES année_universitaire(id_universitaire)
);
