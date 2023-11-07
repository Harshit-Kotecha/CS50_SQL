DROP TABLE IF EXISTS "temp";

CREATE TABLE "temp" (
    "id" INTEGER PRIMARY KEY,
    "phrase" TEXT
);

INSERT INTO "temp" ("id", "phrase")
SELECT "id", substr("sentence", 98, 4) FROM "sentences"
WHERE "id" = 14;

INSERT INTO "temp" ("id", "phrase")
SELECT "id", substr("sentence", 3, 5) FROM "sentences"
WHERE "id" = 114;

INSERT INTO "temp" ("id", "phrase")
SELECT "id", substr("sentence", 72, 9) FROM "sentences"
WHERE "id" = 618;

INSERT INTO "temp" ("id", "phrase")
SELECT "id", substr("sentence", 7, 3) FROM "sentences"
WHERE "id" = 630;

INSERT INTO "temp" ("id", "phrase")
SELECT "id", substr("sentence", 12, 5) FROM "sentences"
WHERE "id" = 932;

INSERT INTO "temp" ("id", "phrase")
SELECT "id", substr("sentence", 50, 7) FROM "sentences"
WHERE "id" = 2230;

INSERT INTO "temp" ("id", "phrase")
SELECT "id", substr("sentence", 44, 10) FROM "sentences"
WHERE "id" = 2346;

INSERT INTO "temp" ("id", "phrase")
SELECT "id", substr("sentence", 14, 5) FROM "sentences"
WHERE "id" = 3041;

DROP VIEW IF EXISTS "message";

CREATE VIEW "message" AS
SELECT "phrase"
FROM "temp";

DROP TABLE IF EXISTS "temp";
