/* syntax version 1 *//* postgres can not *//* yt can not *//* ytfile can not *//* dq can not *//* dqfile can not */
USE plato;
$TEvent = Struct<uid: Uint64, eventTime: Datetime, eventType: String, osType: String, osVersion: String, appPath: String, appVersion: String, requireAdminPwd: Bool>;
-- parse format
$process1 =
    PROCESS Input
    USING EXTERNAL FUNCTION('YANDEX-CLOUD', 'foo:$latest', <|uid: CAST(key AS Uint64), eventTime: CurrentUtcDatetime(), events: `value`|>)
    WITH INPUT_TYPE = Struct<uid: Uint64, eventTime: Datetime?, events: Json>, OUTPUT_TYPE = $TEvent, CONCURRENCY = 3, OPTIMIZE_FOR = 'CALLS', CONNECTION = 'my-yc-fold3nf';
-- detect strange events
PROCESS $process1
USING EXTERNAL FUNCTION('YANDEX-CLOUD', 'd4e44kf36si4uo5t314n')
WITH INPUT_TYPE = $TEvent, OUTPUT_TYPE = $TEvent, CONNECTION = 'my-yc-fold3nf';
