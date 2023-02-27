-- Test checks optimization when some input fields in time extractor lambda can be omitted
USE plato;
INSERT INTO Output
SELECT STREAM
    "1" AS key,
    Unwrap(CAST(HOP_END() AS string)) AS subkey,
    CAST(count(value) AS string) AS value
FROM Input
GROUP BY
    HOP (CAST(subkey AS Timestamp), "PT10S", "PT30S", "PT5M");

