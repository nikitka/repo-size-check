/* syntax version 1 *//* dq can not */
PRAGMA dq.MaxTasksPerStage = "10";
PRAGMA pq.Consumer = "test_client";
INSERT INTO pq.test_topic_output
SELECT
    value
FROM pq.object("test_topic_input", json_each_row)
    WITH SCHEMA (String AS value, String AS color);
