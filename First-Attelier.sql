CREATE database diamant;
use diamant;

/*create la table intvites */
Create table Invités (
	id_invite int primary key ,
    nom varchar(225),
    statut varchar(225)
    );
    drop table Invités
/*create la table rooms*/

create table Rooms (
	id_room int primary key,
    nom varchar(225)    
    );
    
    drop table Mouvements
    /* create la table Mouvements*/
create table Mouvements(
	id int primary key,
    id_invite int ,
    id_room int ,
    timee date,
    foreign key (id_invite) references Invités(id_invite),
	foreign key (id_room) references Rooms(id_room)
    );
    
    /* create la table object */
    
create table Objets(
	id_objet int primary key,
    nom_objet varchar(225),
    id_room int ,
        foreign key (id_room) references Rooms(id_room)   
    );
    
/* create table Indices */

create table Indices(
	id_indice int primary key,
    description varchar(500),
     id_room int ,
        foreign key (id_room) references Rooms(id_room)
);

    INSERT INTO rooms (id_room, nom) VALUES (1,
'Salle de Bal');
INSERT INTO rooms (id_room, nom) VALUES (2,
'Bibliothèque');
INSERT INTO rooms (id_room, nom) VALUES (3,
'Cuisine');
INSERT INTO rooms (id_room, nom) VALUES (4,
'Salon');
INSERT INTO rooms (id_room, nom) VALUES (5,
'Jardin');

INSERT INTO Invités (id_invite, nom, statut) VALUES (1,
'Jean Dupont'
,
'Suspect');
INSERT INTO Invités (id_invite, nom, statut) VALUES (2,
'Marie Curie'
,
'Innocent');
INSERT INTO Invités (id_invite, nom, statut) VALUES (3,
'Albert Einstein'
,
'Suspect');
INSERT INTO Invités (id_invite, nom, statut) VALUES (4,
'Isaac Newton'
,
'Innocent');
INSERT INTO Invités (id_invite, nom, statut) VALUES (5,
'Niels Bohr'
,
'Suspect');


INSERT INTO Mouvements (id,id_invite, id_room, timee) VALUES
( 1, 1,1, '2023-06-01'),
(2, 1,2, '2023-06-01'),
(3, 2,3, '2023-06-01'),
(4, 3,2, '2023-06-01'),
(5, 2,4, '2023-06-02');

INSERT INTO Objets (id_objet, nom_objet, id_room) VALUES (1,
'Vase Ancien'
, 1);
INSERT INTO Objets (id_objet, nom_objet, id_room) VALUES (2,
'Tableau de Maître'
, 2);
INSERT INTO Objets (id_objet, nom_objet, id_room) VALUES (3,
'Statue en Bronze'
, 3);
INSERT INTO Objets (id_objet, nom_objet, id_room) VALUES (4,
'Coffre à Bijoux'
, 2);
INSERT INTO Objets (id_objet, nom_objet, id_room) VALUES (5,
'Lampe en Cristal'
, 4);

SELECT * FROM Indices
INSERT INTO Indices (id_indice, description, id_room) VALUES (1,
'Empreintes de pas trouvées près du vase'
, 1);
INSERT INTO Indices (id_indice, description, id_room) VALUES (2,
'Traces de sang sur la table'
, 2);
INSERT INTO Indices (id_indice, description, id_room) VALUES (3,
'Foulard déchiré retrouvé sur le sol'
, 3);
INSERT INTO Indices (id_indice, description, id_room) VALUES (4,
'Clé ancienne trouvée sous le canapé'
, 4);
INSERT INTO Indices (id_indice, description, id_room) VALUES (5,
'Bijou abandonné dans le jardin'
, 5);


 #tache 1
 select * from Invités;
 
 #tache 2
 select nom , statut from Invités;
 
 #tache 3
 select count(*) from Invités;
 
 #tache 4
 select count(*) from Invités where statut like 'Suspect';
 
 #tache 5
 select * from Mouvements m
 join Invités i
 on m.id_invite=m.id_invite
 limit 1;
 
 #tache 6
 SELECT * FROM Mouvements ORDER BY timee DESC LIMIT 1;
 
 #tache 7
 SELECT * FROM Objets ORDER BY id_room;

#tache 8
SELECT * FROM Mouvements ORDER BY timee;

#tache 9
SELECT id_invite, COUNT(*) as nb_mouvements FROM Mouvements GROUP BY id_invite;


#tache 10
SELECT DISTINCT Invités.nom 
FROM Invités 
JOIN Mouvements ON Invités.id_invite = Mouvements.id_invite 
WHERE Mouvements.id_room = 1;

#tache 11
SELECT nom_objet 
FROM Objets 
JOIN rooms ON Objets.id_room = rooms.id_room 
WHERE rooms.nom = 'Bibliothèque';

#tache 13
SELECT DISTINCT Invités.nom 
FROM Invités 
JOIN Mouvements ON Invités.id_invite = Mouvements.id_invite 
JOIN rooms ON Mouvements.id_room = rooms.id_room 
WHERE rooms.nom = 'Salle de Bal' AND Mouvements.timee > 21;




 
    