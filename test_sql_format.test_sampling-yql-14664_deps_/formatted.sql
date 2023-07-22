/* postgres can not */
USE plato;
INSERT INTO @a
SELECT
    *
FROM Input
WHERE key > "020";

COMMIT;
SELECT
    *
FROM (
    SELECT
        *
    FROM @a
        TABLESAMPLE BERNOULLI (50.0) REPEATABLE (1)
)
LIMIT 10;

