USE plato;
$f1 = ($r) -> {
    RETURN AsStruct($r AS key, $r AS subkey, $r AS value);
};
$x1 = (
    PROCESS STREAM Input
    USING $f1(value)
    WHERE CAST(subkey AS int) > 3
);

INSERT INTO Output
SELECT STREAM
    *
FROM $x1;

