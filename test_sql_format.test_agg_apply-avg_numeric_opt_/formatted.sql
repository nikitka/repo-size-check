/* syntax version 1 *//* postgres can not */
PRAGMA EmitAggApply;
SELECT
    avg(key)
FROM (
    VALUES
        (1),
        (NULL),
        (3)
)
    AS a (
        key
    );

