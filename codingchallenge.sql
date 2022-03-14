CREATE DATABASE coding_challenge;

USE coding_challenge;
/*-------------VERY EASY----------------------*/
CREATE TABLE cars (
id INT PRIMARY KEY AUTO_INCREMENT,
year INT,
make VARCHAR (225),
model VARCHAR (225)
);

INSERT INTO cars (year, make, model)
VALUES (2002, 'Nissan', 'Skyline GTR R34'),
(2014, 'Lexus', 'IS 250'),
(2009, 'Nissan', '350Z');

INSERT INTO cars (year, make, model)
VALUES (1994, 'Mazda', 'MX-5 Miata'),
(1994, 'Toyota', 'Supra mk4');
SELECT * FROM cars;

/*-------------EASY------------------*/

CREATE TABLE books (
id INT PRIMARY KEY AUTO_INCREMENT,
title VARCHAR (225),
publish_date INT,
author_first_name VARCHAR (225),
author_last_name VARCHAR (225)
);

INSERT INTO books (title, publish_date, author_first_name, author_last_name)
VALUES ('Magia', 2020, 'Alexis', 'Arredondo'),
('A New Earth', 2005, 'Eckhart', 'Tolle'),
('Home body', 2020, 'Rupi', 'Kaur'),
('The Notebook', 1996, 'Nicholas', 'Sparks'),
('Bonsai Y la vida privada de los arboles', 2006, 'Alejandro', 'Zambra');

INSERT INTO books (title, publish_date, author_first_name, author_last_name)
VALUES ('The Powers', 2016, 'Mark', 'Erwin'),
('Cleansing Rites of Curanderismo', 2018, 'Erika', 'Buenaflor');

SELECT * FROM books;

DELETE FROM books
WHERE id = 4;

SELECT * FROM books;

/*----------MEDIUM----------------*/
CREATE TABLE movies (
id INT PRIMARY KEY AUTO_INCREMENT,
title VARCHAR (225),
release_date VARCHAR (225),
rating VARCHAR (100)
);

INSERT INTO movies (title, release_date, rating)
VALUES ('Spiderman No Way Home', 'December 17, 2021', 'PG-13'),
('The Notebook', 'June 25, 2004', 'PG-13'),
('Mean Girls' , 'April 30, 2004', 'PG-13'),
('Uncharted', 'February 18, 2022', 'PG-13'),
('Fifty Shades of Grey', 'February 13, 2015', 'R'),
('Fifty Shades Darker', 'February 10, 2017', 'R'),
('Fifty Shades Freed', 'February 9, 2018', 'R'),
('Shrek 2', 'May 19, 2004', 'PG'),
('Tangled', 'March 29, 2011', 'PG'),
('The Fast and Furious', 'June 22, 2001', 'PG-13');

SELECT * FROM movies
WHERE title LIKE '%s%'
ORDER BY release_date ASC;

/*-----------HARD--------------*/

ALTER TABLE movies ADD COLUMN director_first_name VARCHAR (200);
ALTER TABLE movies ADD COLUMN director_last_name VARCHAR (200);
UPDATE movies set director_first_name = 'Jon' WHERE id = 1;
UPDATE movies set director_last_name = 'Watt' WHERE id = 1;

UPDATE movies set director_first_name = 'Nick' WHERE id = 2;
UPDATE movies set director_last_name = 'Cassavetes' WHERE id = 2;

UPDATE movies set director_first_name = 'Mark' WHERE id = 3;
UPDATE movies set director_last_name = 'Waters' WHERE id = 3;

UPDATE movies set director_first_name = 'Ruben' WHERE id = 4;
UPDATE movies set director_last_name = 'Fleischer' WHERE id = 4;

UPDATE movies set director_first_name = 'Sam' WHERE id = 5;
UPDATE movies set director_last_name = 'Taylor Johnson' WHERE id = 5;

UPDATE movies set director_first_name = 'James' WHERE id = 6;
UPDATE movies set director_last_name = 'Foley' WHERE id = 6;

UPDATE movies set director_first_name = 'James' WHERE id = 7;
UPDATE movies set director_last_name = 'Foley' WHERE id = 7;

UPDATE movies set director_first_name = 'Andrew' WHERE id = 8;
UPDATE movies set director_last_name = 'Adamson' WHERE id = 8;

UPDATE movies set director_first_name = 'Byron' WHERE id = 9;
UPDATE movies set director_last_name = 'Howard' WHERE id = 9;

UPDATE movies set director_first_name = 'Justin' WHERE id = 10;
UPDATE movies set director_last_name = 'Lin' WHERE id = 10;
ALTER TABLE movies ADD COLUMN director VARCHAR (225);

SELECT *, CONCAT(director_first_name, ' ', director_last_name) AS directorname
FROM movies;

SELECT  * FROM movies
ORDER BY director_last_name ASC;

SET SQL_SAFE_UPDATES = 0;
DELETE FROM movies 
WHERE director_last_name = '% r-z';


/*---------------VERY HARD---------------*/
INSERT INTO cars (year, make, model)
VALUES (2022, 'Mercedes-Benz', 'A-class'),
(2022, 'Audi', 'A3'),
(2022, 'Audi', 'A4');

ALTER TABLE cars ADD COLUMN price INT;
ALTER TABLE cars ADD COLUMN color VARCHAR (100);
UPDATE cars set price = 71000 WHERE id =1;
UPDATE cars set color = 'pink' WHERE id =1;

UPDATE cars set price = 24000 WHERE id =2;
UPDATE cars set color = 'grey' WHERE id =2;

UPDATE cars set price = 7000 WHERE id =3;
UPDATE cars set color = 'red' WHERE id =3;

UPDATE cars set price = 10000 WHERE id =4;
UPDATE cars set color = 'black' WHERE id =4;

UPDATE cars set price = 15000 WHERE id =5;
UPDATE cars set color = 'white' WHERE id =5;

UPDATE cars set price = 70000 WHERE id =6;
UPDATE cars set color = 'black' WHERE id =6;

UPDATE cars set price = 50000 WHERE id =7;
UPDATE cars set color = 'grey' WHERE id =7;

UPDATE cars set price = 61000 WHERE id =8;
UPDATE cars set color = 'white' WHERE id =8;

SELECT *, CONCAT(make, ' ', model) AS car_name
FROM cars;

ALTER TABLE cars ADD COLUMN number_of_makes INT;

UPDATE cars set number_of_makes = 1003 WHERE id =1;
UPDATE cars set number_of_makes = 10000 WHERE id =2;
UPDATE cars set number_of_makes = 800 WHERE id =3;
UPDATE cars set number_of_makes = 50000 WHERE id =4;
UPDATE cars set number_of_makes = 200 WHERE id =5;
UPDATE cars set number_of_makes = 3000 WHERE id =6;
UPDATE cars set number_of_makes = 100 WHERE id =7;
UPDATE cars set number_of_makes = 9000 WHERE id =8;


SELECT * FROM cars;

SELECT number_of_makes FROM cars;