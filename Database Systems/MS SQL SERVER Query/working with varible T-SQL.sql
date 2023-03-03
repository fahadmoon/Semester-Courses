declare @num int=100;
set @num+=50;
select @num;

set @num-=50;

SET @num*=50;
SELECT @num;


--------------

use Company;

declare @name varchar(50);
set @name='Fahad';
--@age=21;
select @name;

--use select 
declare @ename varchar(50),@age int,@salary1 decimal(8,2 );
--declare @ename1 varchar(50),@age1  int;
select @ename='Mehboob',@age=21,@salary1=3000.44;
--select @ename1='FAhad',@age1=22;
select @ename as Name,@age as Age,@salary1 as Salary;



select * from Emp_info;

declare @id int,@emp_name varchar(50),@salary decimal(8,2),@deptid int;
select @id=emp_id,@emp_name=emp_name,@salary=salary
,@deptid=dept_id from Emp_info;
select @emp_name as 'Name' ,@salary as 'Salary';