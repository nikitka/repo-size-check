/* syntax version 1 *//* postgres can not */
$json = CAST("{}" AS Json);
SELECT
    JSON_VALUE ($json, "strict $.key" ERROR ON ERROR);
