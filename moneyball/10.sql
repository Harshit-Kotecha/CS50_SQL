SELECT "first_name", "last_name", pp."year", "salary", "HR" FROM "players" AS 'p'
LEFT JOIN
"salaries" AS 's' ON p."id" = s."player_id"
LEFT JOIN
"performances" AS 'pp' ON pp."player_id" = p."id" AND pp."year" = s."year"
ORDER BY
    p."id",
    s."year" DESC,
    "HR" DESC,
    "salary" DESC;