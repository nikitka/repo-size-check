USE plato;
INSERT INTO @a
SELECT
    1 AS t;

COMMIT;
SELECT
    *
FROM @a;

SELECT
    *
FROM a;

