# decimal    
CREATE DATABASE items;

CREATE TABLE item(
    price decimal(5, 2)
);

INSERT into item(price)
VALUES(21.15);

INSERT into item(price)
VALUES(256);


INSERT into item(price)
VALUES(255.125);


INSERT into item(price)
VALUES(255.99999);

SELECT * from item;

CREATE table item2(
    price float
);

INSERT into item2(price)
VALUES(564.25);

INSERT into item2(price)
VALUES(5645646565);

INSERT into item2(price)
VALUES(5645646565.52642);

INSERT into item2(price)
VALUES(9999.9999);

INSERT into item2(price)
VALUES(9999.9999);

CREATE table item3(
    price double
);

INSERT into item3(price)
VALUES(6443231.2645),
(56432511);

INSERT into item3(price)
VALUES(64432315654646464.2645);

CREATE table Umans(
    name varchar(60),
    birth_date date,
    birth_time time,
    birth_date_time datetime
);
CREATE table Umans(
    name varchar(60),
    birth_date date,
    birth_time time,
    birth_date_time datetime
);

INSERT into Umans(name, birth_date, birth_time, birth_date_time)
VALUES('gulshan', '1998-11-26', '02:42:56', '1998-11-26 02:42:56');

INSERT into Umans(name, birth_date, birth_time, birth_date_time)
VALUES('vishank', '1998-11-17', '11:38:16', '1998-11-17 11:38:16');

INSERT into Umans(name, birth_date, birth_time, birth_date_time)
VALUES('vibhu', curdate(), curtime(), now());

INSERT into Umans(name, birth_date, birth_time, birth_date_time)
VALUES('gori', curdate(), curtime(), now());

DELETE from Umans where name = 'gori';

#formating date       

SELECT name, birth_date from Umans;

SELECT name, birth_time from Umans;

SELECT name, birth_date_time from Umans;

SELECT name, day(birth_date) from Umans;

SELECT name, month(birth_date) from Umans;

SELECT name, year(birth_date) from Umans;

SELECT name, birth_date, dayname(birth_date) from Umans;

SELECT name, birth_date, dayofweek(birth_date) from Umans;

SELECT name, birth_date, dayofyear(birth_date) from Umans;

SELECT name, birth_date, monthname(birth_date) from Umans;

SELECT name, birth_date, hour(birth_time) from Umans;

SELECT name, birth_date, minute(birth_time) from Umans;

SELECT name, birth_date, second(birth_time) from Umans;

SELECT concat(monthname(birth_date), ' ', dayname(birth_date), ' ', year(birth_date)) as all_data_about_Uman from Umans;

# data formate 

SELECT name, date_format(birth_date_time, ' was born on %W') from Umans;

SELECT name, date_format(birth_date_time, ' was born on %Y') from Umans;

SELECT name, date_format(birth_date_time, ' was born on %M') from Umans;

SELECT name, date_format(birth_date_time, '%d/%m/%Y') from Umans;

SELECT name, date_format(birth_date_time, '%d-%m-%y') from Umans;

SELECT name, date_format(birth_date_time, '%d-%m-%y at %h:%i:%s') from Umans;

# date math

SELECT birth_date, datediff(now(), birth_date) from Umans;

SELECT birth_date_time, date_add(birth_date_time, INTERVAL 1 month) as update_data from Umans;

SELECT birth_date_time, date_add(birth_date_time, INTERVAL 45 second) as update_data from Umans;

SELECT birth_date_time, date_add(birth_date_time, INTERVAL 3 quarter) as update_data from Umans;

SELECT birth_date_time, date_add(birth_date_time, INTERVAL 3 hour) as update_data from Umans;

SELECT birth_date_time, birth_date_time + INTERVAL 3 month + INTERVAL 12 hour from Umans;

SELECT birth_date_time, birth_date_time + INTERVAL 3 month from Umans;

SELECT birth_date_time, birth_date_time + INTERVAL 12 hour from Umans;

# time stamp     

CREATE table present(
    content varchar(60),
    created_at timestamp DEFAULT now()
);

DESC present;

INSERT into present(content)
VALUES('the black adom'),
('the village boy'),
('shiva ji the boss');

INSERT into present(content)
VALUES('black panther');

INSERT into present(content)
VALUES('the avengers');

select * from present;

select * from present order by created_at DESC;

# challenges 

select curtime();

select curdate();

select dayofweek(curdate());

select dayofweek(curdate());

select dayofweek(now());

select date_format(now(), '%w') + 1;  # becuase here 0 base indexing here.     

select dayname(now());

select date_format(now(), '%W');  

select date_format(now(), '%d/%m/%Y');  

select date_format(now(), '%m/%d/%Y');  

select date_format(curdate(), '%m/%d/%Y');  

select date_format(now(), '%M %D at %h:%i');  

create table tweets(
    content varchar(60),
    name varchar(60),
    created_at timestamp DEFAULT now()
);

DESC tweets;

INSERT into tweets(content, name)
VALUES('the jungle book', 'krishna reddy');

INSERT into tweets(content, name)
VALUES('basics of russian', 'thomson addic');

select * from tweets;