# equal     

SELECT * from book where released_year = 2017;

SELECT * from book where author_lname = 'krishnan';

SELECT * from book where author_fname = 'lal';

SELECT * from book where pages = '120';

# not equal

SELECT * from book where released_year != 2017;

SELECT * from book where author_lname != 'krishnan';

SELECT * from book where author_fname != 'lal';

SELECT * from book where pages != '120';

# like 

SELECT * from book where author_fname like 'ram';

SELECT * from book where released_year like 2017;

SELECT * from book where author_lname like 'krishnan';

SELECT * from book where author_fname like 'lal';

SELECT * from book where pages like '120';

SELECT * from book where pages like '1%';

SELECT * from book where pages like '7%';

SELECT * from book where title like 't%';

SELECT * from book where released_year like '20__';

SELECT * from book where released_year like '201_';


# not like 

SELECT * from book where author_fname not like 'ram';

SELECT * from book where released_year not like 2017;

SELECT * from book where author_lname not like 'krishnan';

SELECT * from book where author_fname not like 'lal';

SELECT * from book where pages not like '120';

SELECT * from book where pages not like '1%';

SELECT * from book where pages not like '7%';

SELECT * from book where title not like 't%';

SELECT * from book where released_year not like '20__';

SELECT * from book where released_year not like '201_';

# greater or eqyual too 

SELECT * from book where released_year > 2010;

SELECT * from book where released_year >= 2010;

SELECT * from book where pages >= '__';

SELECT * from book where pages > '__';

SELECT 100 > 101;

SELECT 100 < 101;

SELECT 'a' > 'b';

SELECT 'u' < 'z';

SELECT 'a' = 'A';

# lessthen or eqyual too 

SELECT * from book where released_year < 2010;

SELECT * from book where released_year <= 2010;

SELECT * from book where pages <= '__';

SELECT * from book where pages < 500;

SELECT * from book where pages <= 200;

# and && oprator 

SELECT * from book where author_fname = 'ram' and released_year > 2006 and title = 'the ram';

SELECT * from book where author_fname = 'ram' and released_year < 2006;

SELECT 26 > 25 and 'a' > 'b';

SELECT 26 > 25 and 'a' < 'b';

# or || oprator

SELECT * from book where author_fname = 'ram' or released_year > 2006 || title = 'the ram';

SELECT * from book where author_fname = 'ram' or released_year < 2006;

SELECT 26 > 25 || 'a' > 'b';

SELECT 26 > 25 || 'a' < 'b';

SELECT 26 < 25 or 'a' > 'b';

# between 

SELECT * FROM book WHERE released_year > 2010 and released_year < 2017;

SELECT * FROM book WHERE released_year between 2010 and 2017;

SELECT * FROM book WHERE released_year between 2010 && 2017; # this and (&&) is not working with between sign.   

# in not-in

SELECT * from book where released_year = 2010 or released_year = 2015 or released_year = 2018 or released_year = 2022; 

SELECT * from book where released_year in (2010, 2015, 2018, 2022); # same work with in.

SELECT * from book where released_year != 2010 and released_year != 2015 and released_year != 2018 and released_year != 2022; 

SELECT * from book where released_year not in (2010, 2015, 2018, 2022); # same work with in.

# CASE   

select *, case when released_year > 2010 then 'the year is greater then 2010.' 
else 'the year is lessthen or equal to 2010.' end as detail_about_year from book;

select *, 
case
    when stock_quantity between 0 and 50 then '*'
    when stock_quantity between 51 and 100 then '**'
    else '***'
end as 'turm in stars' from book;

select *, case                               # without between keyword.
    when stock_quantity <= 50 then '*'
    when stock_quantity <= 100 then '**'
    else '***'
end as 'stock in stars' from book;

# challenges.    

select * from book where released_year > 2015;

select * from book where author_fname = 'ram' or author_fname = 'roshan';

select * from book where author_fname in ('ram', 'roshan');

select * from book where author_fname = 'ram' and released_year > 2005;

select * from book where pages between 100 and 200;

select * from book where pages >= 100 and pages <= 200;

select * from book where title like 'h%' or title like 'f%';

select * from book where substr(author_fname, 1, 1) = 'j' or substr(author_fname, 1, 1) = 'r';

select * from book where substr(author_fname, 1, 1) in ('s', 'j');

SELECT *,
CASE
    WHEN title LIKE '%the%' THEN 'Short Stories'
    WHEN title = 'the ram' OR title = 'the human' THEN 'the lord' 
    ELSE 'Novel' 
END AS TYPE FROM book;
