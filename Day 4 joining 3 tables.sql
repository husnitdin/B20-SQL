
    SELECT c.COUNTRY_NAME, COUNT(d.DEPARTMENT_NAME) 
    
        FROM DEPARTMENTS d
        
        RIGHT JOIN LOCATIONS l ON d.LOCATION_ID = l.LOCATION_ID
        RIGHT JOIN COUNTRIES c ON l.COUNTRY_ID = c.COUNTRY_ID
        
        GROUP BY c.COUNTRY_NAME
        ORDER BY 2 DESC;
        
        




