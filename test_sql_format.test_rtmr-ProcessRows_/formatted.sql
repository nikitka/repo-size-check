/* syntax version 1 */
USE plato;
$f1 = ($x) -> {
    RETURN YQL::Iterator(AsList($x, $x));
};
$f2 = ($x) -> {
    RETURN YQL::FlatMap($x, $f1);
};
$x1 = (
    PROCESS STREAM Input
    USING $f2(TableRows())
);
SELECT STREAM
    *
FROM $x1;
