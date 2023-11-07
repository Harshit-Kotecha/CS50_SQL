-- DROP VIEW IF EXISTS "june_vacancies";

CREATE VIEW "june_vacancies" AS
SELECT 'l'."id", "property_type", "host_name", COUNT(a."listing_id") AS "days_vacant" FROM "listings" AS 'l'
JOIN "availabilities" AS 'a' ON l."id" = a."listing_id"
GROUP BY "listing_id"
HAVING "date" BETWEEN "2023-06-01" AND "2023-06-30"
AND "available" = 'TRUE';
