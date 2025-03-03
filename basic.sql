# for showing the database
show databases;

-- for table show
show tables;

select*from patient;
describe patient;

# let's create table
create table emp_details
(Name varchar(25), 
Age int,
sex char(1),
dob date, 
city varchar(15), 
salary float);

describe emp_details;

insert into emp_details
values("nikky", 34, "F", "2005-04-21", "chicago", 70000),
("vikky", 23, "M", "1994-01-12", "noida", 50000),
("shanaya", 18, "F", "2001-10-2", "deccan", 10000),
("shubham", 45, "M", "1989-04-26", "pune", 80000),
("siddhart", 38, "M", "2005-04-21", "mansarover", 60000),
("shivangi", 21, "F", "2005-04-21", "chicago", 70000);

select * from emp_details;

-- for unique values in the column
select distinct city from emp_details;

-- aggregation functions  
-- yha pe as column name dene ke liye h aliase function (as) 
select count(name) as count_name from emp_details;

select sum(salary) from emp_details;
select avg(salary) from emp_details;
select name, city, age from emp_details;
select * from emp_details where age>35;
select name, city, sex from emp_details where sex = "F";
 
 -- or operator  and where clause
select*from emp_details
where city = "deccan" or "chicago";

-- in operator used for multiple values
select*from emp_details where
city in("chicago","deccan","noida");

-- between operator
select*from emp_details
where dob between "2000-01-01" and "2010-10-30";

-- and operator
select*from emp_details
where age>30 and sex='M';

-- group by clause 
select sex, sum(salary) as total_salary from emp_details
group by sex;

-- desc is used for descending order 
select*from emp_details order by(salary) desc;

-- some other operator
select(10+20) as addition;
select length("india") as total_len;
select repeat('@', 5); 
select lower("KJSDNFJ");
select curdate();
select day(curdate());
select now();

-- string function
select upper("india");
select lower("SDSAC");
select lcase("SDWAWF");
select length("jdwahuich");
select character_length("aehu uhaefui iueahfi");



 