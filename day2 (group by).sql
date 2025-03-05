create table employees(Emp_id int primary key, Emp_name varchar(50), Age int, 
Gender char(1), doj date, dept varchar(20), city varchar(50) );

describe employees;
insert into employees values(101, 'Amit Sharma', 29, 'M', '2018-06-15', 'IT', 'Jaipur'),  
(102, 'Neha Verma', 25, 'F', '2020-08-21', 'HR', 'Delhi'),  
(103, 'Rahul Mehta', 35, 'M', '2015-04-10', 'Finance', 'Mumbai'),  
(104, 'Pooja Singh', 28, 'F', '2019-11-05', 'Marketing', 'Bangalore'),  
(105, 'Ravi Kumar', 30, 'M', '2017-07-23', 'IT', 'Hyderabad'),  
(106, 'Ananya Gupta', 27, 'F', '2021-03-18', 'Operations', 'Pune'),  
(107, 'Vikas Yadav', 32, 'M', '2016-12-01', 'Sales', 'Chennai'),  
(108, 'Simran Kaur', 26, 'F', '2022-09-14', 'HR', 'Jaipur'),  
(109, 'Manoj Tiwari', 40, 'M', '2013-05-20', 'Finance', 'Kolkata'),  
(110, 'Ruchi Malhotra', 31, 'F', '2018-01-10', 'IT', 'Delhi'),
(111, 'Arjun Kapoor', 34, 'M', '2016-09-25', 'Marketing', 'Mumbai'),  
(112, 'Meera Joshi', 29, 'F', '2019-06-30', 'IT', 'Bangalore'),  
(113, 'Sandeep Roy', 37, 'M', '2014-11-15', 'Operations', 'Hyderabad'),  
(114, 'Kavita Bansal', 26, 'F', '2021-05-19', 'HR', 'Pune'),  
(115, 'Prakash Nair', 39, 'M', '2012-03-10', 'Finance', 'Chennai'),  
(116, 'Shreya Das', 27, 'F', '2020-07-22', 'Sales', 'Kolkata'),  
(117, 'Tarun Bhardwaj', 31, 'M', '2017-10-05', 'Marketing', 'Delhi'),  
(118, 'Ankita Sharma', 24, 'F', '2022-01-17', 'IT', 'Jaipur'),  
(119, 'Gaurav Saxena', 36, 'M', '2015-08-09', 'Operations', 'Mumbai'),  
(120, 'Pallavi Mishra', 30, 'F', '2018-04-28', 'Finance', 'Bangalore');  

select*from employees;

select distinct city from employees;
select distinct dept from employees;

select dept, avg(Age) as average_age from employees 
group by dept;

alter table employees add Salary decimal(10, 2);
UPDATE Employees SET salary = 55000.00 WHERE Emp_id = 101;
UPDATE Employees SET salary = 48000.00 WHERE Emp_id = 102;
UPDATE Employees SET salary = 75000.00 WHERE Emp_id = 103;
UPDATE Employees SET salary = 60000.00 WHERE Emp_id = 104;
UPDATE Employees SET salary = 68000.00 WHERE Emp_id = 105;
UPDATE Employees SET salary = 53000.00 WHERE Emp_id = 106;
UPDATE Employees SET salary = 72000.00 WHERE Emp_id = 107;
UPDATE Employees SET salary = 49000.00 WHERE Emp_id = 108;
UPDATE Employees SET salary = 80000.00 WHERE Emp_id = 109;
UPDATE Employees SET salary = 65000.00 WHERE Emp_id = 110;
UPDATE Employees SET salary = 70000.00 WHERE Emp_id = 111;
UPDATE Employees SET salary = 57000.00 WHERE Emp_id = 112;
UPDATE Employees SET salary = 78000.00 WHERE Emp_id = 113;
UPDATE Employees SET salary = 52000.00 WHERE Emp_id = 114;
UPDATE Employees SET salary = 83000.00 WHERE Emp_id = 115;
UPDATE Employees SET salary = 54000.00 WHERE Emp_id = 116;
UPDATE Employees SET salary = 66000.00 WHERE Emp_id = 117;
UPDATE Employees SET salary = 50000.00 WHERE Emp_id = 118;
UPDATE Employees SET salary = 77000.00 WHERE Emp_id = 119;
UPDATE Employees SET salary = 62000.00 WHERE Emp_id = 120;

describe employees;
select*from employees;

select dept, sum(Salary) as sum_salary from employees
group by dept;
select count(Emp_id), city from employees
group by city
order by count(Emp_id) desc;

select year(doj) as year, count(Emp_id) from employees
group by year(doj);

-- another data
create table sales (product_id int, sell_price float, quantity int, state varchar(20));
insert into sales values (201, 499.99, 50, 'Rajasthan'),  
(202, 1299.50, 30, 'Maharashtra'),  
(203, 799.75, 40, 'Karnataka'),  
(204, 299.25, 100, 'Gujarat'),  
(205, 999.00, 25, 'Tamil Nadu'),  
(206, 450.60, 60, 'Uttar Pradesh'),  
(207, 1500.75, 20, 'Delhi'),  
(208, 650.80, 45, 'West Bengal'),  
(209, 349.99, 80, 'Punjab'),  
(210, 899.20, 35, 'Madhya Pradesh');  

select*from sales;

create table c_product (product_id int, cost_price float);
insert into c_product values (121, 270.0),
(123, 250.0);
select*from c_product;

select c.product_id, sum((s.sell_price - c.cost_price)*s.quantity) as profit
from sales as s inner join c_product as c
where s.product_id=c.product_id
group by c.product_id;

select dept, avg(Salary) as avg_salary
from employees
group by dept
having avg(Salary)>75000;


  
