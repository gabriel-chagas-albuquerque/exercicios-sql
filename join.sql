-- Questão 1
SELECT matchid, player FROM goal 
  WHERE teamid = 'GER'

-- Questão 2
SELECT id,stadium,team1,team2
FROM game
WHERE id = 1012

-- Questão 3
SELECT player, teamid, stadium, mdate
  FROM game JOIN goal ON (id=matchid)
WHERE teamid = 'GER'

-- Questão 4
SELECT team1, team2, player
  FROM game JOIN goal ON (id=matchid)
WHERE player LIKE 'Mario%'

-- Questão 5
SELECT player, teamid, coach, gtime
  FROM goal JOIN eteam ON teamid = id
 WHERE gtime<=10

-- Questão 6
SELECT mdate, teamname
  FROM game JOIN eteam ON team1 = eteam.id
 WHERE coach = 'Fernando Santos'

-- Questão 7
SELECT player 
FROM goal JOIN game ON matchid = id
WHERE stadium = 'National Stadium, Warsaw'

-- Questão 8
SELECT DISTINCT player
  FROM game JOIN goal ON matchid = id 
    WHERE (team1='GER' OR team2='GER') AND teamid != 'GER'

-- Questão 9
SELECT teamname, COUNT(player) AS total_goals
  FROM eteam JOIN goal ON id=teamid
 GROUP BY teamname

-- Questão 10
SELECT stadium, COUNT(player)
FROM game JOIN goal ON id = matchid
GROUP BY stadium

-- Questão 11
SELECT matchid,mdate, COUNT(player) AS goals
  FROM game JOIN goal ON matchid = id 
 WHERE (team1 = 'POL' OR team2 = 'POL')
GROUP BY matchid

-- Questão 12
SELECT matchid, mdate, COUNT(player)
FROM game JOIN goal ON id = matchid
WHERE teamid = 'GER'
GROUP BY matchid

-- Questão 13
SELECT 
  g.mdate,
  g.team1,
  SUM(CASE WHEN goal.teamid = g.team1 THEN 1 ELSE 0 END) AS score1,
  g.team2,
  SUM(CASE WHEN goal.teamid = g.team2 THEN 1 ELSE 0 END) AS score2
FROM game g
LEFT JOIN goal ON goal.matchid = g.id
GROUP BY g.id, g.mdate, g.team1, g.team2
ORDER BY g.mdate, g.id, g.team1, g.team2;
