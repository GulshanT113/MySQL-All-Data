CREATE DATABASE emp;
use emp;
SELECT DATABASE();
CREATE TABLE employees(
    id int AUTO_INCREMENT NOT NULL,
    f_name varchar(60) not null,
    l_name varchar(60) not null,
    m_name varchar(60),
    age int not null,
    c_status varchar(120) not null DEFAULT 'employee',
    PRIMARY KEY(id)
);
INSERT INTO employees(f_name, l_name, age)
VALUES('gulshan', 'thakur', 20),
('aqib', 'john', 22),
('aman', 'chauhan', 21),
('deepanshu', 'chauhan', 20),
('vishank', 'sharma', 21),
('gaurav', 'gill', 19),
('ankit', 'thakur', 22),
('ravi', 'kumar', 21),
('vishal', 'kalyan', 18),
('ajay', 'kalyan', 16);
CREATE table emp2(
    id INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NOT NULL,
    middle_name VARCHAR(255),
    age INT NOT NULL,
    current_status VARCHAR(255) NOT NULL DEFAULT 'employed'
);
INSERT INTO emp2(first_name, last_name, age)
VALUES('gulshan', 'thakur', 20),
('aqib', 'john', 22),
('aman', 'chauhan', 21),
('deepanshu', 'chauhan', 20),
('vishank', 'sharma', 21),
('gaurav', 'gill', 19),
('ankit', 'thakur', 22),
('ravi', 'kumar', 21);

INSERT INTO emp2(first_name, middle_name, last_name, age)
VALUES('gulshan', 'kumar', 'thakur', 20),
('aqib', 'khan', 'john', 22),
('aman', 'kumar', 'chauhan', 21),
('deepanshu', 'jatav', 'chauhan', 20),
('vishank', 'hari', 'sharma', 21),
('gaurav', 'kumar', 'gill', 19),
('ajay', 'gujjar', 'thakur', 22),
('punit', 'chaudhary', 'kumar', 21);

CREATE table emp3(
    id INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NOT NULL,
    middle_name VARCHAR(255),
    age INT NOT NULL,
    current_status VARCHAR(255) NOT NULL DEFAULT 'employed'
);

INSERT INTO emp3(id, first_name, last_name, age)
VALUES(321, 'gulshan', 'thakur', 20);

INSERT INTO emp3(first_name, middle_name, last_name, age)
VALUES('gulshan', 'kumar', 'thakur', 20),
('aqib', 'khan', 'john', 22),
('aman', 'kumar', 'chauhan', 21),
('deepanshu', 'jatav', 'chauhan', 20),
('vishank', 'hari', 'sharma', 21),
('gaurav', 'kumar', 'gill', 19),
('ajay', 'gujjar', 'thakur', 22),
('punit', 'chaudhary', 'kumar', 21);

INSERT INTO emp3(first_name, middle_name, last_name, age)
VALUES('kumar', 'mid', 'kumar', 20);


# READ COMMAND.

select * from emp3 where last_name = 'thakur';

select id from emp3 where last_name = 'thakur';

select id, first_name, age from emp3 where last_name = 'thakur';

select first_name, id from emp3 where age = 22;

select first_name, id from emp3 where first_name = first_name;

select first_name, id from emp3 where age = id;

select first_name, id from emp3 where first_name = last_name;

select * from emp3 where first_name = last_name;

# UPDATE

# UPDATE emp3 set middle_name = 'thakur' where middle_name = null;

UPDATE emp3 set age = 24 where first_name = 'aqib';

UPDATE emp3 set first_name = 'abhishekh' where first_name = 'kumar';

# delete command

delete from emp3 where age = 19;

delete from emp3 where id = 329;

CREATE table shirt(
    shirt_id int not null AUTO_INCREMENT,
    article varchar(26),
    color varchar(26),
    shirt_size varchar(12),
    last_worn int,
    PRIMARY KEY(shirt_id)
);

INSERT into shirt(article, color, shirt_size, last_worn) values
('T-shirt', 'white', 'M', 10),
('T-shirt', 'black', 'M', 30),
('T-shirt', 'red', 'S', 15),
('polo shirt', 'white', 'XL', 12),
('tank top', 'grey', 'L', 18),
('levis', 'white', 'L', 20),
('levis', 'black', 'Xl', 30),
('red-tape', 'white', 'M', 14),
('polo shirt', 'off-white', 'S', 16);

select * from shirt;

INSERT into shirt(article, color, shirt_size, last_worn) values
('polo shirt', 'purple', 'XXL', 0);

select * from shirt;

select article, color from shirt;

select * from shirt where shirt_size = 'M';

UPDATE shirt set shirt_size = 'XLL' where article = 'polo shirt';

UPDATE shirt set last_worn = 0 where last_worn = 30;

UPDATE shirt set shirt_size = 'XL' where color = 'off-white';

delete from shirt where shirt_id = 1;

DELETE from shirt;

DROP TABLE shirt;
