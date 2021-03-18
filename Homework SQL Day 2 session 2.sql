# REQUIREMENT: EXPAND/CREATE A RELATIONAL DATABASE (2 TABLES).
CREATE TABLE Maingags (
Filmtitle varchar(200) not null,
Maingag1 varchar(200) not null,
Maingag2 varchar(200) null,
Maingag3 varchar(200) null
);

alter table Maingags
modify Filmtitle varchar(200) not null primary key;

# REQUIREMENT: ENTER DATA INTO YOUR SECOND TABLE
INSERT INTO Maingags
       VALUES ('Live at the Madison Square Garden', 'The Stone Age', 'Latin Language', 'Flip Flops');
INSERT INTO Maingags
       VALUES ('Live at the Ambassadors', 'spelling', 'LARD', null);
INSERT INTO Maingags
       VALUES ('Unrepeatable', 'Cats and Dogs','Homophobes behind closed doors','Advertising');
INSERT INTO Maingags
		VALUES ('Dress to Kill','Cunning use of flags','Cake or death','Englebert Humperdink');
INSERT INTO Maingags
		VALUES ('Sexie', 'The Doppler Effect','Tea for this mans breasts','Racist people less polite smokers');
INSERT INTO Maingags
		VALUES ('Circle', 'Crusades', 'Pope gutless bas****', 'Death Star Canteen'); 
INSERT INTO Maingags
		VALUES ('Definite Article', 'Mrs Smiths Apples', 'Carthaginians are attacking', 'Pavlovs cats');
INSERT INTO Maingags
		VALUES ('Glorious', 'Beekeepers', 'Creation of the world', 'Grans live forever');
INSERT INTO Maingags
		VALUES ('Stripped', 'Scrabble and dyslexia', 'Charles Darwin', 'Noahs ark');
INSERT INTO Maingags
		VALUES ('Force Majeure', 'Caesar salad', 'Dressage','How to kill fear');
        
#REQUIREMENT: JOIN TABLES
Select maingags.Filmtitle, sufilmography.YearPublished, maingags.Maingag1
from maingags
inner join sufilmography
on maingags.Filmtitle = sufilmography.Filmtitle;
        
# REQUIREMENT: VIEW AND SHOW BOTH TABLE STRUCTURES AND DATA.
SELECT * FROM sufilmography;
EXPLAIN sufilmography;
SELECT * FROM MAINGAGS;
EXPLAIN MAINGAGS;
SHOW FULL TABLES;



# RUN A SIMPLE QUERY - SEARCHING ONE TABLE
SELECT*FROM SUFILMOGRAPHY, MAINGAGS
WHERE  SUFILMOGRAPHY.FILMTITLE = MAINGAGS.FILMTITLE AND YearPublished = '2013';

# RUN A COMPLEX QUERY DEMONSTRATE THE RELATIONSHIP BETWEEN THE 2 TABLES
SELECT*FROM sufilmography, MAINGAGS
WHERE SUFILMOGRAPHY.FILMTITLE = MAINGAGS.FILMTITLE AND MAINGAGS.MAINGAG1 = 'BEEKEEPERS' AND SUFILMOGRAPHY.ORDERNO = '4';

# FILTER DATA USING COMPARISON OPERATORS
Select * FROM sufilmography, MAINGAGS
WHERE SUFILMOGRAPHY.FILMTITLE = MAINGAGS.FILMTITLE AND  orderno between 3 and 5;