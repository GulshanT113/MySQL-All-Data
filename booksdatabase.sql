DROP DATABASE IF EXISTS book_db;
CREATE DATABASE book_db;
USE book_db;

CREATE table book(
    book_id int AUTO_INCREMENT not null PRIMARY KEY,
    title varchar(26),
    author_fname varchar(26),
    author_lname varchar(26),
    released_year int,
    stock_quantity int,
    pages int
);

INSERT INTO book(title, author_fname, author_lname, released_year, stock_quantity, pages) VALUES
('the god', 'ram', 'krishnan', 2005, 15, 240),
('the black world', 'raman', 'shah', 2009, 25, 670),
('the moon', 'krishna', 'mehra', 2015, 60, 760),
('the sunshine', 'roshan', 'lal', 2001, 12, 540),
('black adom', 'the', 'rock', 2021, 75, 160),
('the krisha', 'rakesh', 'roshan', 2005, 20, 350),
('advanture of jungle', 'moglie', 'addison', 2014, 45, 240),
('the ram', 'ram', 'krishnan', 2007, 15, 240),
('the human', 'hari', 'sharma', 2010, 65, 840),
('the earth', 'lal', 'singh', 2009, 6, 120),
('human pychology', 'jack', 'andreson', 2020, 20, 466),
('the comman man', 'ram', 'krishnan', 2006, 65, 478);

SELECT * FROM book;
# CONCAT
SELECT concat(author_fname, ' ', author_lname) as 'full name' FROM book;

update book set title = 'the lord krishna' where title = 'the krisha';

SELECT concat(author_fname, ' released his book in ', released_year) as released_data from book;

select concat(author_fname, ' - ', author_lname, ' - ', released_year) as book_data from book;

# concat_ws

select concat_ws(' - ', author_fname, author_lname, released_year, title, pages) as overview from book;

select concat_ws(' ', author_fname, author_lname, released_year, title, pages) as overview from book;

# SUBSTRING

select substring("hello world this is gulshan", 5,15);
select substring("hello world this is gulshan", 5);
select substring("hello world this is gulshan", -5);
select substring("hello world this is gulshan", 1, 20);
select substring("hello world this is gulshan", 12563);
select substring("hello world this is gulshan", 12, 12563);

select substr(title, 1, 7) as title from  book;

select concat(substr(title, 1, 7), ' ..... ') as title from book;

# replace 

select replace('hello world', 'hello', 'namashtey');
select replace('hello world', 'hello', 'namashtey') as string;
select replace('hello world', 'l', 7) as string;
select replace('hello mr gulshan welcome to this world', ' ', '#');
select replace('hello mr gulshan welcome to this world', ' ', 5) as string;

select replace(title, 'e', 7) from book;

select concat(substr(replace(title, 'e', 3), 1, 7), '...') as 'string' from book;

# reverse

select reverse("hello world");
select reverse("hello mr gulshan welcome this world if you exist before me then good morning") as msg ;
select reverse('hwllo hello hello');
select reverse("hello mr gulshan welcome this world if you exist before me then good morning") as msg ;
select reverse(title) as title from book;
select concat('hello world', reverse('hello world')) as palindrome;
select concat(title, reverse(title)) as palindrome from book;

# char_length

select char_length('hello gulshan from world side');

select author_fname, char_length(author_fname) as char_count from book;

select concat(title, 'have ', char_length(title), ' character length') as title_length from book;

# lower / upper

select lower('HEllo world');
select upper('HEllo world');

select upper(title) from book;
select lower(title) from book;

select concat('this is my favorite ', upper(title)) as 'favorite books' from book;
select concat(upper('this is my favorite book '), upper(title)) as 'favorite books' from book;

# chalenge

select reverse(upper('why my cat look at me like in hated manner')) as formate;

select upper(reverse('why my cat look at me like in hated manner')) as formate;

select replace(concat('my name is gulshan'), ' ', '-') as groupName;

select replace(title, ' ', '->') as title from book;

select author_lname AS forwards, reverse(author_lname) AS backwards FROM book;

SELECT UPPER(CONCAT(author_fname,' ', author_lname)) AS 'full name in caps' FROM book;

SELECT CONCAT(title,' was released in ', released_year) AS blurb FROM book;

SELECT title, CHAR_LENGTH(title) AS 'character count' FROM book;

SELECT CONCAT(SUBSTRING(title, 1, 10), '...') AS 'shorttitle', CONCAT(author_lname, ',', author_fname)

AS author, CONCAT(stock_quantity,' in stock') AS quantity FROM book;

INSERT INTO book(title, author_fname, author_lname, released_year, stock_quantity, pages)VALUES
('10% Happier','Dan','Harris',2014,29,256),
('fake_book','Freida','Harris',2001,287,428),
('Lincoln In The Bardo','George','Saunders',2017,1000,367);

# distict

select DISTINCT author_fname from book;

select DISTINCT concat(author_fname, ' ', author_lname) as 'full name' from book;

select DISTINCT author_fname, author_lname from book;

# order by 

select author_fname from book order by author_fname;

select author_fname from book order by author_fname desc;

select author_fname, released_year from book order by released_year desc;

select author_fname, released_year from book order by 2 desc;

select author_fname, author_lname, released_year from book order by 1, 2;

# limit 

select * from book limit 5;

select * from book order by title limit 5;

select title, author_fname, released_year, stock_quantity from book order by 4 desc limit 5, 54654;

# like 

select title, author_fname, released_year from book where title like '%the%';

select title, author_fname, released_year from book where title like '%t__';

select title, author_fname, released_year from book where title like '%r_m%';

select title, author_fname, released_year from book where title like 'the'; # this is not working.

# here we have challenges 

select title from book where title like '%black%';

select * from book order by pages desc limit 3;

select * from book order by released_year desc limit 2;

select * from book where title like "%earth%";
 
select * from book order by stock_quantity limit 3;

select title, author_fname, author_lname from book order by author_fname, author_lname limit 3;

SELECT CONCAT('MY FAVORITE AUTHOR IS ', UPPER(author_fname),' ',UPPER(author_lname),'!')AS yell FROM book ORDER BY author_lname;
