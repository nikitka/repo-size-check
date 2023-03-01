/* syntax version 1 *//* dq can not */
PRAGMA dq.MaxTasksPerStage = "2";
PRAGMA dq.WatermarksMode = "default";
PRAGMA dq.ComputeActorType = "async";
PRAGMA pq.Consumer = "test_client";
INSERT INTO pq.test_topic_output
SELECT
    Yson::SerializeText(Yson::From(TableRow()))
FROM (
        SELECT
            k,
            Sum(v) AS sum
        FROM pq.test_topic_input
            WITH (
                format = json_each_row,
                SCHEMA = (
                    t Uint64,
                    k String,
                    v Uint64
                )
            )
        GROUP BY
            k,
            HoppingWindow("PT0.005S", "PT0.01S")
);

