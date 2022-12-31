USE plato;
PRAGMA dq.EnableDqReplicate = "1";
SELECT
    key,
    COUNT(*) AS cnt,
    COUNT(DISTINCT value) AS uniq
FROM Input
GROUP BY
    key;
