/* syntax version 1 *//* postgres can not */
USE plato;
SELECT
    *
FROM Input
GROUP BY
    TableRow().key;

