USE plato;
INSERT INTO Output
SELECT STREAM
    *
    WITHOUT
        subkey
FROM Input;
