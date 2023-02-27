/* syntax version 1 *//* postgres can not */
USE plato;
$src =
    SELECT
        "ZZZ" || key AS key,
        subkey,
        value,
    FROM Input
        AS u
    ASSUME ORDER BY
        key;

SELECT
    *
FROM $src
WHERE key < "075" OR key > "075"
ORDER BY
    key,
    subkey;

