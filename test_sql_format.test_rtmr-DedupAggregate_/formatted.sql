USE plato;
SELECT STREAM
    HOP_END() AS time,
    COUNT(value) AS count
FROM Input
GROUP BY
    key,
    HOP (CAST(subkey AS Timestamp), "PT10S", "PT10S", "PT5M")
HAVING COUNT(value) > 2;
