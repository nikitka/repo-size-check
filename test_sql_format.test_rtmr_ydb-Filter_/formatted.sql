UPSERT INTO local.Output
SELECT STREAM
    key,
    "" AS subkey,
    "value:" || value AS value
FROM plato.Input
WHERE key < "100";

