REPLACE INTO local.Output
SELECT STREAM
    *
FROM plato.Input;

