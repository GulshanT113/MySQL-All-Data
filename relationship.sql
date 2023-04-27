# FOREIGN KEY   

CREATE DATABASE relation_db;

CREATE TABLE customers(
    id int not null AUTO_INCREMENT PRIMARY KEY,
    first_name varchar(60),
    last_name varchar(60),
    email varchar(60)
);

CREATE TABLE orders(
    id int not null AUTO_INCREMENT PRIMARY KEY,
    order_date date,
    price decimal(8, 2),
    customer_id int,
    FOREIGN key(customer_id) REFERENCES customers(id)
);

INSERT INTO customers(first_name, last_name, email)
VALUES('Boy', 'George', 'george@gmail.com'),
('George', 'Michael', 'gm@gmail.com'),
('David', 'Bowie', 'david@gmail.com'),
('Blue', 'Steele', 'blue@gmail.com'),
('Bette', 'Davis', 'bette@aol.com');

INSERT INTO orders(order_date, price, customer_id)
VALUES('2016/02/10', 99.99, 1),
('2017/11/11', 35.50, 1),
('2014/12/12', 800.67, 2),
('2015/01/03', 12.50, 2),
('1999/04/11', 450.25, 5);

INSERT INTO orders (order_date, price, customer_id)
VALUES ('2016/06/06', 33.67, 98);  # this data can't be insert because the customer_id is not valid in data.

# inner join.   

select * from customers INNER join orders on customers.id = orders.customer_id;

# left join   

select * from customers left join orders on customers.id = orders.customer_id;

# right join. 

select * from customers right join orders on customers.id = orders.customer_id;