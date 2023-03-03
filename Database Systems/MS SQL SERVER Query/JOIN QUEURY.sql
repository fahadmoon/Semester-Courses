create Database JoinTopic;
use JoinTopic;

create table Dept_Info
(
dept_id varchar(3) not null,
dept_name varchar(20) not null,
dept_Location varchar(20),
);
create table Emp_Info
(
emp_id int not null,
emp_name varchar(20) not null,
emp_salary decimal(8,2),
emp_deptNo varchar(3),

constraint pID_key primary key(emp_id),
);



insert into Emp_Info values(1,'Jahanzaib',20000,'D1'),
(2,'Mehboob',50000,'D4'),
(3,'Fahad',900000,'D2'),
(4,'Bilal',50000,'D4'),
(5,'Namon',60000,'D3'),
(6,'Waleed',70000,'D1');

insert into Emp_Info values(7,'Danish',20000,'D6'),
(8,'Ahmad',50000,'D7');

select * from Emp_Info;

insert into Dept_Info values('D1','WEB DEVELOPER','LAHORE'),
('D2','ANDROID DEVELOPER','BAHAWALNAGER'),
('D3','BLOCKCHAIN DEVELOPER','ISLMABAD'),
('D4','.NET DEVELOPER','KARACHI');


/*INNER JOIN*/
use JoinTopic;
select emp_id,emp_name,dept_name,dept_Location from Emp_Info inner join Dept_Info 
on Emp_info.emp_deptNo=Dept_Info.dept_id;
/*INNER JOIN use aliases*/
select e.emp_id,e.emp_name,d.dept_name,d.dept_Location from Emp_Info as e inner join Dept_Info as d
on e.emp_deptNo=d.dept_id;
/*Left outer JOIN*/

select e.emp_id,e.emp_name,e.emp_deptNo,d.dept_name,d.dept_Location
from Emp_Info as e left join Dept_Info as d
on e.emp_deptNo=d.dept_id;

/*Right outer join*/
