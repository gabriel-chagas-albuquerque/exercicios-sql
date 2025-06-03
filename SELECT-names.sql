-- Questão 1
SELECT name FROM world
  WHERE name LIKE 'Y%'

-- Questão 2
SELECT name FROM world
  WHERE name LIKE '%y'
-- Questão 3
SELECT name FROM world
  WHERE name LIKE '%x%'
-- Questão 4
SELECT name FROM world
  WHERE name LIKE '%land'
-- Questão 5
SELECT name FROM world
  WHERE name LIKE 'C%ia'
-- Questão 6
SELECT name FROM world
  WHERE name LIKE '%oo%'
-- Questão 7
SELECT name FROM world
  WHERE name LIKE '%a%a%a%'
-- Questão 8
SELECT name FROM world
 WHERE name LIKE '_t%'
ORDER BY name
-- Questão 9
SELECT name FROM world
 WHERE name LIKE '%o__o%'
-- Questão 10
SELECT name FROM world
 WHERE name LIKE '____'

-- Questão 11
SELECT name
  FROM world
 WHERE name=capital

-- Questão 12
SELECT name
  FROM world
 WHERE capital=CONCAT(name,' City')
-- Questão 13
SELECT capital,name 
FROM world
WHERE capital LIKE CONCAT('%', name, '%');
-- Questão 14
SELECT capital, name
FROM world
WHERE capital LIKE CONCAT('%', name, '%') AND LENGTH(capital)>LENGTH(name)
-- Questão 15
SELECT name, REPLACE(capital, name, '') AS extension
FROM world
WHERE capital LIKE CONCAT('%', name, '%') AND name != capital
