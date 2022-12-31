/* syntax version 1 *//* postgres can not *//* yt can not *//* ytfile can not *//* dq can not *//* dqfile can not */
USE plato;
$foo_init =
    SELECT
        CAST(setting AS Json)
    FROM InSettings
    WHERE key = 'foo_init_state';
PROCESS Input
USING EXTERNAL FUNCTION('YANDEX-CLOUD', 'foo:$latest', TableRow())
WITH INPUT_TYPE = Struct<a: Int32>, OUTPUT_TYPE = Struct<b: Int32>, CONCURRENCY = 3, OPTIMIZE_FOR = CALLS, CONNECTION = 'my-yc-fold3nf', INIT = $foo_init;
