/* postgres can not *//* syntax version 1 */
PRAGMA PositionalUnionAll;
SELECT
    1 AS c,
    2 AS b,
    3 AS a
UNION ALL
SELECT
    *
FROM as_table([<|c: 1, b: 2, a: 3|>]);
