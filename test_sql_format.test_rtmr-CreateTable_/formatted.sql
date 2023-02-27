/* syntax version 1 */
USE plato;
CREATE TABLE Output (
    a Int32,
    b String,
    c Json,
    d List<Uint64>,
    e Double NOT NULL,
    f Float,
    g String,
    PARTITION BY (a, b),
    ORDER BY (e, f ASC, g DESC)
);

