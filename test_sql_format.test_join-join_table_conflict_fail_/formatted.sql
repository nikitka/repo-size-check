PRAGMA DisableSimpleColumns;
/* postgres can not */
USE plato;
$data = (
    SELECT
        key AS kk,
        subkey AS sk,
        value || value AS value
    FROM Input
    WHERE CAST(key AS uint32) / 100 > 3
);
--INSERT INTO Output
SELECT
    value,
    key
-- value is conflicted between Input and d sources
FROM Input
JOIN $data
    AS d
ON Input.subkey = d.kk;
