USE plato;
INSERT INTO Output
SELECT STREAM
    key,
    value
FROM (
        SELECT STREAM
            key,
            "" AS subkey,
            COUNT(*) AS value
        FROM Input
        GROUP BY
            key,
            HOP (CAST(subkey AS Timestamp), "PT10S", "PT30S", "PT5M")
)
WHERE value > 1;

