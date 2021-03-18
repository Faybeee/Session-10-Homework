# create a database of your own choice. It must be a meaningful/ thought out database
create database EddieFilm;

# Create a table with a primary key and the correct datatypes. Include a minimum of 5 fields.
#  View the table structure to make sure it is set up correctly.
CREATE TABLE SUFilmography (
Filmtitle varchar(200) not null,
YearPublished year not null,
Location varchar(200) not null,
Lengthmins int not NULL,
Jokes varchar(200) null,
ASIN int not null
);
alter table sufilmography
modify Filmtitle varchar(200) not null primary key;

explain sufilmography