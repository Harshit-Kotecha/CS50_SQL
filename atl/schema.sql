CREATE TABLE "passengers" (
    "first_name" TEXT,
    "last_name" TEXT,
    "age" INTEGER CHECK("age" > 0),
    "id" INTEGER,
    PRIMARY KEY ("id")
);
CREATE TABLE "airlines" (
    "name" TEXT,
    "concourse" TEXT CHECK("concourse" IN ('A', 'B', 'C', 'D', 'E', 'F', 'T')),
    "id" INTEGER,
    PRIMARY KEY ("id")
);
CREATE TABLE "flights" (
    "flight_number" INTEGER,
    "departing-from_code" TEXT,
    "heading_to_code" TEXT,
    "departure_time" DATETIME,
    "arrival_time" DATETIME,
    "id" INTEGER,
    "airline_id" INTEGER,
    PRIMARY KEY ("id"),
    FOREIGN KEY("airline_id") REFERENCES "airlines"("id")
);
CREATE TABLE "checkins" (
    "date_time" DATETIME,
    "passenger_id" INTEGER,
    "airline_id" INTEGER,
    FOREIGN KEY("passenger_id") REFERENCES "passengers"("id"),
    FOREIGN KEY("airline_id") REFERENCES "airlines"("id")
);
