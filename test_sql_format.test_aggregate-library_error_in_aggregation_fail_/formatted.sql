/* syntax version 1 *//* postgres can not */
USE plato;
SELECT
    *
FROM (
        SELECT
            a.key AS x,
            sum(b.value)
        FROM Input
            AS a
        JOIN Input
            AS b
        USING (key)
        GROUP BY
            a.key
)
WHERE x > "aaa"
ORDER BY
    x;

SELECT
    1;

SELECT
    1;

SELECT
    1;

SELECT
    1;

SELECT
    1;

SELECT
    1;

