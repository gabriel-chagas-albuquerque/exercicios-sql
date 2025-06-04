-- Questão 1
SELECT yr, subject, winner
  FROM nobel
 WHERE yr = 1950

-- Questão 2
SELECT winner
  FROM nobel
 WHERE yr = 1962
   AND subject = 'literature'
-- Questão 3
SELECT yr,subject
FROM nobel
WHERE winner = 'Albert Einstein'
-- Questão 4
SELECT winner
FROM nobel
WHERE subject = 'peace' AND yr >= 2000
-- Questão 5
SELECT yr,subject,winner
FROM nobel
WHERE yr >= 1980 AND yr <= 1989 AND subject = 'literature'
-- Questão 6
SELECT * FROM nobel
WHERE winner = 'Theodore Roosevelt'
OR winner = 'Thomas Woodrow Wilson'
OR winner = 'Jimmy Carter'
OR winner = 'Barack Obama'
-- Questão 7
SELECT winner
FROM nobel
WHERE winner LIKE 'John%' 
-- Questão 8
SELECT yr, subject, winner
FROM nobel 
WHERE (subject = 'physics' AND yr = 1980) OR (subject = 'chemistry' AND yr = 1984) 
-- Questão 9
SELECT *
FROM nobel 
WHERE (subject != 'chemistry' AND subject != 'medicine') AND yr = 1980
-- Questão 10
SELECT *
FROM nobel
WHERE (subject = 'medicine' AND yr < 1910) OR (subject = 'literature' AND yr >= 2004) 
-- Questão 11
SELECT * 
FROM nobel 
WHERE winner = 'Peter Grünberg'
-- Questão 12
SELECT * 
FROM nobel 
WHERE winner = "Eugene O'Neill"
-- Questão 13
SELECT winner,yr,subject
FROM nobel
WHERE winner LIKE 'Sir%'
ORDER BY yr DESC, winner ASC
-- Questão 14
SELECT winner, subject
  FROM nobel
 WHERE yr=1984
 ORDER BY 
 CASE WHEN subject IN ('physics','chemistry') THEN 1 ELSE 0 END,
subject ASC
