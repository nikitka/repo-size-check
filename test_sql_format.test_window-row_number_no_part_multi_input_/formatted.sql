/* postgres can not */
USE plato;
INSERT INTO @foo
SELECT
    *
FROM Input;

COMMIT;
$input = (
    SELECT
        *
    FROM Input
    WHERE key != "020"
    UNION ALL
    SELECT
        *
    FROM @foo
    UNION ALL
    SELECT
        *
    FROM Input
);

SELECT
    key,
    ROW_NUMBER() OVER w AS row_num
FROM $input
WINDOW
    w AS (
    );

