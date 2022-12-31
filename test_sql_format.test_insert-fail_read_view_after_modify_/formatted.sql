/* postgres can not *//* syntax version 1 */
INSERT INTO plato.Output
    WITH truncate
SELECT
    *
FROM plato.Input;
COMMIT;
SELECT
    *
FROM plato.Output
    VIEW raw;
