create database practice
create table kabbo(id int,name varchar(20),hobby varchar(100),primary key(id));
insert into kabbo values(1,'gol alu','besi kotha bola'),(2,'sir','niti bakko shunano'),(3,'daini','mair deya'),(4,'kutni','paanji')
select * from kabbo;
Truncate table kabbo;

create table info(id int foreign key references kabbo(id),city varchar(10),nature varchar(50),salary int);
insert into info values(1,'maati','poche jawa',100000),(2,'dhaka','khub valo',120000),(3,'heart','paanji',450000);
select * from info;
Truncate table info;
drop table info;

select hobby,name from kabbo union select city, nature from info;
select hobby from kabbo intersect select nature from info;
select hobby from kabbo except select nature from info;

select * from info where not exists (select id from info where salary<120000)

select left(name,3)as special_piece,RIGHT(hobby,4)as right_hobby from kabbo;

select SUBSTRING(hobby,5,3)as sub_name from kabbo;
select reverse(name)as reverse_name from kabbo;
select CAST(salary as integer)as float_salary from info;
select name+'        '+hobby from kabbo;