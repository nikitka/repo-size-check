/* postgres can not *//* syntax version 1 */
USE plato;
PRAGMA OrderedColumns;
SELECT
    *
FROM Input
    TABLESAMPLE BERNOULLI (100.0);

