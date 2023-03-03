PRAGMA UseBlocks;
PRAGMA EmitAggApply;
USE plato;
SELECT
    min(value),
    max(value),
FROM Input;

