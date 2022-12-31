/* syntax version 1 */
USE plato;
$f1 = ($r) -> {
    RETURN AsStruct($r.key || "_1" AS key, $r.subkey || "_2" AS subkey, $r.value || "_3" AS value);
};
$x1 = (
    PROCESS STREAM Input
    USING $f1(TableRow())
);
SELECT STREAM
    *
FROM $x1;
