USE plato;
SELECT STREAM
    key,
    HOPEND() AS subkey,
    HyperLogLog(value, 18) AS value
FROM Input
GROUP BY
    key,
    HOP (CAST(subkey AS Timestamp), "PT10S", "PT30S", "PT5M");
