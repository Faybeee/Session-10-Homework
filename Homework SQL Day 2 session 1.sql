show databases;
show tables;
describe sufilmography;

# REQUIREMENT: ENTER 10 RECORDS AND VIEW THEM
INSERT INTO sufilmography
       VALUES ('Live at the Madison Square Garden','2011','Madison Square Garden, New York','91',null,'B01GWC09SM');
INSERT INTO sufilmography
       VALUES ('Circle','2002','Town Hall, New York','82',null,'B00006J9UA');
INSERT INTO sufilmography
       VALUES ('Dress to Kill','1998','Stage Door Theatre, San Fransisco','90',null,'B00009MGJT');
INSERT INTO sufilmography
       VALUES ('Force Majeure','2013','Wembley Arena, England','85',null,'B00C5D5ZS2');
INSERT INTO sufilmography
       VALUES ('Glorious','1997','Hammersmith Apollo, London','90',null,'B0002W1AEQ');
INSERT INTO sufilmography
       VALUES ('Live at the Ambassadors','1993','The Ambassadors Theatre, London','90',null,'B00004R6LZ');
INSERT INTO sufilmography
       VALUES ('Sexie','2003','Congress Theatre, Eastbourne','97',null,'B01GWDGY30');
INSERT INTO sufilmography
       VALUES ('Stripped','2009','Lyric Theatre, London, England','104',null,'B0029NZSSK');
INSERT INTO sufilmography
       VALUES ('Unrepeatable','1995','Albery Theatre, London','75',null,'B0002W19Z6');
SELECT * FROM sufilmography;

#random change to database I'm not being marked on
alter table sufilmography
add column Orderno int NOT null;

# REQUIREMENT: UPDATE A RECORD
UPDATE sufilmography
Set orderno = 10
WHERE Filmtitle = 'Force Majeure';
#NOTE: updated others too in similar manner but deleted to make it easier to read code

#DELETE A RECORD
DELETE FROM sufilmography 
WHERE Filmtitle = 'Circle';

# REQUIREMENT: RUN A SIMPLE QUERY (ONE FIELD/COLUMN)
Select Location from sufilmography;

# REQUIREMENT: RUN A COMPLEX QUERY (MORE THAN ONE FIELD/ COLUMN)
Select Location, orderno from sufilmography;

# REQUIREMENT: RETRIEVE ALL YOUR DATA SORTED IN ASCENDING ORDER ON APPROPRIATE FIELD
Select * FROM sufilmography ORDER BY orderno;


