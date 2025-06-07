-- OBS: A partir da questão 8 eu não consegui resolver sozinho, acabei recorrendo ao ChatGPT mas não entendi direito, se puder dar uma explicada melhor nessa parte eu agradeço

-- Questão 1
SELECT name FROM world
  WHERE population >
     (SELECT population FROM world
      WHERE name='Russia')

-- Questão 2  
SELECT name 
FROM world 
WHERE continent = 'Europe' AND  gdp/population > (SELECT gdp/population from world WHERE name = 'United Kingdom')

-- Questão 3
SELECT name, continent from world 
WHERE continent = (SELECT continent from world where name = 'Argentina')
OR continent = (SELECT continent from world where name = 'Australia')
ORDER BY name
  
-- Questão 4
SELECT name, population 
FROM world 
WHERE population > (SELECT population from world where name =  'United Kingdom')
AND
population < (SELECT population from world where name =  'Germany')
  
-- Questão 5
SELECT name, (CONCAT(ROUND(population/(SELECT population from world where name = 'Germany')*100, 0), '%')) AS percentage
FROM world
WHERE continent = 'Europe'
  
-- Questão 6
SELECT name
  FROM world
 WHERE 
gdp > ALL(SELECT gdp FROM world WHERE gdp>0 AND continent = 'Europe')
  
-- Questão 7
SELECT continent, name, area FROM world x
  WHERE area >= ALL
    (SELECT area FROM world y
        WHERE y.continent=x.continent
          AND area>0)
  
-- Questão 8
SELECT continent, name
FROM world x
WHERE name = (
  SELECT MIN(name)
  FROM world y
  WHERE y.continent = x.continent
);

-- Questão 9
SELECT name, continent, population
FROM world
WHERE continent IN (
  SELECT continent
  FROM world
  GROUP BY continent
  HAVING MAX(population) <= 25000000
);

-- Questão 10
SELECT name, continent FROM world x
WHERE population > ALL
  (SELECT 3*population
  FROM world y
  WHERE y.continent = x.continent
  AND x.name != y.name
)

