-- DROP VIEW IF EXISTS "frequently_reviewed";

CREATE VIEW "frequently_reviewed" AS
SELECT 'l'."id", "property_type", "host_name", COUNT("reviewer_name") AS "reviews" FROM "listings" AS 'l'
JOIN "reviews" ON l."id" = "reviews"."listing_id"
GROUP BY "listing_id"
ORDER BY "reviews" DESC, "property_type"
LIMIT 100;
