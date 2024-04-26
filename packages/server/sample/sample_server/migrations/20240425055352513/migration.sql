BEGIN;

--
-- ACTION CREATE TABLE
--
CREATE TABLE "todo" (
    "id" serial PRIMARY KEY,
    "title" text NOT NULL,
    "message" text NOT NULL,
    "done" boolean NOT NULL
);


--
-- MIGRATION VERSION FOR sample
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('sample', '20240425055352513', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240425055352513', "timestamp" = now();

--
-- MIGRATION VERSION FOR serverpod
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('serverpod', '20240115074235544', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240115074235544', "timestamp" = now();


COMMIT;
