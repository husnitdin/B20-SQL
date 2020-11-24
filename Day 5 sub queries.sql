select first_name, last_name, salary from employees
where salary  = (select max (salary) from employees)
      OR 
      salary  = (select min (salary) from employees);
      
select first_name, last_name, salary from employees
where salary  > (select avg (salary) from employees);

-- find the second max salary

select first_name, last_name, salary from employees
order by salary desc;

select first_name, last_name, salary from employees
where salary = ( select max(salary) from employees
                 where salary  != (select max (salary) from employees));

select max(salary) from employees
where salary  != (select max (salary) from employees);
                

select first_name, salary from employees 
where salary IN ( (select max (salary) from employees), 
                  (select min (salary) from employees) );             
                 

                 
                 
                 