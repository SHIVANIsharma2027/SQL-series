show tables;
select*from employees;
select emp_name, dept, salary from employees
where salary< (select avg(salary) from employees);
select avg(salary) from employees;

create table products (
product_id int,
item varchar(50),
sell_price int,
product_type varchar(100));

alter table employees;

-- update employees
-- set salary=salary*0.35
-- where age in (select age from employees where age>=27);

-- delete subquery

delete from employees
where age in (select age from (select age from employees where age>=27) as temp);
select *from employees;













