USE plato;
SELECT
    a.*,
    row_number() OVER (
        PARTITION BY
            key,
            subkey
    ) AS rn,
    TableName() AS tn
FROM Input
    AS a
    SAMPLE 0.1;

