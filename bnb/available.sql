-- DROP VIEW IF EXISTS "available";

CREATE VIEW "available" AS
SELECT 'l'."id", "property_type", "host_name", "date" FROM "listings" AS 'l'
JOIN "availabilities" AS 'a' ON l."id" = a."listing_id"
WHERE "available" = 'TRUE';