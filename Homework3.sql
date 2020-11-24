    
    --1. list the initials of all the employees
        select substr(first_name, 1,1) ||'.'||substr(last_name, 1,1) from employees; 
    
    --2. list the full names of all employees ( fullname: Lastname FirstName)
        select first_name ||' '||last_name as "Full Name" from employees;
    
    --3. who has the longest name in the employees table?
        select first_name from employees
        where length(first_name) = (select max (length (first_name)) from employees);
    
    --4. Show all employees who work in any one of these department id  90, 60, 100, 130, 120
        select * from employees 
        where department_id IN (90, 60, 100, 130, 120);
    
    --5. Show all employees who does not work in any one of these department id 90, 60,  100, 130, 120
        select * from employees 
        where department_id NOT IN (90, 60, 100, 130, 120);
    
    --6. divide employees into groups by using thier job id
    --  6.1 display the maximum salaries in each groups
    --  6.2 display the minium salaries in each groups
    --  6.3 display the average salary of each group
    --  6.4 how many employees are there in each group that have minimum salary of 5000 ?
    --  6.5 display the total budgests of each groups
        select 
                max(SALARY) ,
                min(Salary) ,
                round (avg(Salary) ),
                sum(salary),
                count(*)
                from employees 
        where salary >= 5000 
        Group by department_id;
    
    --7. display employees full email addresses and full names (assume that the domain of the email is @gmail)
        select 
            lower (email)||'@gmail.com',
            first_name ||' '||last_name as "Full Name" 
        from employees;
    
    --8. display full addresses from locations table in a single column(full address: 
    --   Street_Address,  CityName  ZipCode,  Country_id)
        select Street_Address||' '||City||' '||Postal_Code||' '||Country_id as "Full Address"
        from locations;
    
    --TASK -- 
   
    --  1.1  GET UNIQUE MANAGER_IDs from Employees Table 
        select distinct (MANAGER_ID) from employees;
    

    --  1.2  GET UNIQUE DEPARTMENTS_ID FROM EMPLOYEES TABLE
        select distinct (DEPARTMENT_ID) from employees;
    
    --  1.3  COUNT UNIQUE DEPARTMENTS_ID FROM EMPLOYEES TABLE 
        select count (distinct (DEPARTMENT_ID)) from employees;

    --  1.4  GET THE SUM OF ALL SALARY FOR JOB_ID FI_ACCOUNT
        select sum(salary) from employees
        where job_id = 'FI_ACCOUNT';
   
    --  1.5  GET FULL_NAME (FIRST_NAME||LAST_NAME) AND LENTH OF EACH FULL NAME FROM EMPLOYEES TABLE 
        select first_name ||' '||last_name as "Full Name" ,
        length(first_name) +  length(last_name) as "Name Length" from employees;
    
    
    --  1.6  GET THE ALL EMPLOYEES WITH first name SECOND CHARACTER 'A'
        select * from employees
        where UPPER (substr(first_name, 2,1)) = 'A';

    --  1.7  GET ALL EMPLOYEES WITH FIRST_NAME HAS 2 'a' no matter where case insenstive
        select * from employees
        where lower(first_name) like '%a%a%';

    --2,  USING DEPARTMENTS TABLE -- 
    --  FIND OUT HOW MANY DEPARTMENTS IN EACH LOCATIONS 
        select count(department_name), location_id from departments
        group by location_id;
    
    --  2.1 USING COUNTRIES TABLE -- (continue from above)
    --  FIND OUT LOCATIONS THAT HAVE MORE THAN 1 DEPARTMENTS
        select count(department_name), location_id from departments
        group by location_id
        having count(department_name) > 1;
    
    --  2.2 FROM THE LOCATION ID RESULT ABOVE QUERY
    --  IN SEPARATE QUERY (USING LOCATIONS TABLE)
    --  FIND OUT STREET ADDRESS OF THAT LOCATION 
    
        ---- I don't know

    --3,  USING EMPLOYEES TABLE 
    --  FIND OUT HOW MANY EMPLOYEES EACH MANAGER MANAGE (group by manager_id)
        select count( *) as emp_count, manager_id from employees
        GROUP BY manager_id;
   
    --  -- continue above 
    --      3.1 -- find out manager who mange more than 10 employees
        select count( *) as emp_count, manager_id from employees
        GROUP BY manager_id
        having count( *) > 10;
    
    --      3.2 -- find out manager who manage exactly 6 employees 
        select manager_id from employees
        GROUP BY manager_id
        having count( *) = 6;
    --
    --4,  USING EMPLOYEES TABLE 
    --  GROUP EMPLOYEES BY COMMISSION_PCT to count how many employee for each commission_pct value 
        select count( *), COMMISSION_PCT from employees
        GROUP BY COMMISSION_PCT;
    
    --5, USING EMPLOYEES TABLE 
    --
    --   5.0 GET THE COUNT OF EMPLOYEE THAT HAVE EXACTLY 5 CHARACTERS IN FIRST NAME (no need for group by)
        select count( *) from employees
        where length(first_name) = 5;
    
    --   5.1 GET THE SUM OF SALARY , SUM OF DISTINCT SALARY FROM EMPLOEEYS TABLE 
        select round (sum( distinct (salary)), 2) as total_distinct_salary from employees;
        
    --   5.2 GET THE SUM OF ALL SALARY FOR EACH DEPARTMENTS 
        select round (sum(salary), 2) as total_salary, department_id from employees
        group by department_id;
    
    --   5.3 GET THE AVG SALARY OF EACH JOB_ID 
        select round (avg(salary), 2) as avg_salary, job_id from employees
        group by job_id;
    
    --   5.4 GET THE AVG SALARY OF EACH DEPARTMENTS 
        select round (avg(salary), 2) as avg_salary, department_id from employees
        group by department_id;
        
    --   5.5 GET THE MAX SALARY OF EACH FOLLOWING DEPARTMENT 90 , 100 , 50 
        select max(salary), department_id from employees
        group by department_id
        having department_id IN (90 , 100 , 50 );
    
    
    --6, USING EMPLOYEES TABLE   
    --
    --   6.1 FIND OUT HOW MANY EMPLOYEES WAS HIRED BEFORE '24-JUL-05'
    --       There are specific function for date but for this task SUBSTR we know will just work
            select count(*) from employees 
            where HIRE_DATE <  '24-JUL-05';
    
    
    --   6.2 FIND OUT HOW MANY EMPLOYEES WAS HIRED ON YEAR 2005 
    --       (CONDITION HINT : HIRE_DATE LIKE '%05'  OR  SUBSTR(HIRE_DATE, 8,2)= '05') 
            select count(*) from employees 
            where SUBSTR(HIRE_DATE, 8,2)= '05';
    
    --   6.3 FIND OUT HOW MANY EMPLOYEES WAS HIRED ON JULY 
    --       (CONDITION HINT : HIRE_DATE LIKE '%JULY%'  OR  SUBSTR(HIRE_DATE,4,3)= 'JUL') 
    
            select count(*) from employees 
            where upper (HIRE_DATE) LIKE '%JUL%' ;
           
    --   6.4 GROUP THE EMPLOYEE TABLE BY HIRE_DATE YEAR TO GET HOW MANY EMPLOYEES WAS HIRED IN EACH YEAR 
    --       (CONDITION HINT :  GROUP BY SUBSTR(HIRE_DATE, 8,2) ) 
    
          select substr(HIRE_DATE, 8, 2) as "Hire Year", count(*) from employees 
           GROUP BY SUBSTR(HIRE_DATE, 8, 2);
      
    --   6.5  GET FIRST 3 DIGIT OF PHONE NUMBER AS AREA_CODE FROM EMPLOYEES TABLE 
           select substr(phone_number, 1, 3) as "Area Code" from employees;
    
    --      6.5.1  GROUP BY EMPLOYEE TABLES BY FIRST 3 DIGIT OF PHONE NUMBER
    --              TO FIND OUT HOW MANY PHONE EMPLOYEES IN EACH AREA_CODE
    --              515 21
    --              590 5
    --              603 1
    --              011 35
    --              650 45
           select substr(phone_number, 1, 3) as "Area Code", count(*) from employees 
           group by substr(phone_number, 1, 3) ;
 
        
        
        
        
        
        
        
        