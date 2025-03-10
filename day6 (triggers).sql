create database triggers;
use triggers;
show tables;

-- before insert
create table customerss
(cust_id int, age int, name varchar(30));

delimiter //
create trigger age_verify
before insert on customerss
for each row
if new.age<0 then set new.age=0;
end if; //

insert into customerss values
(101, 27, "james"),
(102, -40, "heeriye"),
(103, 35, "manpreet"),
(104, -28, "gurpreet");
select*form customerss;




create table customers1
id int auto_increment primary key,
name varchar(40) not null,
email varchar(30), birthdate date);

create table message (
id int auto_increment,
messagedID int,
message varchar(300) not null,
primary key(id, messageID));

select*from customerss;

delimiter //
create trigger
check_null_dob
after insert on customers1
for each row
begin
if new.birthdate is null then
insert into message (messageID, message) 
values (new.id, concat('hi', new.name, 'please update your dob'));
end if;
end //

insert into customers1 (name, email, birthdate)
values ("nancy", "nancy@abc.com", null),
("ROLAND","ronald@xyz.com", "1998-11-16"),
("chris", "chris@xyz.com", "1997-08-20"),
("alice", "alice@anc.com", null);

select*from message;







 