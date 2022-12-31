USE plato;
INSERT INTO Output
SELECT STREAM
    key,
    HOPEND() AS subkey,
    SUM(CAST(value AS Uint64)) AS value
FROM Input
GROUP BY
    key,
    HOP (CAST(subkey AS Timestamp), "PT10S", Interval("PT30S"), Interval("PT15M") / 3);
