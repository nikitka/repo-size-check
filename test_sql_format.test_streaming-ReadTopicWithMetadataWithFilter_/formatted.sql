/* syntax version 1 *//* dq can not */
PRAGMA pq.Consumer = "test_client";
SELECT
    SystemMetadata("offset") AS offset
FROM pq.`test_topic_input`
    WITH (
        format = json_each_row,
        SCHEMA (
            value String,
            color String
        )
    )
WHERE value = "123";

