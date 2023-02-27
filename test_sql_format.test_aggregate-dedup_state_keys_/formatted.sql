USE plato;
PRAGMA dq.UseFinalizeByKey = 'true';
SELECT
    key,
    value,
    count(*) AS c
FROM Input
GROUP BY
    key,
    value
ORDER BY
    c,
    key,
    value;

