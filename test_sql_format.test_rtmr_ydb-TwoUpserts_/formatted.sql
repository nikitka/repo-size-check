$m =
    SELECT STREAM
        key,
        "" AS subkey,
        "value:" || value AS value
    FROM plato.Input;
UPSERT INTO local.Output
SELECT STREAM
    *
FROM $m
WHERE key < "100";
UPSERT INTO local.Output
SELECT STREAM
    *
FROM $m
WHERE key > "100";
