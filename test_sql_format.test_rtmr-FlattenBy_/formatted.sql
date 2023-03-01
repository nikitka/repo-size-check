USE plato;
INSERT INTO Output
SELECT STREAM
    key,
    'zz' || CAST(a AS String) AS subkey,
    value
FROM (
        SELECT STREAM
            key,
            ListFromRange(2, 5) AS a,
            value
        FROM Input
)
    FLATTEN BY
        a;

