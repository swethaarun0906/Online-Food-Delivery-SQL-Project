create table stores1(trans_id int primary key,store varchar(100) ,salesamount int);
insert into stores1 values(1,"A",100);
insert into stores1 values(2,"A",150);
insert into stores1 values(3,"A",200);
insert into stores1 values(4,"B",150);
insert into stores1 values(5,"B",100);
SELECT *FROM STORES1;
select trans_id,store,salesamount,avg(salesamount) over (partition by store order by trans_id) as totalsales from stores1; #windows function-aggregate func
select trans_id,store,salesamount,row_number() over ( partition by store order by trans_id) as ranking from stores1;
select trans_id,store,salesamount,ntile(2) over (partition by store order by trans_id) as quartile from stores1;
select now();
select curdate();
select curtime();
select datediff("20-08-2025",now());