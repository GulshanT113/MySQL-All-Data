SELECT COUNT(*) from book;

SELECT COUNT(author_lname) from book;

SELECT COUNT(DISTINCT author_lname) from book;

SELECT COUNT(DISTINCT author_fname, author_lname) from book;

SELECT title from book where title like '%the%';

SELECT COUNT(*) from book where title like '%the%';

# min/max 

SELECT min(released_year) from book;
SELECT max(released_year) from book;

SELECT min(pages) from book;
SELECT min(stock_quantity) from book;

SELECT max(pages) from book;
SELECT max(stock_quantity) from book;

# subquery 

SELECT * from book where pages = (SELECT min(pages) from book);

SELECT * from book where pages = (SELECT max(pages) from book);

SELECT * from book order by pages LIMIT 1;

SELECT * from book order by pages DESC LIMIT 1;

# min/max group by 

SELECT author_fname, author_lname, min(released_year) from book group by author_fname, author_lname;

SELECT author_fname, author_lname, max(released_year) from book group by author_fname, author_lname;

SELECT author_fname, author_lname, max(pages) from book group by author_fname, author_lname;

SELECT concat(author_fname, ' ',author_lname) as author, max(pages) as 'largest pages' from book group by author;

# sum 

SELECT sum(pages) from book;

SELECT sum(stock_quantity) from book;

# sum with group by 

SELECT concat(author_fname, ' ',author_lname) as author, sum(pages) from book group by author;

SELECT concat(author_fname, ' ',author_lname) as author, sum(stock_quantity) from book group by author;

# avg & group by avg 

SELECT avg(pages) from book;

SELECT avg(stock_quantity) from book;

SELECT author_fname, released_year, avg(stock_quantity) from book group by released_year;

# challenges of agrregate

SELECT COUNT(*) from book;

SELECT released_year, COUNT(*) from book group by released_year;

SELECT sum(stock_quantity) from book;

SELECT released_year, sum(stock_quantity) from book group by released_year;

SELECT avg(released_year) from book group by author_fname, author_lname;

SELECT concat(author_fname, ' ', author_lname) as author, avg(released_year) from book group by author_fname, author_lname;

SELECT concat(author_fname, ' ', author_lname) as author from book where pages = (SELECT max(pages) from book);

SELECT * from book where pages = (SELECT max(pages) from book);

SELECT * from book order by pages DESC LIMIT 1;

SELECT * from book order by pages LIMIT 1;

SELECT pages from book order by pages DESC;

SELECT pages from book order by pages;

SELECT COUNT(*) as 'my count', avg(pages) as 'my avg' from book group by released_year;