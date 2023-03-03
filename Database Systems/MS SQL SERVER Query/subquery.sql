use Company;

create table Emp_info
(
emp_id int not null,
emp_name varchar(40) not null,
salary decimal(10,2) not null,
dept_id int not null,
primary key(emp_id,dept_id),
);

insert into Emp_info values
(1,'Fahad',40000,1),
(2,'ali',35000,2),
(1,'amir',65000,3),
(1,'hassan',90000,4),
(1,'waqas',20000,5);


select * from Emp_info;
select emp_name as Employee_name,salary as Salary from Emp_info
where salary>=(select salary from Emp_info where emp_name='Fahad');

select count(*) from Emp_info group by emp_id ;


