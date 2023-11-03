SELECT "first_name", "last_name", "debut" FROM "players"
WHERE "birth_city" LIKE 'Pittsburgh' AND "birth_state" LIKE 'pa'
ORDER BY "debut" DESC, "first_name", "last_name";