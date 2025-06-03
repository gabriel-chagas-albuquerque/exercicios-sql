-- Questão 1
SELECT name, continent, population FROM world
-- Questão 2
SELECT name FROM world
WHERE population >= 200000000
-- Questão 3
SELECT name, gdp/population 
FROM world 
WHERE population >= 200000000
-- Questão 4
SELECT name, population/1000000 
FROM world
WHERE continent = 'South America'
-- Questão 5
SELECT name, population 
FROM world
WHERE name IN ('France', 'Germany', 'Italy')
-- Questão 6
SELECT name 
FROM world
WHERE name LIKE '%United%'
-- Questão 7
SELECT name, population, area
FROM world
WHERE area > 3000000 OR population > 250000000
-- Questão 8
SELECT name, population, area
FROM world
WHERE area > 3000000 XOR population > 250000000
-- Questão 9
SELECT name, ROUND(population/1000000, 2), ROUND(gdp/1000000000,2)
FROM world
WHERE continent = 'South America'
-- Questão 10 - Essa eu fiz mas ele considerou como errada
SELECT name, ROUND(gdp/population,0)
FROM world
WHERE gdp >= 1000000000000 
-- Questão 11
SELECT name, capital 
  FROM world
 WHERE LENGTH(name) = LENGTH(capital)
-- Questão 12
SELECT name, capital
FROM world
WHERE LEFT(name,1) = LEFT(capital,1) AND name != capital
-- Questão 13 - Essa não deu pra tentar
SELECT name
   FROM world
WHERE name LIKE 'B%'
  AND name NOT LIKE '%a%'
