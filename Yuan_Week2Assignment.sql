##Christine Yuan, SQL Database for DATA 607 Assignment #1, 9/9/16

DROP TABLE IF EXISTS movies

CREATE TABLE movies (
	reviewer VARCHAR(100),
    movie VARCHAR(100),
	rating INT
	);
    
##select * from movies

INSERT INTO movies VALUES ("Lily", "Kubo and the Two Strings", 4);
INSERT INTO movies VALUES ("Lily", "Sully", 5);
INSERT INTO movies VALUES ("Lily", "Florence Foster Jenkins", 5);
INSERT INTO movies VALUES ("Lily", "Tunnel", 5);
INSERT INTO movies VALUES ("Lily", "Train to Busan", 3);
INSERT INTO movies VALUES ("Lily", "Sausage Party", 3);

INSERT INTO movies VALUES ("Charles", "Kubo and the Two Strings", 2);
INSERT INTO movies VALUES ("Charles", "Sully", 5);
INSERT INTO movies VALUES ("Charles", "Florence Foster Jenkins", 4);
INSERT INTO movies VALUES ("Charles", "Tunnel", 4);
INSERT INTO movies VALUES ("Charles", "Train to Busan", 3);
INSERT INTO movies VALUES ("Charles", "Sausage Party", 1);

INSERT INTO movies VALUES ("Jack", "Kubo and the Two Strings", 4);
INSERT INTO movies VALUES ("Jack", "Sully", 5);
INSERT INTO movies VALUES ("Jack", "Florence Foster Jenkins", 3);
INSERT INTO movies VALUES ("Jack", "Tunnel", 5);
INSERT INTO movies VALUES ("Jack", "Train to Busan", 5);
INSERT INTO movies VALUES ("Jack", "Sausage Party", 4);

INSERT INTO movies VALUES ("Chris", "Kubo and the Two Strings", 5);
INSERT INTO movies VALUES ("Chris", "Sully", 5);
INSERT INTO movies VALUES ("Chris", "Florence Foster Jenkins", 2);
INSERT INTO movies VALUES ("Chris", "Tunnel", 3);
INSERT INTO movies VALUES ("Chris", "Train to Busan", 3);
INSERT INTO movies VALUES ("Chris", "Sausage Party", 1);

INSERT INTO movies VALUES ("Stacy", "Kubo and the Two Strings", 4);
INSERT INTO movies VALUES ("Stacy", "Sully", 5);
INSERT INTO movies VALUES ("Stacy", "Florence Foster Jenkins", 5);
INSERT INTO movies VALUES ("Stacy", "Tunnel", 2);
INSERT INTO movies VALUES ("Stacy", "Train to Busan", 2);
INSERT INTO movies VALUES ("Stacy", "Sausage Party", 1);

#SELECT movie, AVG(rating) from movies
#group by movie
#order by AVG(rating) desc

SELECT reviewer, movie, rating from movies
INTO OUTFILE 'C:/Users/Public/movie_reviews.csv' 
FIELDS ENCLOSED BY '"' 
TERMINATED BY ';' 
ESCAPED BY '"' 
LINES TERMINATED BY '\r\n';

#export code found here: http://www.mysqltutorial.org/mysql-export-table-to-csv/
