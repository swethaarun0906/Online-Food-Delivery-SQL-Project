create table stores(trans_id int primary key,store varchar(100) not null,salesamount int);
insert into stores values(1,"A",100);
insert into stores values(2,"A",150);
insert into stores values(3,"A",200);
insert into stores values(4,"B",150);
insert into stores values(5,"B",100);
SELECT *FROM STORES;
select trans_id,store,salesamount, sum(salesamount) over(partition by store order by trans_id) as totalsales from stores; #windows function-aggregate func
select trans_id,store,salesamount, rank() over (order by trans_id) as ranking from stores;
#DCL
CREATE USER 'swetha'@'localhost' IDENTIFIED BY 'password123';
GRANT INSERT, UPDATE, SELECT ON dummy.employee3 TO 'swetha'@'localhost'; #PERMISSION
REVOKE INSERT ON dummy.employee3 FROM 'swetha'@'localhost'; #GET THE PERMISSION AGAIN
SHOW GRANTS FOR 'swetha'@'localhost';
#TCL
CREATE TABLE Bank2 (
    AccountNo INT,
    Name VARCHAR(50),
    Balance DECIMAL(10,2)
);

INSERT INTO Bank2 VALUES (1, 'kumar', 1000.00);
INSERT INTO Bank2 VALUES (2, 'swetha', 1500.00);
commit
select*from Bank2;
begin

UPDATE Bank2 SET Balance = Balance - 500 WHERE Name = 'kumar';
UPDATE Bank2 SET Balance = Balance + 500 WHERE Name = 'swetha';
rollback #rollback
begin
UPDATE Bank2 SET Balance = Balance - 200 WHERE Name = 'kumar';
savepoint sp1;
UPDATE Bank2 SET Balance = Balance + 200 WHERE Name = 'swetha';
rollback to sp1; #savepoint
