-- Вывести всех работников чьи зарплаты есть в базе, вместе с зарплатами.
select emp.employee_name, sal.monthly_salary 
from employees as emp
join employee_salary as mid on emp.id = mid.employee_id
join salary as sal on mid.salary_id = sal.id


-- Вывести всех работников у которых ЗП меньше 2000.
select emp.employee_name, sal.monthly_salary 
from employees as emp
join employee_salary as mid on emp.id = mid.employee_id
join salary as sal on mid.salary_id = sal.id
where sal.monthly_salary < 2000

-- Вывести все зарплатные позиции, но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)
select * from salary
where id not in (select sal.id
					from employees as emp
					join employee_salary as mid on emp.id = mid.employee_id
					join salary as sal on mid.salary_id = sal.id)


--Вывести все зарплатные позиции  меньше 2000 но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)
select * from salary
where id not in (select sal.id
					from employees as emp
					join employee_salary as mid on emp.id = mid.employee_id
					join salary as sal on mid.salary_id = sal.id)
AND monthly_salary < 2000

-- Найти всех работников кому не начислена ЗП.
select * from employees
where id not in (select emp.id
					from employees as emp
					join employee_salary as mid on emp.id = mid.employee_id
					join salary as sal on mid.salary_id = sal.id)

--Вывести всех работников с названиями их должности.
select employees.employee_name, roles.role_name  
from employees
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles_employee.role_id = roles.id

-- Вывести имена и должность только Java разработчиков.
select employees.employee_name, roles.role_name  
from employees
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles_employee.role_id = roles.id where roles.role_name like '%Java dev%'

-- Вывести имена и должность только Python разработчиков.
select employees.employee_name, roles.role_name  
from employees
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles_employee.role_id = roles.id where roles.role_name like '%Python%'

--Вывести имена и должность всех QA инженеров.
select employees.employee_name, roles.role_name  
from employees
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles_employee.role_id = roles.id where roles.role_name like '%QA%'

--Вывести имена и должность ручных QA инженеров.
select employees.employee_name, roles.role_name  
from employees
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles_employee.role_id = roles.id where roles.role_name like '%Manual QA%'

--Вывести имена и должность автоматизаторов QA
select employees.employee_name, roles.role_name  
from employees
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles_employee.role_id = roles.id where roles.role_name like '%Automation QA%'

--Вывести имена и зарплаты Junior специалистов
select employees.employee_name, roles.role_name, salary.monthly_salary from employees
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles_employee.role_id = roles.id
join employee_salary on employees.id = employee_salary.salary_id
join salary on employee_salary.salary_id = salary.id
where role_name like '%Junior%'

-- Вывести имена и зарплаты Middle специалистов
select employees.employee_name, roles.role_name, salary.monthly_salary from employees
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles_employee.role_id = roles.id
join employee_salary on employees.id = employee_salary.salary_id
join salary on employee_salary.salary_id = salary.id
where role_name like '%Middle%'

--Вывести имена и зарплаты Senior специалистов
select employees.employee_name, roles.role_name, salary.monthly_salary from employees
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles_employee.role_id = roles.id
join employee_salary on employees.id = employee_salary.salary_id
join salary on employee_salary.salary_id = salary.id
where role_name like '%Senior%'

--Вывести зарплаты Java разработчиков
select roles.role_name, salary.monthly_salary from employees
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles_employee.role_id = roles.id
join employee_salary on employees.id = employee_salary.salary_id
join salary on employee_salary.salary_id = salary.id
where role_name like '%Java dev%'

--Вывести зарплаты Python разработчиков
select roles.role_name, salary.monthly_salary from employees
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles_employee.role_id = roles.id
join employee_salary on employees.id = employee_salary.salary_id
join salary on employee_salary.salary_id = salary.id
where role_name like '%Python%'

--Вывести имена и зарплаты Junior Python разработчиков
select employees.employee_name, roles.role_name, salary.monthly_salary from employees
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles_employee.role_id = roles.id
join employee_salary on employees.id = employee_salary.salary_id
join salary on employee_salary.salary_id = salary.id
where role_name like '%Junior Python%'


