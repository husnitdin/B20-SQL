
select * from superheroes;


INSERT INTO superheroes ( hero_id, name, power, costume_color, company) 
                 VALUES ( '10', 'Batman', 'Intelligent', 'Black', 'Marvel');
                 
INSERT INTO superheroes ( hero_id, name, power, costume_color, company) 
                 VALUES ( '20', 'Hulk', 'SuperSize', 'Green', 'Marvel');
                 
INSERT INTO superheroes ( hero_id, name, power, costume_color, company) 
                 VALUES ( '30', 'Joker', 'bad joke', 'Purple', 'DC');
                 
UPDATE superheroes
SET
    power = 'Bad Jokes'
WHERE
    name = 'Joker';
    
DELETE FROM superheroes
WHERE
        name = 'Joker';
    