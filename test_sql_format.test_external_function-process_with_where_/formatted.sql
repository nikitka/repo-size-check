/* syntax version 1 *//* postgres can not *//* yt can not *//* ytfile can not *//* dq can not *//* dqfile can not */
USE plato;
PROCESS Input
USING EXTERNAL FUNCTION('YANDEX-CLOUD', 'foo:$latest')
WITH INPUT_TYPE = Struct<a: Int32>, OUTPUT_TYPE = Struct<b: Int32>, CONNECTION = 'my-yc-fold3nf'
WHERE CAST(key AS Uint64) > 100 AND value = 'qzz';

