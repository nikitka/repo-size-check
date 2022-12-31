USE plato;
INSERT INTO Output
SELECT STREAM
    *
FROM Input;
