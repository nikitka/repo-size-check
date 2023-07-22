USE plato;
INSERT INTO Output
SELECT STREAM
    key,
    subkey,
    value
FROM (
    SELECT STREAM
        key,
        CAST(subkey AS Timestamp) AS subkey,
        1000 + (CAST(value AS uint64) ?? 0) AS value
    FROM Input
    UNION ALL
    SELECT STREAM
        key,
        CAST(subkey AS Timestamp) AS subkey,
        2000 + (CAST(value AS uint64) ?? 0) AS value
    FROM Input
);

