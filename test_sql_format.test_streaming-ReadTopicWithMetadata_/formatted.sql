/* syntax version 1 *//* dq can not */
PRAGMA pq.Consumer = "test_client";
SELECT
    value,
    color,
    SystemMetadata("create_time") AS create_time,
    SystemMetadata("write_time") AS write_time,
    SystemMetadata("partition_id") AS partition_id,
    SystemMetadata("offset") AS offset,
    SystemMetadata("message_group_id") AS message_group_id,
    SystemMetadata("seq_no") AS v,
FROM pq.`test_topic_input`
    WITH (format = json_each_row, SCHEMA (value String, color String));

