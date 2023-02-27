/* syntax version 1 *//* postgres can not */
PRAGMA config.flags("EvaluateForLimit", "3");
EVALUATE FOR $_i IN ListFromRange(0, 10)
    DO EMPTY_ACTION();

