USE plato;
INSERT INTO Output
    WITH MONOTONIC_KEYS
SELECT
    *
FROM EmptyInput
ORDER BY
    key,
    subkey;

