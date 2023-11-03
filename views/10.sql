SELECT "english_title" AS "title", "artist" FROM "views"
WHERE "entropy" BETWEEN 1 AND 10
ORDER BY "brightness" DESC
LIMIT 1;