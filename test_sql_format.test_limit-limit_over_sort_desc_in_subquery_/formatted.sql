/* postgres can not *//* syntax version 1 */
USE plato;
$in = (
    SELECT
        *
    FROM Input
    WHERE subkey > '1'
    ORDER BY
        key DESC
    LIMIT 15000
);

SELECT
    *
FROM $in
WHERE value LIKE "a%";

