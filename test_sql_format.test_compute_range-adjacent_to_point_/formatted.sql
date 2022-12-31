/* syntax version 1 *//* postgres can not *//* yt can not */
PRAGMA warning("disable", "4510");
-- [10, 11) -> [10, 10]
SELECT
    YQL::RangeComputeFor(Struct<x: UInt32>, ($row) -> ($row.x >= 10 AND $row.x < 11), AsTuple(AsAtom("x")));
-- (10, 11] -> [11, 11]
SELECT
    YQL::RangeComputeFor(Struct<x: UInt32>, ($row) -> ($row.x > 10 AND $row.x <= 11), AsTuple(AsAtom("x")));
-- dates
SELECT
    YQL::RangeComputeFor(Struct<x: Date??>, ($row) -> (($row.x > Date("2021-09-08") AND $row.x <= Date("2021-09-09")) ?? FALSE), AsTuple(AsAtom("x")));
-- datetimes
SELECT
    YQL::RangeComputeFor(Struct<x: Datetime?>, ($row) -> (($row.x > Datetime("2021-09-09T12:00:00Z") AND $row.x <= Datetime("2021-09-09T12:00:01Z")) ?? FALSE), AsTuple(AsAtom("x")));
-- timestamps
SELECT
    YQL::RangeComputeFor(Struct<x: Timestamp??>, ($row) -> (($row.x > Timestamp("2021-09-09T12:00:00.000000Z") AND $row.x <= Timestamp("2021-09-09T12:00:00.000001Z")) ?? FALSE), AsTuple(AsAtom("x")));
