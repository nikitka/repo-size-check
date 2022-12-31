/* syntax version 1 *//* dq can not */
PRAGMA dq.MaxTasksPerStage = "2";
PRAGMA pq.Consumer = "test_client";
INSERT INTO pq.test_topic_output
SELECT STREAM
    Yson::SerializeText(Yson::From(TableRow()))
FROM (
    SELECT STREAM
        percentile(v, 0.75) AS p75,
        percentile(v, 0.9) AS p90
    FROM (
        SELECT STREAM
            Yson::LookupUint64(ys, "time") AS t,
            Yson::LookupInt64(ys, "key") AS k,
            Yson::LookupInt64(ys, "val") AS v
        FROM (
            SELECT STREAM
                Yson::Parse(Data) AS ys
            FROM pq.test_topic_input
        )
    )
    GROUP BY
        HOP (DateTime::FromMilliseconds(CAST(Unwrap(t) AS Uint32)), "PT0.005S", "PT0.01S", "PT0.01S")
);
