USE plato;
$f = DateTime::Format("%Y-%m-%dT%H:%M:%SZ");
INSERT INTO Output
SELECT STREAM
    key,
    $f(HOPSTART()) AS subkey,
    SUM(CAST(value AS Uint64)) AS value
FROM Input
GROUP BY
    HOP (CAST(subkey AS Timestamp), "PT10S", "PT30S", "PT5M"),
    key;
