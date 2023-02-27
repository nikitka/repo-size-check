/* postgres can not */
USE plato;
$i = (
    SELECT
        *
    FROM Input
    WHERE key < "900"
);

SELECT
    key,
    some(value) AS s
FROM $i
GROUP BY
    key
ORDER BY
    key,
    s;

SELECT
    key,
    sum(CAST(subkey AS Int32)) AS s
FROM $i
GROUP BY
    key
ORDER BY
    key,
    s;

SELECT
    key,
    some(subkey) AS s
FROM $i
GROUP BY
    key
ORDER BY
    key,
    s;

