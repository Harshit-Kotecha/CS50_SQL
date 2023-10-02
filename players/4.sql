SELECT "first_name", "last_name" FROM "players"
WHERE "birth_country" NOT LIKE 'usa'
ORDER BY "first_name", "last_name";