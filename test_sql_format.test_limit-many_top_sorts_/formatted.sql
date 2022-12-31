/* postgres can not */
USE plato;
$i = (
    SELECT
        *
    FROM Input
    WHERE key > "100"
);
SELECT
    *
FROM $i
ORDER BY
    key
LIMIT 1;
SELECT
    *
FROM $i
ORDER BY
    subkey
LIMIT 2;
