USE plato;
INSERT INTO Output
SELECT STREAM
    key,
    Unwrap(CAST(percentile(value, 0.75) AS String)) AS subkey,
    Unwrap(CAST(percentile(value, 0.95) AS String)) AS value
FROM (
    SELECT STREAM
        key,
        subkey,
        CAST(value AS Double) AS value
    FROM Input
)
GROUP BY
    HOP (CAST(subkey AS Timestamp), "PT10S", "PT30S", "PT5M"),
    key;
