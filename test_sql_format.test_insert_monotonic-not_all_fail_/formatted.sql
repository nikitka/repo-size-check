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
FROM Input2
ORDER BY
    key,
    subkey;

