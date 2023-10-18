SELECT "first_name", "last_name", "salary" FROM "salaries" AS 's'
JOIN
"players" AS 'p' ON p."id" = s."player_id"
WHERE s."year" = 2001
ORDER BY "salary", "first_name", "last_name", p."id"
LIMIT 50;