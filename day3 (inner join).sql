-- INNER JOIN 

create database sql_joins;
show databases;
use sql_joins;

create table cricket (cricket_id int auto_increment,
name varchar(30), primary key(cricket_id));


create table football (football_id int auto_increment,
name varchar(30), primary key(football_id));

insert into cricket(name)
values ("ram"), ("shyam"),("ghanshyam"),("madhusudhan"),("krishan");
select * from cricket;

insert into football(name)
values ("baam"), ("shivam"), ("ghotam"), ("sudhan"), ("krish");
select * from football;
alter table football ;
update football set name ="ram" where name="baam";
update football set name ="shyam" where name="shivam";
update football set name="ghanshyam" where name="ghotam";

select*from cricket as c inner join
football as f on c.name=f.name;

select c.cricket_id, c.name, f.football_id, f.name
from cricket as c inner join football as f on c.name=f.name;

























