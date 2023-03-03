create database shopping_cartDB;
use shopping_cartDB;

create table customersTB
(
customer_id int,
Customer_name varchar(40),
address varchar(100),
email varchar(40),
phone varchar(11),
primary key(customer_id)
);

create table productTB
(
product_id int,
name varchar(20),
price decimal(8,2),
description varchar(100),
primary key(product_id),
);


create table cart_order
(
order_id int,
customer_id int,
product_id int,
quantity int,
order_date date,
status varchar(100),
primary key(order_id),
foreign key(customer_id) references customersTB(customer_id),
foreign key(product_id) references productTB(product_id),
);


/* Insert*/
insert into customersTB values(1,'Fahad','Lahore','Email@email.com','0300000000'),
(2,'Ahmad','Karachi','ahamd@email.com','0311100000'),
(3,'Ali','London','ali@email.com','0300000001'),
(4,'mehboob','Sydny','mehboob@email.com','0300000200'),
(5,'bilal','Multan','bilal@email.com','0300000400');

insert into productTB values(1,'Pen',322.66,'Good'),
(2,'Register',1003.33,'Nice'),
(3,'Bowl',100.12,'Well');