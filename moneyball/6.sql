SELECT "name", SUM("H") FROM "performances" AS 'p'
JOIN
"teams" AS 't' ON t."id" = p."team_id" AND p."year" = 2001
GROUP BY t."name"
ORDER BY SUM("H")  DESC
LIMIT 5;
