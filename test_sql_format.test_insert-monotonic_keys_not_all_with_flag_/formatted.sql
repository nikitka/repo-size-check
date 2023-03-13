USE plato;
INSERT INTO Output
    WITH MONOTONIC_KEYS
SELECT
    *
FROM Input1
ORDER BY
    key,
    subkey;

INSERT INTO Output
SELECT
    *
FROM Empty
ORDER BY
    key,
    subkey;

