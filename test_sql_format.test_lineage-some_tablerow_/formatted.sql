INSERT INTO plato.Output
SELECT
    *
FROM (
    SELECT
        some(TableRow())
    FROM plato.Input
)
    FLATTEN COLUMNS;

