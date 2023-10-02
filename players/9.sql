SELECT "first_name", "last_name" FROM "players"
WHERE strftime("%Y", "debut") == "2022"
ORDER BY "first_name","last_name";