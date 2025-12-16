use dummy
create table student(stud_name varchar(100),Mark int,dept_name varchar(100))
insert into student value("swetha",60,"cse")
insert into student value("sneha",75,"eee")
insert into student value("divya",50,"mtech")
insert into student value("krish",80,"cse")
insert into student value("mani",65,"mtech")
insert into student value("pranav",67,"eee")
select*from student
select stud_name,mark from student order by mark desc #order by
select stud_name,mark from student order by mark asc #order by base on column
select sum(mark) from student 
select count(mark),dept_name from student group by dept_name #gives avg mark of each dept_name
select count(stud_name),dept_name from student group by dept_name
create table employee3(emp_id int,First_name varchar(100),Last_name varchar(100),dept_name varchar(100),salary int)
insert into employee3 values(1,"swetha","arun","Hr",50000)
insert into employee3 values(2,"swathi","ilango","It",55000)
insert into employee3 values(3,"divya","sankar","Hr",60000)
insert into employee3 values(4,"vasu","devan","It",65000)
insert into employee3 values(5,"sneha","shyam","Acco",56000)
insert into employee3 values(6,"krishna","kumar","Acco",62000)
select*from employee3
select*from employee3 order by Last_name asc
select*from employee3 where dept_name="It" order by salary desc
select avg(salary),dept_name from employee3 group by dept_name order by dept_name asc
select avg(salary),dept_name from employee3 group by dept_name order by avg(salary) desc limit 2
select count(*)from employee3 where dept_name="It"
select avg(salary),dept_name from employee3 group by dept_name having avg(salary)>50000
create table student1(Id int,Name varchar(100),age int)
alter table student1 add grade varchar(100)
alter table student1 rename column finalgrade to finalrank
delete from student1 where id=101#for delete 