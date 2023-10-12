
-- *** The Lost Letter ***
-- Check the packages that are scanned at starting address
SELECT * FROM "scans"
WHERE "address_id" = (
    SELECT "id" FROM "addresses"
    WHERE "address" = "900 Somerville Avenue"
);

-- Check all the packages at that location
SELECT * FROM "packages"
WHERE "id" IN (
    SELECT "package_id" FROM "scans"
    WHERE "address_id" = (
        SELECT "id" FROM "addresses"
        WHERE "address" = "900 Somerville Avenue"
    )
);

-- We know id of letter so use that id to find all scans of that id
SELECT * FROM "scans"
WHERE "package_id" = 384;

-- Final query to get that result
SELECT * FROM "addresses"
WHERE "id" = (
    SELECT "address_id" FROM "scans"
    WHERE "action" = "Drop" AND "package_id" = (
        SELECT "id" FROM "packages"
        WHERE "contents" = "Congratulatory letter"
    )
);

-- *** The Devious Delivery ***

-- *** The Forgotten Gift ***

