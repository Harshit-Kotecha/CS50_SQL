SELECT "name", ROUND(AVG("salary"), 2) AS "average_salary" FROM "teams" AS 't'
JOIN
"salaries" AS 's' ON s."team_id" = t."id" AND s."year" = 2001
GROUP BY "name"
ORDER BY "average_salary"
LIMIT 5;