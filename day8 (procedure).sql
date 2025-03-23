SELECT * FROM third2.emp_details;

#stored procedure
 create table players(
 player_id int,
 name varchar(50),
 country varchar(50),
 goals int);
 
 INSERT INTO players (player_id, name, country, goals) VALUES
(1, 'Lionel Messi', 'Argentina', 800),
(2, 'Cristiano Ronaldo', 'Portugal', 850),
(3, 'Neymar Jr', 'Brazil', 450),
(4, 'Robert Lewandowski', 'Poland', 550),
(5, 'Kylian Mbappe', 'France', 300),
(6, 'Harry Kane', 'England', 350),
(7, 'Karim Benzema', 'France', 450),
(8, 'Mohamed Salah', 'Egypt', 300),
(9, 'Kevin De Bruyne', 'Belgium', 150),
(10, 'Erling Haaland', 'Norway', 200);

select*from players;

delimiter &&
create procedure top_player()
begin
	select name, country, goals
	from players
    where goals>500;
end &&
delimiter ;

call top_player();

select*from emp_details;

delimiter //
create procedure update_salary(in temp_name varchar(20),
new_salary float)
begin
update emp_details set 
salary =new_salary where name=temp_name;
end //
delimiter ;
select*from emp_details;

delimiter //
create procedure sp_CountEmployees(out total_emps int)
begin 
select count(name) into total_emps from emp_details
where sex='F';
end //
delimiter ;

call sp_CountEmployees(@F_emp);
select @F_emp as female_emps;


















 