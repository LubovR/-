--Создать таблицу employees
-- id. serial,  primary key,
-- employee_name. Varchar(50), not null


create table employees(
	id serial primary key,
	employee_name varchar(50) not null
);

-- Наполнить таблицу employee 70 строками.
insert into employees(employee_name) values 
	('Everett Thompson'),
	('Luis Jacobs'),
	('Curtis Edwards'),
	('Sean McDaniel'),
	('Michael Lawrence'),
	('David Reid'),
	('Dianne Rogers'),
	('Janet Jones'),
	('Kenneth Austin'),
	('Kathryn Brady'),
	('Becky George'),
	('Hazel Turner'),
	('Terri Allen'),
	('Annie Turner'),
	('Benjamin Baker'),
	('Melvin Davis'),
	('Kyle Robinson'),
	('Larry Hicks'),
	('Amy King'),
	('Annette Washington'),
	('George Arnold'),
	('John Scott'),
	('Michael Shaw'),
	('Suzanne Brooks'),
	('Marcus Robinson'),
	('Laurie Johnson'),
	('Mario Lee'),
	('Charles Campbell'),
	('Maurice Delgado'),
	('Marion Harris'),
	('Arthur Terry'),
	('Helen Brown'),
	('Perry Walton'),
	('Joseph Ruiz'),
	('Michelle Lamb'),
	('Thomas Webster'),
	('Robert Taylor'),
	('Denise Harris'),
	('Matthew Morris'),
	('Robert Jimenez'),
	('Robert Kelly'),
	('Kevin White'),
	('John Coleman'),
	('James Lopez'),
	('Ruth Snyder'),
	('Anthony Phillips'),
	('Freddie Harper'),
	('David Barrett'),
	('James Harrison'),
	('Ann Massey'),
	('Sara Harris'),
	('Emily Ortiz'),
	('Joseph Nelson'),
	('John Penav'),
	('Mary West'),
	('Donna Gray'),
	('Shelly Phillips'),
	('John Rice'),
	('Sherry Griffin'),
	('Rose Burns'),
	('Pamela Wallace'),
	('Helen Davis'),
	('Adrian Jones'),
	('Dawn Watkins'),
	('Leo Edwards'),
	('Leona Simpson'),
	('Becky Henderson'),
	('Shirley Wheeler'),
	('Tiffany West'),
	('Robert Gray');

	select * from employees;
	
--Создать таблицу salary
-- id. Serial  primary key,
-- monthly_salary. Int, not null

create table salary(
	id serial primary key,
	monthly_salary int not null
);

--Наполнить таблицу salary строками:
insert into salary(monthly_salary) values 
	('1000'),
	('1100'),
	('1200'),
	('1300'),
	('1400'),
	('1500'),
	('1600'),
	('1700'),
	('1800'),
	('1900'),
	('2000'),
	('2100'),
	('2200'),
	('2300'),
	('2400'),
	('2500');

select * from salary;

-- Создать таблицу employee_salary
-- id. Serial  primary key,
-- employee_id. Int, not null, unique
-- salary_id. Int, not null


create table employee_salary(
	id serial primary key,
	employee_id int not null unique,
	salary_id int not null
); 

--Наполнить таблицу employee_salary 40 строками:
-- в 10 строк из 40 вставить несуществующие employee_id

insert into employee_salary(employee_id, salary_id) values
	(10, 3),
	(3, 8),
	(40, 15),
	(77, 1),
	(8, 4),
	(15, 11),
	(22, 5),
	(80, 2),
	(11, 12),
	(35, 6),
	(99, 13),
	(44, 9),
	(68, 7),
	(2, 10),
	(120, 14),
	(7, 1),
	(51, 8),
	(29, 10),
	(137, 6),
	(34, 11),
	(48, 15),
	(52, 3),
	(163, 4),
	(63, 2),
	(5, 13),
	(12, 5),
	(93, 1),
	(24, 7),
	(37, 9),
	(49, 12),
	(53, 14),
	(166, 1),
	(64, 5),
	(1, 8),
	(13, 12),
	(88, 9),
	(27, 3),
	(31, 2),
	(46, 11),
	(111, 15);

select * from employee_salary;

--Создать таблицу roles
-- id. Serial  primary key,
-- role_name. int, not null, unique


create table roles(
	id serial primary key,
	role_name int not null unique
);

--Поменять тип столба role_name с int на varchar(30)

alter table roles alter column role_name type varchar(30);

--Наполнить таблицу roles 20 строками

insert into roles(role_name) values 
	('Junior Python developer'),
	('Middle Python developer'),
	('Senior Python developer'),
	('Junior Java developer'),
	('Middle Java developer'),
	('Senior Java developer'),
	('Junior JavaScript developer'),
	('Middle JavaScript developer'),
	('Senior JavaScript developer'),
	('Junior Manual QA engineer'),
	('Middle Manual QA engineer'),
	('Senior Manual QA engineer'),
	('Project Manage'),
	('Designer'),
	('HR'),
	('CEO'),
	('Sales manager'),
	('Junior Automation QA engineer'),
	('Middle Automation QA engineer'),
	('Senior Automation QA engineer');

select * from roles;

--Создать таблицу roles_employee
-- id. Serial  primary key,
-- employee_id. Int, not null, unique (внешний ключ для таблицы employees, поле id)
-- role_id. Int, not null (внешний ключ для таблицы roles, поле id)


create table roles_employee(
	id serial primary key,
	employee_id int not null unique,
	role_id int not null,
	foreign key (employee_id)
		references employees (id),
	foreign key (role_id)
		references roles (id)
	);

--Наполнить таблицу roles_employee 40 строками:

insert into roles_employee(employee_id,role_id) values
	(1, 20),
	(19, 2),
	(22, 15),
	(3, 17),
	(17, 12),
	(9, 10),
	(11, 3),
	(25, 1),
	(28, 14),
	(31, 16),
	(43, 5),
	(55, 8),
	(37, 9),
	(44, 13),
	(52, 11),
	(33, 4),
	(40, 6),
	(57, 7),
	(59, 18),
	(69, 19),
	(2, 5),
	(15, 13),
	(5, 8),
	(8, 18),
	(16, 9),
	(12, 1),
	(20, 2),
	(45, 13),
	(24, 7),
	(23, 14),
	(50, 4),
	(47, 10),
	(61, 6),
	(32, 16),
	(34, 15),
	(62, 11),
	(49, 17),
	(38, 3),
	(68, 12),
	(70, 20);

select * from roles_employee;

