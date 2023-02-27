/* postgres can not *//* syntax version 1 */
PRAGMA PositionalUnionAll;
SELECT
    1 AS c,
    2 AS b,
    3 AS a
UNION ALL
SELECT
    1 AS c,
    2 AS b;

