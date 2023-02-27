USE plato;
CREATE TABLE tmp1 (
    ts Timestamp,
    value Uint64,
    label String,
    PARTITION BY (label),
    ORDER BY (ts)
);

INSERT INTO tmp1
SELECT STREAM
    key AS label,
    HOPSTART() AS ts,
    SUM(CAST(value AS Uint64)) AS value
FROM Input
GROUP BY
    HOP (CAST(subkey AS Timestamp), "PT5S", "PT5S", "PT5S"),
    key;

INSERT INTO local_solomon.`my_project/my_cluster/my_service`
SELECT STREAM
    *
FROM tmp1;

