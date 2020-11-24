select * from departments
where location_id != 1700;

select * from employees
where salary >= 8000 and salary <= 12000;

select employee_id, first_name, salary from employees
where salary >= 12000 or salary <= 6000;

select first_name, salary from employees
where salary between 13000 and 15000;