--Вывести имена и зарплаты Middle JS разработчиков
select employees.employee_name, roles.role_name, salary.monthly_salary from employees
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles_employee.role_id = roles.id
join employee_salary on employees.id = employee_salary.salary_id
join salary on employee_salary.salary_id = salary.id
where role_name like '%Middle JavaScript%'

--Вывести имена и зарплаты Senior Java разработчиков
select employees.employee_name, roles.role_name, salary.monthly_salary from employees
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles_employee.role_id = roles.id
join employee_salary on employees.id = employee_salary.salary_id
join salary on employee_salary.salary_id = salary.id
where role_name like '%Senior Java%'

--Вывести зарплаты Junior QA инженеров
select roles.role_name, salary.monthly_salary from employees
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles_employee.role_id = roles.id
join employee_salary on employees.id = employee_salary.salary_id
join salary on employee_salary.salary_id = salary.id
where role_name like '%Junior QA%'

--Вывести среднюю зарплату всех Junior специалистов
select avg(salary.monthly_salary) as avg_salary from employees
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles_employee.role_id = roles.id
join employee_salary on employees.id = employee_salary.salary_id
join salary on employee_salary.salary_id = salary.id
where role_name like '%Junior%'

--Вывести сумму зарплат JS разработчиков
select sum(salary.monthly_salary) as sum_salary from employees
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles_employee.role_id = roles.id
join employee_salary on employees.id = employee_salary.salary_id
join salary on employee_salary.salary_id = salary.id
where role_name like '%JavaScript%'

--Вывести минимальную ЗП QA инженеров
select min(salary.monthly_salary) as min_salary from employees
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles_employee.role_id = roles.id
join employee_salary on employees.id = employee_salary.salary_id
join salary on employee_salary.salary_id = salary.id
where role_name like '%QA%'

--Вывести максимальную ЗП QA инженеров
select max(salary.monthly_salary) as max_salary from employees
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles_employee.role_id = roles.id
join employee_salary on employees.id = employee_salary.salary_id
join salary on employee_salary.salary_id = salary.id
where role_name like '%QA%'

--Вывести количество QA инженеров
select count(roles.role_name) as count_QA
from employees
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles_employee.role_id = roles.id where roles.role_name like '%QA%'

--Вывести количество Middle специалистов.
select count(roles.role_name) as count_Middle
from employees
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles_employee.role_id = roles.id where roles.role_name like '%Middle%'

--Вывести количество разработчиков
select count(roles.role_name) as count_dev
from employees
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles_employee.role_id = roles.id where roles.role_name like '%develop%'

--Вывести фонд (сумму) зарплаты разработчиков.
select sum(salary.monthly_salary) as sum_salary_dev from employees
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles_employee.role_id = roles.id
join employee_salary on employees.id = employee_salary.salary_id
join salary on employee_salary.salary_id = salary.id
where role_name like '%develop%'

--Вывести имена, должности и ЗП всех специалистов по возрастанию
select employees.employee_name, roles.role_name, salary.monthly_salary from employees
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles_employee.role_id = roles.id
join employee_salary on employees.id = employee_salary.salary_id
join salary on employee_salary.salary_id = salary.id
order by salary.monthly_salary

-- Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП от 1700 до 2300
select employees.employee_name, roles.role_name, salary.monthly_salary from employees
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles_employee.role_id = roles.id
join employee_salary on employees.id = employee_salary.salary_id
join salary on employee_salary.salary_id = salary.id
where salary.monthly_salary between 1700 and 2300 order by salary.monthly_salary

--Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП меньше 2300
select employees.employee_name, roles.role_name, salary.monthly_salary from employees
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles_employee.role_id = roles.id
join employee_salary on employees.id = employee_salary.salary_id
join salary on employee_salary.salary_id = salary.id
where salary.monthly_salary < 2300 order by salary.monthly_salary

--Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП равна 1100, 1500, 2000
select employees.employee_name, roles.role_name, salary.monthly_salary from employees
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles_employee.role_id = roles.id
join employee_salary on employees.id = employee_salary.salary_id
join salary on employee_salary.salary_id = salary.id
where salary.monthly_salary in (1100, 1500, 2000) order by salary.monthly_salary


