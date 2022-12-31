USE plato;
INSERT INTO Output
SELECT STREAM
    key,
    HOPEND() AS subkey,
    COUNT(*) AS value
FROM Input
GROUP BY
    key,
    HOP (CAST(subkey AS Timestamp), "PT10S", "PT30S", "PT5M");
