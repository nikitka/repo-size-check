/* syntax version 1 *//* postgres can not *//* multirun can not */
USE plato;
$list = (
    SELECT
        aggregate_list(Path)
    FROM (
        SELECT
            Path
        FROM folder("")
        WHERE Type = "table"
        ORDER BY
            Path DESC
        LIMIT 30
    )
);
INSERT INTO Output
    WITH truncate
SELECT
    count(*)
FROM each($list);
