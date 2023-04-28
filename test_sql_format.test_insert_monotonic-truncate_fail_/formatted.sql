USE plato;
INSERT INTO Output
    WITH (MONOTONIC_KEYS, TRUNCATE)
SELECT
    *
FROM Input
ORDER BY
    key,
    subkey;

