create table employee(id int primary key,name varchar(100) not null,salary decimal(10,2),dept_id int)
insert into employee values(1,"swetha",60000,101)
insert into employee values(2,"sneha",50000,102)
insert into employee values(3,"kumar",55000,103)
insert into employee values(4,"pranav",70000,104)
insert into employee values(5,"kavin",65000,105)
select name,salary from employee e where salary>(select avg(salary) from employee where e.id=e.id)
select name,salary from employee where salary>(select avg(salary) from employee)
select*from employee
use dataanalytics
select*from employee
create table branch(branch_id int,branch_name varchar(100),address varchar(100))
insert into branch values(1,"chennai","10th street")
insert into branch values(2,"madurai","15th street")
insert into branch values(3,"selam","12th street")
insert into branch values(4,"Ramnad","16th street")
select*from branch
select*from employee
update employee set id=emp_id where employee table 
alter table employee change column id emp_id int
alter table branch change column branch_id dept_id int
update employee set dept_id=1 where dept_id=101
update employee set dept_id=2 where dept_id=102
update employee set dept_id=3 where dept_id=103
update employee set dept_id=4 where dept_id=104
update employee set dept_id=5 where dept_id=105
select employee.emp_id,employee.name,employee.salary,branch.branch_name from employee join branch on employee.dept_id=branch.dept_id 
select employee.emp_id,employee.name,employee.salary,branch.branch_name from employee cross join branch on employee.dept_id=branch.dept_id
insert into branch values(5,"theni","17th street")
insert into branch values(6,"Mumbai","20th street")
insert into employee values(7,"raja",35000,1)
insert into employee values(8,"danu",30000,1)
insert into employee values(9,"priya",29000,2)
insert into employee values(10,"divya",28000,3)
drop table employee
create table customer(cus_id int primary key,cus_name varchar(100) not null,city varchar(100))
insert into customer values(1,"swetha","chennai")
insert into customer values(2,"kumar","madurai")
insert into customer values(3,"pranav","selam")
insert into customer values(4,"arun","ooty")
select*from customer
create table orders(ord_id int primary key,cus_id int,order_amont int)
insert into orders values(101,1,400)
insert into orders values(102,2,450)
insert into orders values(103,3,500)
insert into orders values(104,4,1000)
insert into orders values(105,5,1500)
select*from orders
select*from customer
select customer.cus_id,customer.cus_name,orders.ord_id from customer right join orders on customer.cus_id=orders.cus_id union select customer.cus_id,customer.cus_name,orders.ord_id from customer left join orders on customer.cus_id=orders.cus_id
update orders set cus_id=1 where cus_id=3
select * from customer right join orders on customer.cus_id=orders.cus_id union select * from customer left join orders on customer.cus_id=orders.cus_id
select customer.cus_id,customer.cus_name,orders.ord_id from customer cross join orders 
create table employee1(id int primary key,name varchar(100) not null,salary decimal(10,2))
drop table employee1
insert into employee1 values(1,"swetha",60000)
insert into employee1 values(2,"sneha",50000)
insert into employee1 values(3,"kumar",55000)
insert into employee1 values(4,"pranav",70000)
insert into employee1 values(5,"kavin",65000)
select*from employee1
create table departments(id int ,dept_name varchar(100) not null,manager_id int)
insert into departments values(1,"hr",2)
insert into departments values(2,"cs",1)
insert into departments values(3,"bca",3)
insert into departments values(4,"eee",4)
insert into departments values(5,"ece",2)
select*from employee1
select*from departments
select name from employee1 where id=(select manager_id from departments where id=1) #single subquery
select name from employee1 where id in(select manager_id from departments where id in(1,3)) #multiple subquery
select*from employee
select * from employee where  salary>=(select avg(salary) from employee where employee.dept_id=employee.dept_id) #correlated subquery
select * from employee where  salary>(select avg(salary) from employee) #non correlated subquery
select 10/5 as  sum #arithmetic operator
select*from employee1 where salary>50000 #comparison operatore =,<=,>=,<,>
select*from employee1 where salary between 50000 and 60000 #BETWEEN
select name from employee1 where name like "k%" #Like
select name from employee1 where name like "%r" #Like
select name from employee1 where name is not null
select* from employee1 where id in(2,3,4) 




