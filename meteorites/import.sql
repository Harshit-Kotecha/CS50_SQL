CREATE TABLE "temp" (
    name TEXT,
    id INTEGER,
    nametype TEXT,
    class TEXT,
    mass REAL,
    discovery TEXT,
    year REAL,
    lat REAL,
    long REAL
);

.mode csv
.import meteorites.csv temp

UPDATE "temp"
SET "lat" = NULL
WHERE "lat" = '';

UPDATE "temp"
SET "long" = NULL
WHERE "long" = '';

UPDATE "temp"
SET "year" = NULL
WHERE "year" = '';

UPDATE "temp"
SET "mass" = NULL
WHERE "mass" = '';

UPDATE "temp"
SET "lat" = ROUND("lat", 2)
WHERE "lat";

UPDATE "temp"
SET "long" = ROUND("long", 2)
WHERE "long";

UPDATE "temp"
SET "year" = ROUND("year", 2)
WHERE "year";

UPDATE "temp"
SET "mass" = ROUND("mass", 2)
WHERE "mass";

DELETE FROM "temp"
WHERE "nametype" = 'Relict';

CREATE TABLE "meteorites" (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT,
    class TEXT,
    mass REAL,
    discovery TEXT,
    year REAL,
    lat REAL,
    long REAL
);

INSERT INTO "meteorites" ("name", "class", "mass", "discovery", "year", "lat", "long")
SELECT "name", "class", "mass", "discovery", "year", "lat", "long" FROM "temp"
ORDER BY "year", "name";

DROP TABLE "temp";
