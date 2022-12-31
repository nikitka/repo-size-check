/* syntax version 1 *//* dq can not */
PRAGMA pq.Consumer = "test_client";
SELECT
    value,
    color,
    CAST(SystemMetadata("offset") AS String) AS offset
FROM pq.`test_topic_input`
    WITH (format = json_each_row, SCHEMA (value String, color String));
