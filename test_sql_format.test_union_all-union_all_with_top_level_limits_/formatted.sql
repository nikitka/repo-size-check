/* syntax version 1 *//* postgres can not */
USE plato;
PRAGMA DisableAnsiOrderByLimitInUnionAll;
$foo =
    SELECT
        *
    FROM Input
    UNION ALL
    SELECT
        *
    FROM Input
    LIMIT 2;
SELECT
    *
FROM $foo
ORDER BY
    subkey;
