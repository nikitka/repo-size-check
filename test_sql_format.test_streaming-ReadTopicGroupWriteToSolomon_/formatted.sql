/* syntax version 1 *//* dq can not */
PRAGMA dq.MaxTasksPerStage = "10";
PRAGMA pq.Consumer = "test_client";
$crc = ($s) -> {
    RETURN Unwrap(len($s) % 8);
};
INSERT INTO solomon.`project/cluster/service`
SELECT STREAM
    Unwrap(HOP_END()) AS ts,
    CAST(crc AS string) AS crc8,
    COUNT(*) AS count,
    MIN(Len(Data)) AS min_length,
    MAX(Len(Data)) AS max_length,
    SUM(Len(Data)) AS sum
FROM (
        SELECT
            Data,
            $crc(Data) AS crc
        FROM pq.test_topic_input
)
GROUP BY
    HOP (Just(CurrentUtcTimestamp(TableRow())), "PT5S", "PT5S", "PT5S"),
    crc;

