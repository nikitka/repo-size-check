USE plato;
INSERT INTO Output
    WITH (MONOTONIC_KEYS, KEEP_META, TRUNCATE)
SELECT
    *
FROM Input1
ORDER BY
    key,
    subkey;

