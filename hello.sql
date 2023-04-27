CREATE DATABASE firstProg;
use firstProg;
SELECT DATABASE();
CREATE TABLE people(
    F_name varchar(20),
    L_name varchar(20),
    age int  
);
INSERT INTO people(F_name, L_name, age)
VALUES('gulshan', 'kumar', 20),
('aqib', 'john', 22),
('aman', 'kumar', 21);