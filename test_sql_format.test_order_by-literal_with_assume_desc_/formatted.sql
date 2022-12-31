/* postgres can not *//* multirun can not *//* syntax version 1 */
USE plato;
INSERT INTO Output
SELECT
    x
FROM (
    SELECT
        ListFromRange(10, 0, - 1) AS x
)
    FLATTEN BY
        x
ASSUME ORDER BY
    x DESC;
