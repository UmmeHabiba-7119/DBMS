create database practice2;
create table salesman(id int,name varchar(15),product varchar(20),price int,date date,customer_id int,primary key(id));
insert into salesman values(1,'rojoni','eye lash',200,'2018-03-11',311),(2,'sraboni','eye shadow',400,'2018-03-15',312),(3,'kabbo','perfume',500,'2018-03-22',313);
select * from salesman;
drop table salesman;
drop database practice2;

create table customer(id int foreign key references salesman(id),address varchar(20),nationality varchar(15));
insert into customer values(1,'rajshahi','bangladeshi'),(2,'chandpur','bangladeshi'),(3,'heaven','heavenian');
select * from customer;
drop table customer;

alter table customer add favourite varchar(50);
alter table customer drop column favourite;

select name from salesman order by date asc;
select address from customer order by id desc;

update customer set address='dhaka' where address='rajshahi';

delete customer where id=1;

select sum(price) as total_price from salesman;
select MAX(price) as max_price, MIN(price) as min_price from salesman;
select AVG(price) as avg_price from salesman;
select COUNT(product) as number from salesman;

select * from customer where nationality in('bangladeshi');
select * from customer where nationality not in('bangladeshi');

select salesman.id,customer.address from salesman inner join customer on salesman.id=customer.id where customer.address not in('dhaka');



