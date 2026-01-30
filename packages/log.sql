-- *** The Lost Letter ***

SELECT "type","address" FROM "addresses"
WHERE "id"=(SELECT "address_id" FROM "scans"
WHERE "action"='Drop' AND "package_id"=(SELECT "id" FROM "packages"
WHERE "from_address_id"=(SELECT "id" FROM "addresses"
WHERE "address" LIKE '%900 Somerville Avenue%') AND "to_address_id"=(SELECT "id" FROM "addresses"
WHERE "address" LIKE '%2 Finnigan Street%')
)
);

---Finnigan is misspelled in the database as Finnegan


-- *** The Devious Delivery ***
SELECT "type","address" FROM "addresses"
WHERE "id"=(SELECT "address_id" FROM "scans"
WHERE "action"='Drop' AND "package_id"=(SELECT "id" FROM "packages"
WHERE "from_address_id" IS NULL AND "contents" LIKE '%duck%'
)
);

SELECT "contents" FROM "packages"
WHERE "from_address_id" IS NULL AND "contents" LIKE '%duck%';


-- *** The Forgotten Gift ***

SELECT "contents","id" FROM "packages"
WHERE "from_address_id"=(SELECT "id" FROM "addresses"
WHERE "address" LIKE '%109 Tileston Street%') AND "to_address_id"=(SELECT "id" FROM "addresses"
WHERE "address" LIKE '%728 Maple Place%');

SELECT "type","address" FROM "addresses"
WHERE "id"=(SELECT "address_id" FROM "scans"
WHERE "action"='Drop' AND "package_id"=(SELECT "id" FROM "packages"
WHERE "from_address_id"=(SELECT "id" FROM "addresses"
WHERE "address" LIKE '%109 Tileston Street%') AND "to_address_id"=(SELECT "id" FROM "addresses"
WHERE "address" LIKE '%728 Maple Place%')
)
);

SELECT "name" FROM "drivers"
WHERE "id"=(SELECT "driver_id" FROM "scans"
WHERE "action"='Drop' AND "package_id"=(SELECT "id" FROM "packages"
WHERE "from_address_id"=(SELECT "id" FROM "addresses"
WHERE "address" LIKE '%109 Tileston Street%') AND "to_address_id"=(SELECT "id" FROM "addresses"
WHERE "address" LIKE '%728 Maple Place%')
)
);
