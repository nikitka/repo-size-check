USE plato;
INSERT INTO Output
SELECT STREAM
    HOPSTART() AS time,
    SUM(CAST(value AS Uint64)) AS sum
FROM Input
GROUP BY
    HOP (CAST(subkey AS Timestamp), "PT10S", "PT30S", "PT5M");
