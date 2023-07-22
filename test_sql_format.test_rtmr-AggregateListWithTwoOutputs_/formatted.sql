USE plato;
$rtmr_cluster = "alpha";
PRAGMA config.flags("LLVM", "OFF");
-- Query from RTMRSUPPORT-255
-- It has several output tables with same schema.
-- This situation showed a bug.
$stream = (
    SELECT STREAM
        CAST(subkey AS Timestamp) AS input_ts
    FROM Input
);

SELECT STREAM
    HOP_START() AS ts,
    COUNT(*) AS count_by_project_name,
    project,
    first,
    $rtmr_cluster AS rtmr_cluster
FROM (
    SELECT STREAM
        ts,
        DictLookup(aggr_dict, "project") AS project,
        DictLookup(aggr_dict, "first") AS first
    FROM (
        SELECT STREAM
            HOP_END() AS ts,
            AGGREGATE_LIST(AsDict(AsTuple("project", "first"), AsTuple("first", "first"))) AS aggr_dict
        FROM $stream
        GROUP BY
            HOP (input_ts, "PT10S", "PT30S", "PT5M")
    )
        FLATTEN BY
            aggr_dict
)
GROUP BY
    HOP (ts, "PT10S", "PT30S", "PT5M"),
    project,
    first;

SELECT STREAM
    HOP_START() AS ts,
    COUNT(*) AS count_by_project_name,
    project,
    second,
    $rtmr_cluster AS rtmr_cluster
FROM (
    SELECT STREAM
        ts,
        DictLookup(aggr_dict, "project") AS project,
        DictLookup(aggr_dict, "second") AS second
    FROM (
        SELECT STREAM
            HOP_END() AS ts,
            AGGREGATE_LIST(AsDict(AsTuple("project", "second"), AsTuple("second", "second"))) AS aggr_dict
        FROM $stream
        GROUP BY
            HOP (input_ts, "PT10S", "PT30S", "PT5M")
    )
        FLATTEN BY
            aggr_dict
)
GROUP BY
    HOP (ts, "PT10S", "PT30S", "PT5M"),
    project,
    second;

