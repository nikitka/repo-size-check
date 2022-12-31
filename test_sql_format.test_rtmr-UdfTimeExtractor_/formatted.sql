USE plato;
INSERT INTO Output
SELECT STREAM
    key,
    HOPSTART() AS subkey,
    SUM(CAST(value AS Uint64)) AS value
FROM Input
GROUP BY
    HOP (DateTime::MakeTimestamp(DateTime::ParseIso8601(subkey)), "PT10S", "PT30S", "PT5M"),
    key;
