PRAGMA FeatureR010 = "prototype";
USE plato;
$data = [<|dt: 4, host: "fqdn1", key: 14|>];
$StringMeasure = ($_, $_) -> ("SomeString");
$IntMeasure = ($_, $_) -> (345);
$A = ($_, $_, $_) -> (TRUE);
$NoPartitionNoMeasure =
    SELECT
        TableRow()
    FROM (
        SELECT
            *
        FROM AS_TABLE($data) MATCH_RECOGNIZE (ONE ROW PER MATCH AFTER MATCH SKIP TO NEXT ROW PATTERN (A) DEFINE A AS $A)
    );

$NoPartitionStringMeasure =
    SELECT
        TableRow()
    FROM (
        SELECT
            *
        FROM AS_TABLE($data) MATCH_RECOGNIZE (MEASURES $StringMeasure AS Measure1 ONE ROW PER MATCH AFTER MATCH SKIP TO NEXT ROW PATTERN (A) DEFINE A AS $A)
    );

$IntPartitionColNoMeasure =
    SELECT
        TableRow()
    FROM (
        SELECT
            *
        FROM AS_TABLE($data) MATCH_RECOGNIZE (PARTITION BY
            dt ONE ROW PER MATCH AFTER MATCH SKIP TO NEXT ROW PATTERN (A) DEFINE A AS $A)
    );

$StrinPartitionColStringMeasure =
    SELECT
        TableRow()
    FROM (
        SELECT
            *
        FROM AS_TABLE($data) MATCH_RECOGNIZE (PARTITION BY
            host MEASURES $StringMeasure AS Measure1 ONE ROW PER MATCH AFTER MATCH SKIP TO NEXT ROW PATTERN (A) DEFINE A AS $A)
    );

$TwoPartitionColsTwoMeasures =
    SELECT
        TableRow()
    FROM (
        SELECT
            *
        FROM AS_TABLE($data) MATCH_RECOGNIZE (PARTITION BY
            host,
            dt MEASURES $StringMeasure AS S, $IntMeasure AS I ONE ROW PER MATCH AFTER MATCH SKIP TO NEXT ROW PATTERN (A) DEFINE A AS $A)
    );

SELECT
    FormatType(TypeOf($NoPartitionNoMeasure));

SELECT
    FormatType(TypeOf($NoPartitionStringMeasure));

SELECT
    FormatType(TypeOf($IntPartitionColNoMeasure));

SELECT
    FormatType(TypeOf($StrinPartitionColStringMeasure));

SELECT
    FormatType(TypeOf($TwoPartitionColsTwoMeasures));

