USE plato;
INSERT INTO Output
SELECT STREAM
    key,
    "" AS subkey,
    subkey || value AS value
FROM Input
WHERE key IN ("150", "200");

