/* syntax version 1 *//* postgres can not */-- Accessing absent object member will cause jsonpath error in strict mode
$json = CAST("{}" AS Json);
SELECT
    JSON_QUERY ($json, "strict $.key" ERROR ON ERROR);

