USE plato;
CREATE TABLE tmp (
    ts Timestamp,
    value Uint64,
    label String,
    PARTITION BY (label),
    ORDER BY (ts)
);

INSERT INTO tmp
SELECT STREAM
    key AS label,
    HOPSTART() AS ts,
    SUM(CAST(value AS Uint64)) AS value
FROM Input
GROUP BY
    HOP (CAST(subkey AS Timestamp), "PT5S", "PT5S", "PT5S"),
    key;

$m =
    SELECT STREAM
        *
    FROM tmp;

INSERT INTO local_solomon.`my_project/my_cluster/my_service`
SELECT STREAM
    *
FROM $m;

INSERT INTO local_solomon.`my_project/my_cluster/my_service`
SELECT STREAM
    *
FROM $m;

