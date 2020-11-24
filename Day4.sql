
        select e.first_name, e.last_name, j.min_salary, j.max_salary 
            from employees e
            inner join jobs j
        ON e.job_id = j.job_id;

        -- inner keyword is optional
        -- we use e OR j to make the code shorter
        -- the statement after ON is bridge to connect two tables
        -- returns rows when there is a match in both tables.

       select EMPLOYEE_ID, FIRST_NAME, LAST_NAME, EMAIL 
           from employees
       order by 2 desc;

        select manager_id, count(*) 
           from employees
        where manager_id is not null
        group by manager_id
        order by 1;

        select manager_id, count(*) as "emp count"
           from employees
        where manager_id is not null
        group by manager_id
        having count(*) > 10
        order by 1;


        select 
           length(first_name) as "chars in a name", 
           count(length(first_name)) as "number of emps"
           from employees
        group by length(first_name)
        order by 1;
        
        
        select max (length (first_name))||' '|| first_name  as "chars in a name"   
           from employees;
           
        
        select first_name, last_name 
            from employees
        Order BY first_name asc, last_name asc;
 

        
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
        
        