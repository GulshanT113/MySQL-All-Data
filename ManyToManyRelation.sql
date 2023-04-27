CREATE DATABASE ManyToMany;

CREATE TABLE reviewers(
    id int AUTO_INCREMENT not null PRIMARY key,
    f_name varchar(120),
    l_name varchar(60)
);

CREATE TABLE series(
    id int AUTO_INCREMENT not null PRIMARY key,
    title varchar(120),
    released_year year,
    genre varchar(60)
);

CREATE TABLE reviews(
    id int AUTO_INCREMENT not null PRIMARY key,
    rating decimal(2, 1),
    series_id INT,
    reviewer_id INT,
    FOREIGN KEY(series_id) REFERENCES series(id),
    FOREIGN KEY(reviewer_id) REFERENCES reviewers(id)
);

INSERT INTO series(title, released_year, genre)
VALUES('Archer',2009,'Animation'),
('Arrested Development',2003,'Comedy'),
("Bob's Burgers",2011,'Animation'),
('Bojack Horseman',2014,'Animation'),
("Breaking Bad",2008,'Drama'),
('Curb Your Enthusiasm',2000,'Comedy'),
("Fargo",2014,'Drama'),
('Freaks and Geeks',1999,'Comedy'),
('General Hospital',1963,'Drama'),
('Halt and Catch Fire',2014,'Drama'),
('Malcolm In The Middle',2000,'Comedy'),
('Pushing Daisies',2007,'Comedy'),
('Seinfeld',1989,'Comedy'),
('Stranger Things',2016,'Drama');


INSERT INTO reviewers(f_name, l_name)
VALUES('Thomas','Stoneman'),
('Wyatt','Skaggs'),
('Kimbra','Masters'),
('Domingo','Cortes'),
('Colt','Steele'),
('Pinkie','Petit'),
('Marlon','Crafford');


INSERT INTO reviews(series_id, reviewer_id, rating) 
VALUES(1,1,8.0),
(1,2,7.5),
(1,3,8.5),
(1,4,7.7),
(1,5,8.9),
(2,1,8.1),
(2,4,6.0),
(2,3,8.0),
(2,6,8.4),
(2,5,9.9),
(3,1,7.0),
(3,6,7.5),
(3,4,8.0),
(3,3,7.1),
(3,5,8.0),
(4,1,7.5),
(4,3,7.8),
(4,4,8.3),
(4,2,7.6),
(4,5,8.5),
(5,1,9.5),
(5,3,9.0),
(5,4,9.1),
(5,2,9.3),
(5,5,9.9),
(6,2,6.5),
(6,3,7.8),
(6,4,8.8),
(6,2,8.4),
(6,5,9.1),
(7,2,9.1),
(7,5,9.7),
(8,4,8.5),
(8,2,7.8),
(8,6,8.8),
(8,5,9.3),
(9,2,5.5),
(9,3,6.8),
(9,4,5.8),
(9,6,4.3),
(9,5,4.5),
(10,5,9.9),
(13,3,8.0),
(13,4,7.2),
(14,2,8.5),
(14,3,8.9),
(14,4,8.9);

# challenges    

SELECT title, rating from series JOIN reviews on series.id = reviews.series_id;

SELECT title, avg(rating) as avg_rating from series JOIN reviews on series.id = reviews.series_id GROUP by title order by avg_rating;

SELECT f_name, l_name, rating from reviewers join reviews on reviewers.id = reviews.reviewer_id;

SELECT f_name, l_name, rating from reviews join reviewers on reviewers.id = reviews.reviewer_id;

SELECT f_name, l_name, rating from reviews join reviewers on reviews.reviewer_id = reviewers.id;

SELECT title from series left join reviews on series.id = reviews.series_id where rating is null;

SELECT genre, avg(rating) as avg_rating from series join reviews on series.id = reviews.series_id GROUP by genre;

SELECT f_name, l_name,
Count(rating) AS COUNT,
Ifnull(Min(rating),0) AS MIN,
Ifnull(Max(rating),0) AS MAX, 
Ifnull(Avg(rating),0) AS AVG, 
IF(Count(rating) > 0, 'ACTIVE', 'INACTIVE') AS STATUS 
FROM reviewers LEFT JOIN reviews ON 
reviewers.id = reviews.reviewer_id 
GROUP BY reviewers.id;

SELECT f_name, l_name,
Count(rating) AS COUNT,
Ifnull(Min(rating),0) AS MIN,
Ifnull(Max(rating),0) AS MAX, 
Ifnull(Avg(rating),0) AS AVG, 
CASE
    when COUNT(rating) > 0 then 'ACTIVE'
    ELSE 'INACTIVE'
END AS STATUS
FROM reviewers LEFT JOIN reviews ON 
reviewers.id = reviews.reviewer_id 
GROUP BY reviewers.id;

SELECT title, rating, concat(f_name, ' ', l_name) as reviewer
from reviewers join reviews on 
reviewers.id = reviews.reviewer_id join series on 
series.id = reviews.series_id 
order by title;

# end of MANY TO MANY RELATIONSHIPS.   