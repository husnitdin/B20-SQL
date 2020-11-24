Select FIRST_NAME, LAST_NAME, EMAIL, PHONE_NUMBER, HIRE_DATE, SALARY 
  from employees
where lower (first_name) Like '%mi%';

 Select  FIRST_NAME AS "FIRST NAME",
        LAST_NAME AS "LAST NAME", 
        EMAIL, 
        PHONE_NUMBER AS "PHONE NUMBER", 
        HIRE_DATE as "HIRE MONTH", 
        SALARY 
  from employees
  
  WHERE lower(substr(HIRE_DATE, 4,3))  = 'jan';
  
  select EMPLOYEE_ID ,
         FIRST_NAME ,
         LAST_NAME ,
         EMAIL ,
         PHONE_NUMBER ,
         HIRE_DATE ,
         JOB_ID ,
         SALARY from employees
  where  salary = (select max(salary) from employees) or 
         salary = (select min(salary) from employees);

  SELECT JOB_ID,
         COUNT(*),
         SUM(SALARY),
         MAX(SALARY),
         MIN(SALARY),
         AVG(SALARY) 
        
  FROM EMPLOYEES GROUP BY JOB_ID
  Having max(salary) < 10000
  order by MAX(SALARY);
  
  Select count(*), 
      country_id 
      from Locations
      GROUP BY country_id ;
      
      
      
      