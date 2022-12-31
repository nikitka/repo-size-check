/* postgres can not */
USE plato;
INSERT INTO @a
SELECT
    *
FROM Input;
SELECT
    *
FROM @a;
