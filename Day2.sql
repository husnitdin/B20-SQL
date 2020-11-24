select * from employees
where department_id = 60 or department_id = 100;

select first_name, last_name, salary, job_id 
from employees
where department_id = 60 or department_id = 100;


select first_name, phone_number 
from employees
where department_id IN (60, 100, 90, 80, 120);

select FIRST_NAME, LAST_NAME, PHONE_NUMBER, HIRE_DATE, JOB_ID, SALARY
from employees
where first_name LIKE 'A%';

select FIRST_NAME, LAST_NAME, PHONE_NUMBER, HIRE_DATE, JOB_ID, SALARY
from employees
where first_name LIKE '%a';


select FIRST_NAME, LAST_NAME, PHONE_NUMBER, HIRE_DATE, JOB_ID, SALARY
from employees
where first_name LIKE 'A%' and last_name LIKE '%n';

select FIRST_NAME, LAST_NAME, PHONE_NUMBER, HIRE_DATE, JOB_ID, SALARY
from employees
where first_name LIKE 'A%' or first_name LIKE '%a%';

select FIRST_NAME, LAST_NAME, PHONE_NUMBER, HIRE_DATE, JOB_ID, SALARY
from employees
where job_id LIKE 'AD%';

select FIRST_NAME, LAST_NAME, PHONE_NUMBER, HIRE_DATE, JOB_ID, SALARY
from employees
where job_id LIKE '%REP';

select FIRST_NAME, LAST_NAME, JOB_ID, SALARY
from employees
where job_id NOT LIKE '%REP';

select FIRST_NAME, LAST_NAME, JOB_ID, SALARY
from employees
where first_name NOT LIKE '%a%' and first_name NOT LIKE 'A%';

select FIRST_NAME, LAST_NAME, JOB_ID, SALARY
from employees
where manager_id is null;

select FIRST_NAME, manager_id
from employees
where manager_id is not null;


select upper(first_name)
from employees;

select substr (first_name, 1, 1) ||'. '|| last_name 
from employees;
















