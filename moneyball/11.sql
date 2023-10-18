SELECT "first_name", "last_name", ("salary" / pp."H") AS "dollar_per_hit" FROM "players" AS 'p'
JOIN
"salaries" AS 's' ON p."id" = s."player_id" AND s."year" = 2001
JOIN
"performances" AS 'pp' ON p."id" = pp."player_id" AND pp."H" <> 0 AND pp."year" = s."year"
ORDER BY
    "dollar_per_hit",
    "first_name",
    "last_name";