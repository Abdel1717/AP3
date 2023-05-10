# AP3 EL BOURIMI Abderrahim

# CMD : 

![image](https://github.com/Abdel1717/AP3/assets/75304006/f753285e-c92f-4ad6-87c5-5ab3b8778472)



# Scripts SQL : 

CREATE TABLE Tarifs(
   idTarif INT IDENTITY,
   nomTarif VARCHAR(50),
   prixTarif INT,
   PRIMARY KEY(idTarif)
);

CREATE TABLE Categorie(
   idCategorie INT IDENTITY,
   nomCategorie VARCHAR(50),
   PRIMARY KEY(idCategorie)
);

CREATE TABLE Lieu(
   idLieu INT IDENTITY,
   nomLieu VARCHAR(50),
   PRIMARY KEY(idLieu)
);

CREATE TABLE CalendrierEntrainement(
   idCalendrier INT IDENTITY,
   dateCalendrier DATE,
   heureCalendrier TIME,
   idCategorie INT NOT NULL,
   PRIMARY KEY(idCalendrier),
   FOREIGN KEY(idCategorie) REFERENCES Categorie(idCategorie)
);

CREATE TABLE Réunions(
   idRéunion INT IDENTITY,
   objet VARCHAR(50),
   PRIMARY KEY(idRéunion)
);

CREATE TABLE OrdreDuJour(
   idRéunion INT,
   idOrdre INT IDENTITY,
   nomOrdre VARCHAR(50),
   PRIMARY KEY(idRéunion, idOrdre),
   FOREIGN KEY(idRéunion) REFERENCES Réunions(idRéunion)
);

CREATE TABLE Personne(
   idPersonne INT IDENTITY,
   nomPersonne VARCHAR(50),
   prenomPersonne VARCHAR(50),
   Age INT,
   email VARCHAR(50),
   identifiant VARCHAR(50),
   mot_de_passe VARCHAR(50),
   idTarif INT NOT NULL,
   PRIMARY KEY(idPersonne),
   FOREIGN KEY(idTarif) REFERENCES Tarifs(idTarif)
);

CREATE TABLE Joueur(
   idPersonne INT,
   numero VARCHAR(50),
   poste VARCHAR(50),
   idCategorie INT NOT NULL,
   PRIMARY KEY(idPersonne),
   FOREIGN KEY(idPersonne) REFERENCES Personne(idPersonne),
   FOREIGN KEY(idCategorie) REFERENCES Categorie(idCategorie)
);

CREATE TABLE Entraineur(
   idPersonne INT,
   formation VARCHAR(50),
   tauxHorraire VARCHAR(50),
   PRIMARY KEY(idPersonne),
   FOREIGN KEY(idPersonne) REFERENCES Personne(idPersonne)
);

CREATE TABLE Evenement_(
   idEvenement_ INT IDENTITY,
   nomEvenement VARCHAR(50),
   dateEvenement DATE,
   resultat VARCHAR(50),
   idPersonne INT NOT NULL,
   idCategorie INT NOT NULL,
   idLieu INT NOT NULL,
   PRIMARY KEY(idEvenement_),
   FOREIGN KEY(idPersonne) REFERENCES Entraineur(idPersonne),
   FOREIGN KEY(idCategorie) REFERENCES Categorie(idCategorie),
   FOREIGN KEY(idLieu) REFERENCES Lieu(idLieu)
);

CREATE TABLE Participer(
   idPersonne INT,
   idCalendrier INT,
   travailRealisé VARCHAR(50),
   PRIMARY KEY(idPersonne, idCalendrier),
   FOREIGN KEY(idPersonne) REFERENCES Personne(idPersonne),
   FOREIGN KEY(idCalendrier) REFERENCES CalendrierEntrainement(idCalendrier)
);

CREATE TABLE Reserver(
   idPersonne INT,
   idEvenement_ INT,
   placeReservation DATE,
   PRIMARY KEY(idPersonne, idEvenement_),
   FOREIGN KEY(idPersonne) REFERENCES Personne(idPersonne),
   FOREIGN KEY(idEvenement_) REFERENCES Evenement_(idEvenement_)
);

CREATE TABLE Organiser(
   idCalendrier INT,
   idPersonne INT,
   Absence VARCHAR(50),
   PRIMARY KEY(idCalendrier, idPersonne),
   FOREIGN KEY(idCalendrier) REFERENCES CalendrierEntrainement(idCalendrier),
   FOREIGN KEY(idPersonne) REFERENCES Entraineur(idPersonne)
);

CREATE TABLE Plannifier(
   idPersonne INT,
   idRéunion INT,
   PRIMARY KEY(idPersonne, idRéunion),
   FOREIGN KEY(idPersonne) REFERENCES Entraineur(idPersonne),
   FOREIGN KEY(idRéunion) REFERENCES Réunions(idRéunion)
);

CREATE TABLE Remplacer(
   idPersonne INT,
   idPersonne_1 INT,
   PRIMARY KEY(idPersonne, idPersonne_1),
   FOREIGN KEY(idPersonne) REFERENCES Entraineur(idPersonne),
   FOREIGN KEY(idPersonne_1) REFERENCES Entraineur(idPersonne)
);
