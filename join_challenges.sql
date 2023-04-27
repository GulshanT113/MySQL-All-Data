# parent table

CREATE TABLE students(
    id int AUTO_INCREMENT PRIMARY KEY,
    s_name varchar(60)
);

# child table

CREATE table papers(
    title varchar(80),
    grade int,
    student_id int,
    FOREIGN KEY(student_id) REFERENCES students(id)
);

INSERT INTO students(s_name)
VALUES('Caleb'),
('Samantha'),
('Raj'),
('Carlos'),
('Lisa');


INSERT INTO papers(student_id, title, grade )
VALUES(1, 'My First Book Report', 60),
(1, 'My Second Book Report', 75),
(2, 'Russian Lit Through The Ages', 94),
(2, 'De Montaigne and The Art of The Essay', 98),
(4, 'Borges and Magical Realism', 89);

# challenge part 2   

SELECT s_name, title, grade from students join papers on students.id = papers.student_id ORDER by DESC;

SELECT s_name, title, grade from students left join papers on students.id = papers.student_id;

SELECT s_name, ifnull(title, 'missing'), ifnull(grade, 0) from students left join papers on students.id = papers.student_id;

SELECT s_name, ifnull(avg(grade), 0) as average,
CASE
    when avg(grade) is null then 'failing'
    when avg(grade) >= 75 then 'passing'
    else 'failing'
END as curr_status from students left join papers on students.id = papers.student_id
GROUP by s_name ORDER by average DESC;

# end this topic here.  