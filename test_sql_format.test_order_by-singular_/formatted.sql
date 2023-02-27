/* postgres can not *//* syntax version 1 */
USE plato;
INSERT INTO @foo
SELECT
    void() AS x,
    NULL AS y,
    [] AS z,
    {} AS w
ORDER BY
    x,
    y,
    z,
    w;

COMMIT;
SELECT
    *
FROM @foo;

