-- Questão 1
SELECT SUM(population) AS world_population
FROM world

-- Questão 2
SELECT DISTINCT continent FROM world

-- Questão 3
SELECT SUM(gdp) AS total_gdp
FROM world
WHERE continent = 'Africa'

-- Questão 4
SELECT COUNT(name)
FROM world
WHERE area >= 1000000

-- Questão 5
SELECT SUM(population) AS total_population
FROM world
WHERE name IN ('Estonia', 'Latvia', 'Lithuania')

-- Questão 6
SELECT continent, COUNT(name)
FROM world
GROUP BY continent
  
-- Questão 7
SELECT continent, COUNT(name)
FROM world
WHERE population >= 10000000
GROUP BY continent

-- Questão 8
SELECT continent
FROM world
GROUP BY continent
HAVING SUM(population) >= 100000000
