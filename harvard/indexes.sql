-- .timer on
-- EXPLAIN QUERY PLAN
-- SELECT "requirements"."name", COUNT(*) AS "courses"
-- FROM "requirements"
-- JOIN "satisfies" ON "requirements"."id" = "satisfies"."requirement_id"
-- WHERE "satisfies"."course_id" IN (
--     SELECT "course_id"
--     FROM "enrollments"
--     WHERE "enrollments"."student_id" = 8
-- )
-- GROUP BY "requirements"."name";

DROP INDEX if exists "course_id_index";
DROP INDEX if exists "course_index";
-- VACUUM;

CREATE INDEX "course_id_index" ON "enrollments" ("course_id");
CREATE INDEX "course_index" ON "courses" ("title", "department", "number", "semester");

-- EXPLAIN QUERY PLAN
-- SELECT "requirements"."name", COUNT(*) AS "courses"
-- FROM "requirements"
-- JOIN "satisfies" ON "requirements"."id" = "satisfies"."requirement_id"
-- WHERE "satisfies"."course_id" IN (
--     SELECT "course_id"
--     FROM "enrollments"
--     WHERE "enrollments"."student_id" = 8
-- )
-- GROUP BY "requirements"."name";
