PRAGMA UseBlocks;
PRAGMA EmitAggApply;
USE plato;
SELECT
    key + 1u,
    (3, 4.0),
    value
FROM Input;

