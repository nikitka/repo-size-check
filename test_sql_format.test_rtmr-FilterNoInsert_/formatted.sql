USE plato;
SELECT STREAM
    key,
    "" AS subkey,
    "value:" || value AS value
FROM Input
WHERE key < "100";

