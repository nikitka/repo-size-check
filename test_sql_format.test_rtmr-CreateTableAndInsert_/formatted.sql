USE plato;
CREATE TABLE Output (
    key String,
    value String,
    PRIMARY KEY (key)
);
INSERT INTO Output
SELECT STREAM
    key,
    value
FROM Input;
