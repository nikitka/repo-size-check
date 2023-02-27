/* syntax version 1 *//* postgres can not */
$json = CAST(@@{
    "key": 123
}@@ AS Json);
-- Tuple type is not supported for variables
SELECT
    JSON_EXISTS ($json, "strict $var" PASSING AsTuple(1, 2) AS var);

