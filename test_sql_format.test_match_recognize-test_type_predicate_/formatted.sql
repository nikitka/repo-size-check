PRAGMA FeatureR010 = "prototype";
USE plato;
$data = [<||>];
$A = ($_, $_, $_) -> (123);
-- must fail, Bool expected
$BadPredicate =
    SELECT
        TableRow()
    FROM (
        SELECT
            *
        FROM AS_TABLE($data) MATCH_RECOGNIZE (ONE ROW PER MATCH AFTER MATCH SKIP TO NEXT ROW PATTERN (A) DEFINE A AS $A)
    );

SELECT
    FormatType(TypeOf($BadPredicate));

