/* syntax version 1 *//* postgres can not */
USE plato;
PRAGMA DisableAnsiOrderByLimitInUnionAll;
SELECT
    *
FROM Input
UNION ALL
SELECT
    *
FROM Input
INTO RESULT aaa;

DISCARD SELECT
    *
FROM Input
UNION ALL
SELECT
    *
FROM Input;

