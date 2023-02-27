/* syntax version 1 *//* postgres can not */
USE plato;
DEFINE SUBQUERY $strict() AS
    PRAGMA StrictJoinKeyTypes;
    SELECT
        count(*)
    FROM Input1
        AS a
    JOIN Input2
        AS b
    USING (k1)
END DEFINE;

SELECT
    count(*)
FROM Input1
    AS a
JOIN Input2
    AS b
USING (k1);

SELECT
    *
FROM $strict();

